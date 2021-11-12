---
layout: default
title: Assemblage
parent: Fabriquer un Rover RTK
nav_order: 3
has_children: true
---

## Assemblage du Rover

### Préparer son matériel

Vérifier que vous diposez de tous les composants:

* Module F9P
* Antenne GNSS
* Batterie
* Câble USB renforcé
* option Bluetooth:
    * Module Bluetooth
    * Câble 6 pins préparé et connecté au F9P

### Adaptation du câble 6-pins si Bluetooth

* Prendre un cable plat noir fourni avec le récepteur GNSS F9P DP0601 et coupez le en deux.
* Bien repérer l'ordre des brins du câble pour la  connexion entre le récepteur F9P et le module bluetooth HC-05. [Pinout DP0601 F9p configuration](https://raw.githubusercontent.com/drotek/datasheets/master/DrotekDoc_0891B08A%20-%20DP0601%20GNSS%20RTK%20(F9P).pdf)
* Faire correspondre entre le DP0601 F9p > BT Hc-05:
   * 5V IN > VCC
   * UART1 RX > TXD
   * UART1 TX > RXD
   * I2C SCL > rien
   * I2C SDA > rien
   * GND  > GND
* Connecter enfin sur le UART1 du récepteur F9P

### Assemblage impression 3D

[source](https://www.prusaprinters.org/fr/prints/47974-gnss-rtk-f9p-drotek-bt-hc-05)

<iframe width="100%" height="1000" frameborder="0" style="border:0" src="https://www.prusaprinters.org/fr/prints/47974-gnss-rtk-f9p-drotek-bt-hc-05" allowfullscreen></iframe>

### Assemblage scratch

J'utilise du scratch 3M Dual-lock pour l'assemblage des composants, cela permet un démontage et une adaptation aisés du positionnement en fonction des besoins. 

>J'espère vous proposer prochainement une boîte étanche à imprimer.

* Découper des bandes scratch 3M Dual-lock à la bonne taille et les coller.

![assemblage](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/assemblage1.jpg)

* Assembler les modules

![assemblage](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/assemblage2.jpg)

* Connecter une antenne

![RTKrover](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/rover_1.jpg)

![RTKrover](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/rover_pied_2.jpg)

