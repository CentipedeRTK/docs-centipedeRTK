---
layout: default
title: Rover RTKLIB avec Interface
parent: Rover sur PC windows ou Linux
nav_order: 1
---

## Prérequis

### Matériels

* Une tablette ou un PC sous windows 10 ou Linux
* Une antenne GNSS bi-fréquence
* Un récepteur F9P

### Logiciels

* La dernière version du logiciel [RTKlib version Rtkexplorer demo5](http://rtkexplorer.com/downloads/rtklib-code/) > Calcul du positionnement en [RTK](https://fr.wikipedia.org/wiki/Cin%C3%A9matique_temps_r%C3%A9el) par [RTKlib](http://www.rtklib.com/) pour une géolocalisation centimétrique.

## Connexion et paramétrage

### Branchement de l'antenne GNSS

* Brancher l'antenne + récepteur F9P en USB

* Ouvrir ensuite le [gestionnaire de périphériques](https://support.microsoft.com/fr-fr/help/4026149/windows-open-device-manager) et vérifier le port COM créé sous Windows ou le point de montage /dev/ttyXXX pour Linux


### RTKLIB

> RTKLIB permet de convertir le Signal de positionnement de l'antenne GNSS grâce à une correction RTCM3 (Réseau Centipede par exemple) en un signal de géolocalisation précise au centimètre si les conditions le permettent.

* Télécharger la dernière version de [RTKlib version Rtkexplorer demo5](http://rtkexplorer.com/downloads/rtklib-code/)
* le décompresser dans le dossier de son choix.
* Ouvrir RTKNavi 

![RTKnavi](https://jancelin.github.io/docs-centipedeRTK/assets/images/rover_w/3.PNG)

* Télécharger ce [fichier de paramétrage](https://raw.githubusercontent.com/jancelin/docs-centipedeRTK/master/assets/param_rtklib/RTKlib_windows.conf)
* cliquer sur **option ...**
* Cick sur **LOAD** et choisir le dernier [fichier téléchargé](https://raw.githubusercontent.com/jancelin/docs-centipedeRTK/master/assets/param_rtklib/RTKlib_windows.conf) et **OK**

> Permet de paramétrer automatiquement certains paramètres de RTkLIb

![RTKnavi](https://jancelin.github.io/docs-centipedeRTK/assets/images/rover_w/a2.PNG)

* Cliquer sur le **I** en haut à droite
* cliquer sur **ROVER** > **Opt**

![RTKnavi](https://jancelin.github.io/docs-centipedeRTK/assets/images/rover_w/4.PNG)

* Modifier si besoin le Port **COM7** (Entrée USB de l'antenne GNSS) en fonction de votre paramétrage.
* Télécharger ce [fichier de paramétrage](https://raw.githubusercontent.com/jancelin/docs-centipedeRTK/master/assets/param_rtklib/ZED-F9P.cmd)
* cliquer sur **ROVER** > **Cmd**

![RTKnavi](https://jancelin.github.io/docs-centipedeRTK/assets/images/rover_w/a1.PNG)

* Cliquer sur **LOAD** et choisir le dernier [fichier téléchargé](https://raw.githubusercontent.com/jancelin/docs-centipedeRTK/master/assets/param_rtklib/ZED-F9P.cmd)
* Cocher **Commands at startup**

> Permet de charger des paramètres  injectés au module F9P à chaque démarrage

* Cliquer sur **Base Staion** > **Opt**
* Modifier le Mountpoint sur la base [Centipede](https://centipede.fr) la plus proche de vous. 

> Si vous n'êtes pas couverts par une Base CentipedeRTK vous pouvez en fabriquer une [ici](https://jancelin.github.io/docs-centipedeRTK/3_Materiels.html).

![RTKnavi](https://jancelin.github.io/docs-centipedeRTK/assets/images/rover_w/5.PNG)

* Cliquer sur le **O** en haut à droite
* cliquer sur **Solution** > **Option**
* Modifier si besoin le Port **COM9** (Sortie NMEA de RTKlib) en fonction de votre paramétrage.

![RTKnavi](https://jancelin.github.io/docs-centipedeRTK/assets/images/rover_w/6.PNG)

* Faire **EXIT** et ré-ouvrir RTKNavi pour l'enregistrement des paramètres.


### Premier démarrage

* Cliquer sur Start et attendre (de 30s à plusieurs minutes) une position **FIX RTK**

> L'antenne de réception doit bien sûr être en extérieur dans un milieu dégagé

![RTKnavi](https://jancelin.github.io/docs-centipedeRTK/assets/images/rover_w/9.PNG)



