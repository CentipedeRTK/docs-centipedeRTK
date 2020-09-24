---
layout: default
title: Rover RTKLIB avec Interface
parent: Rover sur PC windows ou Linux
nav_order: 1
---

## Prérequis

### Matériels

* Une tablette ou un PC sous windows 10

* Une [antenne GNSS bi-fréquence](https://store.drotek.com/da-910-multiband-gnss-antenna) ou bien la même chose chez un autre fournisseur [antenne GNSS bi-fréquence](https://www.ardusimple.com/product/simplertk2b/), d'autres modèles existent....

* Un [recepteur F9P](https://store.drotek.com/rtk-zed-f9p-gnss) ou bien la même chose chez un autre fournisseur [recepteur F9P](https://www.ardusimple.com/product/survey-gnss-multiband-antenna/), d'autres modèles existent....

* Un [câble antenne sma mâle tnc mâle 3m (longueur à adapter en fonction de votre projet)](https://www.mhzshop.com/shop/Cables-et-cordons/Sur-mesure/50-ohms-WiFi-4G/Cordon-sur-mesure-en-coax-faible-perte-WLL-240-2-4-5-GHz-6-1mm.html) dans le cas où celui fourni avec l'antenne ne correspond pas à votre besoin.

### Logiciels

* La dernière version du logiciel [RTKlib version Rtkexplorer demo5](http://rtkexplorer.com/downloads/rtklib-code/) > Calcul du positionnement en [RTK](https://fr.wikipedia.org/wiki/Cin%C3%A9matique_temps_r%C3%A9el) par [RTKlib](http://www.rtklib.com/) pour une géolocalisation centimétrique.

## Update du récepteur F9P

Le récepteur F9P n'a pas toujours son [firmware](https://fr.wikipedia.org/wiki/Firmware) à jour quand on le reçois, il est important de suivre cette procédure pour la suite:

* [Install U-center](https://www.u-blox.com/en/product/u-center) (Windows seulement)

* [Update F9P firmware](https://drotek.gitbook.io/rtk-f9p-positioning-solutions/tutorials/updating-zed-f9p-firmware)

## Connexion et paramétrage

### Branchement de l'antenne GNSS

* Brancher l'antenne + récepteur F9P en USB

* Ouvrir ensuite le [gestionnaire de périphériques](https://support.microsoft.com/fr-fr/help/4026149/windows-open-device-manager) et vérifier les ports COM, dans l'exemple **COM7** est le récepteur F9P en USB.

![com](https://jancelin.github.io/docs-centipedeRTK/assets/images/rover_w/2.PNG)

### RTKLIB

> RTKLIB permet de convertir le Signal de postionnement de l'antenne GNSS grâce à une correction RTCM3 (Réseau Centipede par exemple) en un signal de géolocalisation précise au centimètre si les conditions le permettent.

* Télécharger la dernière version de [RTKlib version Rtkexplorer demo5](http://rtkexplorer.com/downloads/rtklib-code/)
* le décompresser dans le dossier de son choix.
* Ouvrir RTKNavi 

![RTKnavi](https://jancelin.github.io/docs-centipedeRTK/assets/images/rover_w/3.PNG)

* Télécharger ce [fichier de paramétrage](https://raw.githubusercontent.com/jancelin/docs-centipedeRTK/master/assets/param_rtklib/RTKlib_windows.conf)
* cliquer sur **option ...**
* Cick sur **LOAD** et choisir le dernier [fichier téléchargé](https://raw.githubusercontent.com/jancelin/docs-centipedeRTK/master/assets/param_rtklib/RTKlib_windows.conf) et **OK**

> Permet de paramétrer automatiquement certains paramètres de RTkLIb

![RTKnavi](https://jancelin.github.io/docs-centipedeRTK/assets/images/rover_w/a1.PNG)

* Cliquer sur le **I** en haut à droite
* cliquer sur **ROVER** > **Opt**

![RTKnavi](https://jancelin.github.io/docs-centipedeRTK/assets/images/rover_w/4.PNG)

* Modifier si besoin le Port **COM7** (Entrée USB de l'antenne GNSS) en fonction de votre paramétrage.
* Télécharger ce [fichier de paramétrage](https://raw.githubusercontent.com/jancelin/docs-centipedeRTK/master/assets/param_rtklib/ZED-F9P.cmd)
* cliquer sur **ROVER** > **Cmd**

![RTKnavi](https://jancelin.github.io/docs-centipedeRTK/assets/images/rover_w/a1.PNG)

* Cick sur **LOAD** et choisir le dernier [fichier téléchargé](https://raw.githubusercontent.com/jancelin/docs-centipedeRTK/master/assets/param_rtklib/ZED-F9P.cmd)
* Cocher **Commands at startup**

> Permet de charger des paramètres  injectés au module F9P à chaque démarrage

* Ciquer sur **Base Staion** > **Opt**
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

> L'antenne de réception doit bien-sûr être en extérieur dans un milieu dégagé

![RTKnavi](https://jancelin.github.io/docs-centipedeRTK/assets/images/rover_w/9.PNG)



