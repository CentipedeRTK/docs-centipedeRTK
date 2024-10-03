---
layout: default
title: Materiel et Assemblage
parent: Fabriquer une base RTK
nav_order: 2
has_children: true
---

## Materiel

Nous utiliserons le logiciel Open Source [RTKBase](https://github.com/Stefal/rtkbase) pour fabriquer une base GNSS maison. Ces bases sont aussi disponibles en kit ou prémontées sur [rtkbase.eu](https://rtkbase.eu). Ce site est géré par le développeur de RTKBase.

Cette étape doit vous permettre de bien anticiper quel matériel acheter en fonction de la zone d'installation de l'antenne RTK et de vos possibilités de raccordement à un réseau Internet pour diffuser les corrections produites. En fin de page vous avez le choix entre différents récepteurs GNSS, bi-fréquences et tri-fréquences.

### Assemblage (hors récepteur GNSS)

|Matériel|Prix HT|
|--------|----|
|[Orange Pi Zero LTS](http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details/Orange-Pi-Zero-LTS.html)|44€|
|[Micro SD 32Go](https://fr.rs-online.com/web/p/cartes-sd/1873617)|23€|
|[Alimentation](https://www.kubii.fr/les-officiels-raspberry-pi-kubii/2593-alimentation-officielle-raspberry-pi-3-eu-micro-usb-51v-25a-kubii-3272496297586.html?search_query=SC0136&results=51)|10€|
|[dissipateur de chaleur](https://www.kubii.fr/composants-raspberry-pi/1676-heat-sink-aluminium-pour-raspberry-pi-3-kubii-3272496005099.html)|1€|
|[Cordon USB vers micro USB ](https://www.mhzshop.com/shop/Cables-et-cordons/Cordons-USB/Cordon-USB-vers-micro-USB.html)|2.5€|
|[câble antenne sma mâle tnc mâle 3m (longueur à adapter)](https://www.mhzshop.com/shop/Cables-et-cordons/Sur-mesure/50-ohms-WiFi-4G/Cordon-sur-mesure-en-coax-faible-perte-WLL-240-2-4-5-GHz-6-1mm.html)|19€|
|[câble ethernet RJ45 (longueur à adapter)](https://www.mhzshop.com/shop/Cables-et-cordons/Cordons-reseau/)|6€|
|[boite étanche je-200](https://www.mhzshop.com/shop/Accessoires-MHz/Boites-etanches/Boite-etanche-avec-fixation-mat-203x203x65mm-GentleBOX-JE-200.html)|16€|

Dans le cas où il n'y a pas de prise 230V à proximité de la base, et/ou pour simplifier l'installation, il est possible d'utiliser du [POE](https://fr.wikipedia.org/wiki/Alimentation_%C3%A9lectrique_par_c%C3%A2ble_Ethernet) pour alimenter la base via le cable ethernet :

![schéma base Poe](/assets/images/mat/schema_POE.png)

[Modèle d'Injecteur POE](https://www.trendnet.com/langfr/products/poe-splitters-injectors-extenders/tpe-115GI-v2.1){:target="_blank"} et [Modèle de Séparateur POE](https://www.trendnet.com/langfr/products/PoE/Gigabit-PoE-Splitter-TPE-104GS-v2){:target="_blank"}

![POE](https://raw.githubusercontent.com/Stefal/rtkbase/master/images/base_f9p_raspberry_pi.jpg)
<p align="center"><sup><i>crédit Stéphane Péneau</i></sup></p>

[VIDEO Assemblage RTKbase](http://rtkbase.eu/assemblage_base_gnss_brut.mp4){:target="_blank"}


### Choix du récepteur GNSS:

Passons maintenant au choix du récepteur GNSS et son paramétrage:
