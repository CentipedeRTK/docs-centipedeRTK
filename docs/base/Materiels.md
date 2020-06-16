---
layout: default
title: Materiel et Assemblage
parent: Fabriquer une base RTK
nav_order: 1
---

## Materiel

Cette étape doit vous permettre de bien anticiper quel matériel acheter en fonction de la zone d'installation de l'antenne RTK et de vos possibilités de raccordement à un réseau Internet pour diffuser les corrections produites.

### Choix de la zone d'implantation

 * La zone d'implantation de l'antenne de réception ne nécessite pas une position dominante, mais doit proposer une visibilité maximum du ciel ; il est indispensable de ne pas avoir d'obstacles (bâtiments, arbres, murs ...) au-dessus des 10 premiers degrés par rapport à la base de l'antenne.
 * Elle doit également être très stable au niveau de sa position, il est donc préférable de la fixer sur un plot en béton ou sur le pignon d'un bâtiment (Attention à la dilatation des bâtiments en acier).
 * Il peut y avoir une certaine distance entre l'antenne et le reste du matériel ; il est important d'anticiper cette distance (au maximum 3 mètres pour éviter une dégradation du signal) et de commander un câble d'antenne à la bonne longueur.
 * La base RTK doit absolument avoir accès à Internet via **un câble ethernet (RJ45) de préférence** afin de partager ses corrections sur le réseau Centipede ou en TCP, il est donc nécessaire d'avoir un point accès à Internet non loin de la zone d'implantation et d'adapter la longueur du câble en fonction des besoins. Si vous ne disposez pas d'une connexion à proximité, vous pouvez opter pour [2 boitiers CPL](https://www.boitiercpl.fr/) en ethernet.

![lienss](https://jancelin.github.io/docs-centipedeRTK/assets/images/mat/base_lienss.jpg)

### Liste

Voici la liste des éléments nécessaires à la mise en place d'une base RTK L1-L2:

|Matériel|Prix HT|
|--------|----|
|[F9P](https://store.drotek.com/rtk-zed-f9p-gnss) ou [f9p](https://www.ardusimple.com/product/simplertk2b/)|200€|
|[D910 antenna](https://store.drotek.com/da-910-multiband-gnss-antenna)|100€|
|[Raspberry Pi 3/4](https://www.kubii.fr/les-cartes-raspberry-pi/2119-raspberry-pi-3-modele-b-1-gb-kubii-713179640259.html)|44€|
|[Micro SD 16Go](https://www.kubii.fr/carte-sd-et-stockage/2359-carte-microsd-16go-classe-10-u1-sandisk-kubii-619659161347.html)|11€|
|[Alimentation](https://www.kubii.fr/les-officiels-raspberry-pi-kubii/2593-alimentation-officielle-raspberry-pi-3-eu-micro-usb-51v-25a-kubii-3272496297586.html?search_query=SC0136&results=51)|10€| 
|[dissipateur de chaleur](https://www.kubii.fr/composants-raspberry-pi/1676-heat-sink-aluminium-pour-raspberry-pi-3-kubii-3272496005099.html)|1€|
|[Cordon USB vers micro USB ](https://www.mhzshop.com/shop/Cables-et-cordons/Cordons-USB/Cordon-USB-vers-micro-USB.html)|2.5€|
|[câble antenne sma mâle tnc mâle 3m (longueur à adapter)](https://www.mhzshop.com/shop/Cables-et-cordons/Sur-mesure/50-ohms-WiFi-4G/Cordon-sur-mesure-en-coax-faible-perte-WLL-240-2-4-5-GHz-6-1mm.html)|19€|
|[câble ethernet RJ45 (longueur à adapter)](https://www.mhzshop.com/shop/Cables-et-cordons/Cordons-reseau/)|6€|
|[boite étanche je-200](https://www.mhzshop.com/shop/Accessoires-MHz/Boites-etanches/Boite-etanche-avec-fixation-mat-203x203x65mm-GentleBOX-JE-200.html)|16€|
|TOTAL|410€|

Dans le cas ou vous souhaitez fabriquer une base RTK seulement en WIFI, il est possible de remplacer le Raspberry Pi 3/4 par un [Raspberry Pi Zero W](https://www.kubii.fr/les-cartes-raspberry-pi/1851-raspberry-pi-zero-w-kubii-3272496006997.html) à 11€ + un [Câble USB vers Micro USB](https://www.kubii.fr/cables-cordons-raspberry-pi/2275-cable-usb-vers-micro-usb-kubii-3272496011878.html?search_query=otg&results=5) à 3€

### Assemblage

![composant](https://jancelin.github.io/docs-centipedeRTK/assets/images/mat/composant.jpg)


Dans un premier temps faites un premier montage sans la boite:
   * Assembler l'antenne [D910](https://store.drotek.com/da-910-multiband-gnss-antenna) sur son support
   * Connecter le câble d'antenne au récepteur [F9P](https://store.drotek.com/rtk-zed-f9p-gnss)
   * Connecter le cordon USB entre le [F9P](https://store.drotek.com/rtk-zed-f9p-gnss) et le [Raspberry Pi 3/4](https://www.kubii.fr/les-cartes-raspberry-pi/2119-raspberry-pi-3-modele-b-1-gb-kubii-713179640259.html)
   * Connecter le [câble ethernet RJ45](https://www.mhzshop.com/shop/Cables-et-cordons/Cordons-reseau/) à votre réseau (BOX internet, CPL, prise réseau Rj45) et au [Raspberry Pi 3/4](https://www.kubii.fr/les-cartes-raspberry-pi/2119-raspberry-pi-3-modele-b-1-gb-kubii-713179640259.html)
   * Préparer l'[alimentation](https://www.kubii.fr/les-officiels-raspberry-pi-kubii/2593-alimentation-officielle-raspberry-pi-3-eu-micro-usb-51v-25a-kubii-3272496297586.html?search_query=SC0136&results=51) mais ne pas mettre encore sous tension.

### Montage

![composant](https://jancelin.github.io/docs-centipedeRTK/assets/images/mat/boite1.jpg)
![composant](https://jancelin.github.io/docs-centipedeRTK/assets/images/mat/boite2.jpg)
![composant](https://jancelin.github.io/docs-centipedeRTK/assets/images/mat/boite3.jpg)
![composant](https://jancelin.github.io/docs-centipedeRTK/assets/images/mat/boite4.jpg)


### Next step
   * Prendre la [Micro SD 16Go](https://www.kubii.fr/carte-sd-et-stockage/2359-carte-microsd-16go-classe-10-u1-sandisk-kubii-619659161347.html) et passons maintenant à l'étape suivante, l'installation logicielle.
