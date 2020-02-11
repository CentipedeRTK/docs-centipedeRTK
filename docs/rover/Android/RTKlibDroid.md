---
layout: default
title: RTKlibDroid
parent: Rover avec Android
grand_parent: Utiliser un Rover RTK
nav_order: 1
---

## [RTKDroid](https://github.com/jancelin/RTKlibDroid)

**Une solution pour transformer votre smartphone Android en un récepteur GNSS RTK avec une distribution Linux et [RTKlib](http://www.rtklib.com/)**

* Tracer les journaux de bord llh
* Positionnement centimétrique sur toutes vos applications avec géolocalisation
* Tout ce qui peut faire RTKlib...

> Attention, il est nécessaire d'avoir une base RTK à proximité de la zone d'acquisition. https://centipede.fr

## Matériel

**Smartphone**

* un smartphone / tablette 64 bits.
* Pas besoin de root sur votre appareil.
* USB OTG

**Antenne GNSS pour la réception bifréquence**

[Ublox F9P](https://store.drotek.com/sirius-rtk-gnss-rover-f9p)

## Android APK

**Applications Android requises**

[Userland](https://play.google.com/store/apps/details?id=tech.ula&gl=FR) > UserLAnd est une application open-source qui vous permet d'exécuter plusieurs distributions Linux comme Ubuntu,
Debian, et Kali.

[ConnectBot](https://play.google.com/store/apps/details?id=org.connectbot&hl=fr) > ConnectBot est un puissant client SSH (Secure Shell) à code source ouvert. Il permet de multiples sessions SSH simultanées, de créer des tunnels et de faire des copier/coller avec d'autres applications.

TCPUART](https://play.google.com/store/apps/details?id=com.hardcodedjoy.tcpuart&gl=FR) > Cette application permet de connecter un adaptateur USB UART (Serial) à un socket TCP, pour envoyer et recevoir des données. Cette application est nécessaire car le Userland n'a pas encore accès au point de montage USB Android.

**Applications Android en option**

[droidinfo](https://play.google.com/store/apps/details?id=com.inkwired.droidinfo&hl=fr) > vérifier que son smartphone est bien en 64 bits

[Lefebure](https://play.google.com/store/apps/details?id=com.lefebure.ntripclient&gl=FR) > prendre les données de position NMEA de la solution d'affichage RTKlib et activer la simulation de localisation d'un androïde.

## Configurer l'antenne

### mettre à jour le microprogramme

Tout d'abord, il est nécessaire de mettre à jour le [firmware] (https://fr.wikipedia.org/wiki/Firmware) de votre module F9P.

* [Installer U-center](https://www.u-blox.com/en/product/u-center) (Windows ou Linux Wine)

* [Mise à jour du micrologiciel F9P] (https://drotek.gitbook.io/rtk-f9p-positioning-solutions/tutorials/updating-zed-f9p-firmware)

## Installation sur smartphone android

* installer Userland, ConnectBot et TCPUART à partir de PlayStore

### Userland

#### Configurer

* Télécharger [RTKlib-debian-rootfs_X_X.tar.gz](https://github.com/jancelin/RTKlibDroid/releases/download/RTKlibDroid_0.3/RTKlib-debian-rootfs_0_3.tar.gz) sur le stockage interne d'Android.
* Démarrer le Userland
* Aller sur **"files system "** et cliquer sur **+**
* combler les lacunes :
  * système de fichiers de noms : RTKlib
  * utilisateur nme : rover
  * mot de passe : 123456
  * mot de passe vnc : 123456
  * système de fichiers : Debian
* Cliquez sur **Afficher les options avancées** et sélectionnez l'image que vous avez téléchargée précédemment.
* Enregistrer (en haut à droite)
* Allez à **"Sessions "** et cliquez sur **+**
* combler les lacunes :
  * nom de la session : rover
  * système de fichiers : RTKlib:Debian
  * type de service : ssh
* Sauvegarder (en haut à droite)

![Userland](https://github.com/jancelin/RTKlibDroid/blob/master/pictures/userland.png)

## Fonctionne avec l'antenne connectée

* Connecter via usb l'antenne au smartphone (adaptateur OTG)
* Démarrer l'application TCPUART :
  * cliquez sur **Connect**
  * modifier le port à 8080
  * cliquez sur **Démarrer**
  * **DON'T CLOSE TCPUART**, reviens sur android à la maison avec ton buton
* Démarrer l'espace utilisateur
  * Aller à **"Sessions "**
  * Un clic sur **rover --> RTKlib:Debian**
  * autoriser ConnectBot à se connecter
  * entrez le mot de passe **123456**
* Affichage RTKlibDroid


```
Paramétres actuels
------------------
Positionnement: kinematic
Mount Point: LIENSS
Rate: 1000 ms
Model: Pedestrian
Elevation: 10°
Input: tcpcli :@localhost:8080:
caster: caster.centipede.fr:2101 rtcm3
GPS : Oui
GAL : Oui
BDS : Oui
QZSS: Oui
GLO : Oui
------------------
1) Start Rover
2) Display Param
3) Modification
4) Quit
Choisir une action:
```

* si les paramètres sont corrects, démarrer Rover RTKLIB : écrire **1** + entrer

```
Choisir une action: 1

** rtkrcv ver.demo5 b33b2 console (h:help) **
rtk server start
rtkrcv> 
```

* Vous pouvez écrire "status 1" + "entrer"

```
rtkrcv> statut 1
```

ex:

```
Parameter                   : Value
rtklib version              : demo5 b33b2
rtk server thread           : 335542016
rtk server state            : run
processing cycle (ms)       : 10
positioning mode            : kinematic
frequencies                 : L1+L2
accumulated time to run     : 00:06:25.7
cpu time for a cycle (ms)   : 25
missing obs data count      : 0
bytes in input buffer       : 0,0
# of input data rover       : obs(1929),nav(30),gnav(7),ion(174),sbs(0),pos(0),dgps(0),ssr(0),err(0)
# of input data base        : obs(384),nav(34),gnav(9),ion(0),sbs(0),pos(26),dgps(0),ssr(0),err(0)
# of input data corr        : obs(0),nav(0),gnav(0),ion(0),sbs(0),pos(0),dgps(0),ssr(0),err(0)
# of rtcm messages rover    : 
# of rtcm messages base     : 1004(385),1005(13),1006(13),1012(385),1019(156),1020(221),1042(130),1045(646),1046(646),1077(385),1087(385),1097(385),1127(384)
# of rtcm messages corr     : 
solution status             : fix
time of receiver clock rover: 2020/02/03 14:56:19.199867116
time sys offset (ns)        : 49.277,-4.175,41.798,0.000
solution interval (s)       : 0.200
age of differential (s)     : 2.200
ratio for ar validation     : 3.113
# of satellites rover       : 36
# of satellites base        : 41
# of valid satellites       : 20
GDOP/PDOP/HDOP/VDOP         : 1.4,1.3,0.7,1.0
# of real estimated states  : 9
# of all estimated states   : 353
pos xyz single (m) rover    : 4438272.095,-79653.936,4564680.439
pos llh single (deg,m) rover: 45.99214112,-1.02818042,55.256
vel enu (m/s) rover         : -0.003,-0.005,0.003
pos xyz float (m) rover     : 4438271.878,-79653.347,4564680.174
pos xyz float std (m) rover : 0.014,0.018,0.009
pos xyz fixed (m) rover     : 4438272.095,-79653.936,4564680.439
pos xyz fixed std (m) rover : 0.007,0.004,0.005
pos xyz (m) base            : 4426044.934,-89425.964,4576296.255
pos llh (deg,m) base        : 46.14264305,-1.15747430,67.958
# of average single pos base: 0
ant type rover              : 
ant delta rover             : 0.000 0.000 0.000
ant type base               : 
ant delta base              : 0.000 0.000 0.000
vel enu (m/s) base          : 0.000,0.000,0.000
baseline length float (m)   : 19491.935
baseline length fixed (m)   : 19491.618
last time mark              : -
receiver time mark count    : 0
rtklib time mark count      : 0
```

## NMEA

Le NMEA est disponible sur http://localhost:9000

## Logs LLH

Lorsque les journaux de démarrage d'une session sont des écritures sur un répertoire de partage disponible sur android : "Storage/Android/data/tech.ula/files/storage/gnss/solution".


## Modifier les paramètres 

```
Choisir une action: 3
1) RTK setting	      3) Caster Connexion   5) Return
2) Antenna Connexion  4) Satellites
```
### 1) Réglage de la RTK

```
Modifier:1
1) Positionning Mode  3) Elevation	    5) Return
2) Model	      4) Rate
Modifier:1

Change 1: kinematic to:

3 : static
2 : single
1 : kinematic

Modifier:2

Change Model: 3 : Pedestrian to:

0 : Portable
2 : Stationary
3 : Pedestrian
4 : Automotive
5 : Sea
6 : Airborne <1g
7 : Airborne <2g
8 : Airborne <3g

Modifier:3

Change elevation mask: 10° to:

Modifier:4

change Rate: 200 ms to:

```
### 2) Connexion de l'antenne

```
Modifier:2
1) RCV connection
2) Return
Modifier:1

Change receiver connection: tcpcli to:
2 : serial
1 : tcpcli
```

* paramètres par défaut tcp : ```:@localhost:8080:``` + llh logs outpath ```/storage/internal/gnss/solutions/```
* Utilisez le port série si vous voulez exécuter RTKlibDroid sur un PC, les paramètres par défaut étant le port série : ``ttyACM0:115200:8:n:1:off`` + llh logs outpath ``./solution/```


### 3) Caster Connexion

```
Modifier:3
1) Caster Mount Point  3) Caster Port	      5) Caster Password
2) Caster Adresse      4) Caster Username     6) Return
Modifier:1

change Mount Point: LIENSS to:

Modifier:2

change caster adrss: caster.centipede.fr to:

Modifier:3

change caster port: 2101 to:

Modifier:4
!!!Paramètre non intégré!!!
change caster username: to:

Modifier:5
!!!Paramètre non intégré!!!
change caster password: to:

```

### 4) Les satellites

```
Modifier:4
1) GPS
2) GAL
3) GLO
4) BDS
5) QZSS
6) Return
Modifier:1

GPS activ: Oui to:
Non : 0
Oui : 1

Modifier:2

GALILEO activ: Oui to:
Non : 0
Oui : 1

Modifier:3

GLONASS activ: Oui to:
Non : 0
Oui : 1

Modifier:4

BEIDOU activ: Oui to:
Non : 0
Oui : 1

Modifier:5

QZSS activ: Oui to:
Non : 0
Oui : 1
```

### Autres paramètres

Vous pouvez éditer les fichiers de conf avec nano, ils sont ici :

./var/rtkrcv_var.txt

./var/F9P_var.cmd


## Lieu fictif

Vous pouvez utiliser l'apk de Lefebure pour voir le statut et utiliser la simulation de localisation d'un android


