## Configuration du Récepteur

### Accès à la page web du récepteur :

Le port USB du Septentrio Mosaic X5 fait transiter 2 port Séries et un port Ethernet.
L’installation des drivers sur Windows, Linux et Mac est normalement native.
Une fois le port Ethernet virtuel installé (interface usb0 sur Linux), la page web du récepteur est accessible à cette adresse :
http://192.168.3.1

### Redirection de port:

* Redirection du port 80 du mosaic vers basegnss.local:81
* Redirection du flux sbf sur le port 5025 
* Redirection du flux RTCM3 sur le port 5026
* (Redirect 2101 to caster 2101)
* gestion des logs sbf

```
  GNU nano 5.4                                                            /etc/rc.local                                                                     
#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.

# Print the IP address
_IP=$(hostname -I) || true
if [ "$_IP" ]; then
  printf "My IP address is %s\n" "$_IP"
fi

#Septentrio Mosaic config
sysctl -w net.ipv4.ip_forward=1
iptables -t nat -A POSTROUTING -j MASQUERADE
iptables -t nat -A PREROUTING -p tcp --dport 81 -j DNAT --to-destination 192.168.3.1:80
iptables -t nat -A PREROUTING -p tcp --dport 5025 -j DNAT --to-destination 192.168.3.1:5025
iptables -t nat -A PREROUTING -p tcp --dport 5026 -j DNAT --to-destination 192.168.3.1:5026
#iptables -t nat -A PREROUTING -i usb0 -p tcp --dport 2101 -j DNAT --to-destination 147.100.179.214:2101
stty -F /dev/ttyACM0 raw > /dev/null
cat >> /var/log/GNSS.sbf < /dev/ttyACM0 &

exit 0

```

### Paramétrage mosaic:

#### Paramétrer le site

* GNSS->positon->Mode : Static
* GNSS->position->Antenna Type : Choisir l’antenne calibrée dans la liste Ou sélectionner « Other… » et entrer ADVNULLANTENNA
* GNSS->Marker and name->Marker Name : nom du site sur 4 caractères en majuscule
* GNSS->Marker and name->Country Code : FRA

#### Paramétrer le flux Ntrip :

* Corrections -> Corrections Output -> New RTCM3 output -> IP server (Next) -> New IP server connection (Next) -> Port ```5026```, ```Mode TCP (send only)``` (next) -> param RTCM3 Output:
	* Décocher MSM4
	* Cocher MSM7,1006,1008,1019,1020,1033,1042,1046,1230
* Finish

### stream RTCM3 mosaic avec rtkbase sur le NTRIP B

* Edit ```nano /home/basegnss/rtkbase/run_cast.sh``` à la ligne 15 rajouter

```in_tcpx5="tcpcli://192.168.3.1:5026#rtcm3"```

* Edit  ```sudo nano /etc/systemd/system/str2str_ntrip_B.service```

```ExecStart=/home/basegnss/rtkbase/run_cast.sh in_tcpx5 out_caster_B```
* RUN
```
systemctl daemon-reload
systemctl restart str2str_ntrip_B
```
------------------------------------------------------

#### Paramétrer le flux de données brutes 30s pour post traitement:

* NMEA/SBF->New SBF stream->USB port->USB1 :
* Interval : 30sec
 > Detailled section->measurement :
* Cocher MeasEpoch uniquement

* sur la base gnss:

Rotation, compression et suppression des données brutes :

Créer le fichier /etc/logrotate.d/GNSS :
```
/var/log/GNSS.sbf
{
	daily
	copytruncate
	rotate 30
	dateext
	dateformat _%Y%m%d
	dateyesterday
	extension .sbf
	compress
	postrotate
		kill $(pgrep ^cat) > /dev/null
		stty -F /dev/ttyACM0 raw > /dev/null
		cat >> /var/log/GNSS.sbf < /dev/ttyACM0 &
	endscript
}
```

#### Sauvegarder la config 

* Cliquer sur « save » dans la fenêtre tout en bas à droite.

#### connect to pi zero

https://gnss1.tudelft.nl/pub/varia/Septentrio_mosaic-go_raspberry_pi_zero_w.pdf
