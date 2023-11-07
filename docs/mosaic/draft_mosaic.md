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

Paramétrer le flux Ntrip :

* Corrections->corrections Output->New RTCMv3 Output->Ntrip server->New Ntrip server :
    *Caster : 192.168.3.1
*  Port : 2101 
* Password : centipede
* Mount point : choisir dans la liste le nom de la station définit précédemment
* Ntrip V1

> Cliquer sur next

* Décocher MSM4
* Cocher MSM7,1006,1008,1019,1020,1033,1042,1046,1230

#### Paramétrer le flux de données brutes 30s pour post traitement:

* NMEA/SBF->New SBF stream->USB port->USB1 :
* Interval : 30sec
 > Detailled section->measurement :
* Cocher MeasEpoch uniquement

#### Sauvegarder la config 

* Cliquer sur « save » dans la fenêtre tout en bas à droite.

## stream RTCM3 avec rtkbase

* démarrer le service (à adapter)
```
str2str -in tcpcli://192.168.3.1:5026#rtcm3 -out ntrips://:centipede@147.100.179.214:2101/YOURMP#rtcm3 -msg 1004,1005,1006,1008,1012,1019,1020,1033,1042,1045,1046,1077,1087,1097,1107,1127,1230 -p 46.164827870 -0.948539646 65.2667 -opt -TADJ=1 -i RTKBase mosaicX5,2.4.1 1.32 -a ADVNULLANTENNA
```


