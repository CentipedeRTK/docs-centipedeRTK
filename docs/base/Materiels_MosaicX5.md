---
layout: default
title: Récepteur tri-fréquences Mosaic X5
parent: Materiel et Assemblage
nav_order: 1
---

### Liste

Voici la liste des éléments nécessaires à la mise en place d'une base GNSS Septentrio Mosaic X5 tri-fréquences:

|Matériel|Prix HT|
|--------|----|
| ou [Linnet Mosaic-X5](https://www.systork.io/en/product/linnet-mosaic-x5/) ou [simpleRTK3B Pro](https://www.ardusimple.com/product/simplertk3b-x5/)|550€|
|[Budget Survey Tripleband GNSS Antenna](https://www.ardusimple.com/product/budget-survey-tripleband-gnss-antenna-ip66/) ou [BT-800S](https://store.beitian.com/products/beitian-high-gain-high-precision-gnss-antenna-provide-stability-and-reliability-gnss-signal-for-positioning-applications-bt-800s?_pos=1&_sid=bcd57f6d3&_ss=r&variant=44374047490335)|100€|

### Assemblage

![composant](/assets/images/mat/composant.jpg)

Dans un premier temps faites un premier montage sans la boite:
   * Assembler l'antenne sur son support
   * Connecter le câble d'antenne au récepteur GNSS
   * Connecter le cordon USB entre le recepteur GNSS et le raspberry pi / orange pi
   * Connecter le [câble ethernet RJ45](https://www.mhzshop.com/shop/Cables-et-cordons/Cordons-reseau/) à votre réseau (BOX internet, CPL, prise réseau Rj45)
   * Préparer l'[alimentation](https://www.kubii.fr/les-officiels-raspberry-pi-kubii/2593-alimentation-officielle-raspberry-pi-3-eu-micro-usb-51v-25a-kubii-3272496297586.html?search_query=SC0136&results=51) mais ne pas mettre encore sous tension.

   ### Mettre à jour le firmware de votre module GNSS

      Dans un premier temps il est nécessaire de mettre à jour le [firmware](https://fr.wikipedia.org/wiki/Firmware) de votre module GNSS:



   ### Enfin
      * Prendre la [Micro SD 16Go](https://www.kubii.fr/carte-sd-et-stockage/2359-carte-microsd-16go-classe-10-u1-sandisk-kubii-619659161347.html) et passons maintenant à l'étape suivante: [Installation logiciel](Installation){: .btn .btn-blue }
