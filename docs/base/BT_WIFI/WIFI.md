---
layout: default
title: WIFI 
parent: Bluetooth et Wifi
grand_parent: Fabriquer une base RTK
nav_order: 1
---

## WIFI

La Base RTK dispose d'une option de connexion WIFI avec les Rasperry Pi Raspberry Pi [3](https://www.kubii.fr/les-cartes-raspberry-pi/2119-raspberry-pi-3-modele-b-1-gb-kubii-713179640259.html), [4](https://www.kubii.fr/les-cartes-raspberry-pi/2770-nouveau-raspberry-pi-4-modele-b-1gb-kubii-0765756931168.html) ou [Zero W](https://www.kubii.fr/les-cartes-raspberry-pi/1851-raspberry-pi-zero-w-kubii-3272496006997.html). Elle peut se connecter à tout type de hotspot WIFI dosmetique, entreprise ou smartphone (partage de connexion 3-4-5G ) pour la mobilité.

### Installation

Par défaut la Base RTK utilise seulement la connexion filaire ethernet.

**Le WIFI doit être activé sur la carte SD avant le premier démarrage, [la procédure est ici](https://github.com/jancelin/rtkbase/wiki/2.-Installation#personaliser-son-installation-et-activation-du-wifi).**


### Modification de la connexion WIFI

* Editer le fichier **```/etc/wpa_supplicant/wpa_supplicant.conf```**

> Si vous ne voyez pas de fichier **```wpa_supplicant.conf```** c'est que le wifi n'a pas été activé à l'installation, vous devez retirer [re-flasher votre carte SD](https://github.com/jancelin/rtkbase/wiki/2.-Installation#t%C3%A9l%C3%A9chargement-et-flashage-de-limage-basertk) 

http://centipede.local:8000/fs/etc/wpa_supplicant/

![wifi](/assets/images/wifi/wifi_1.png)

* Modifier le nom du point de connexion wifi et le mot de passe

> Attention, en cas d'erreur sur les identifiants la Base risque de ne plus être accessible en WIFI, vous devez retirer la carte SD et modifier le fichier sur un PC ou [brancher un câble ethernet (RJ45) au Raspberry Pi](https://github.com/jancelin/rtkbase/wiki/1.-Materiels#assemblage) pour établir de nouveau une connexion.

* Enregistrer

![wifi](/assets/images/wifi/wifi_2.png)

* Redémarrer et attendre environ 1 min

![wifi](/assets/images/wifi/wifi_3.png)

* Connecter vous au nouveau WIFI et connecter vous à votre base RTK 

http://centipede.local:8000

![cmd_racine](/assets/images/param/cmd_racine.png)
