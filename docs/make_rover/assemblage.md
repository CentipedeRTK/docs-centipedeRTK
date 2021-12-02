---
layout: default
title: Assemblage
parent: Fabriquer un Rover RTK
nav_order: 3
has_children: true
---

## Assemblage du Rover V5.1

### Préparer son matériel

Vérifier que vous diposez de tous les composants:

* Module F9P DP0601
* Câble 6 pins fourni avec le F9P DP0601
* Module Bluetooth Hc-05
* rallonge 45° SMA
* Batterie 2000 mAh
* Module adafruit Power boost 1000c
* interrupteur
* Adaptateur micro usb > usbC
* 8 vis
* 4 boulons
* 4 ecrous
* Antenne GNSS
* [Boite imprimée](https://www.prusaprinters.org/fr/prints/90252-gnss-rtk-v51)

### Adaptation des câbles 6-pins

* Prendre un des cables plats noirs fournis avec le récepteur GNSS F9P DP0601 et coupez le en deux et préparer les connexions et les étamer:

> Attention au sens du connecteur du câble!

![montage cable](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/cut_pin.jpg)

### Bluetooth

* Bien repérer l'ordre des brins du câble pour la  connexion entre le récepteur F9P et le module bluetooth HC-05. **Attention le fil avec une bande blanche n'est pas toujours du même côté, il peut être le + ou le -**. Utiliser ce document: [DP0601 1.3 Pin description](https://raw.githubusercontent.com/drotek/datasheets/master/DrotekDoc_0891B08A%20-%20DP0601%20GNSS%20RTK%20(F9P).pdf)
* Faire correspondre les branchements entre le DP0601 F9p > BT Hc-05:
   * **5V IN > VCC**
   * **UART1 RX > TXD**
   * **UART1 TX > RXD**
   * I2C SCL > rien
   * I2C SDA > rien
   * **GND  > GND**
* Souder

![montage cable](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/solder_hc05.jpg)

* Connecter enfin sur le UART1 du récepteur DP0601 F9p

### Power boost
* Bien repérer l'ordre des brins du câble pour la  connexion entre le récepteur F9P et le module power boost 1000c. **Attention le fil avec une bande blanche n'est pas toujours du même côté, il peut être le + ou le -**. Utiliser ce document: [DP0601 1.3 Pin description](https://raw.githubusercontent.com/drotek/datasheets/master/DrotekDoc_0891B08A%20-%20DP0601%20GNSS%20RTK%20(F9P).pdf)
* Faire correspondre les branchements entre le DP0601 F9p > Powerboost 1000c:
   * **5V IN > +**
   * UART1 RX > rien
   * UART1 TX > rien
   * I2C SCL > rien
   * I2C SDA > rien
   * **GND  > -**
* Souder

![montage cable](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/solder_1000c.jpg)

* souder maintenant l'interrupteur sans courber les 3-pin

![montage interrupteur](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/inter1.jpg)
![montage interrupteur](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/inter2.jpg)

[Doc adafruit interrupteur](https://learn.adafruit.com/adafruit-powerboost-1000c-load-share-usb-charge-boost/assembly#on-slash-off-switch-1833577-5)

* Preparer l'ensemble des pièces et procéder au montage.

![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/1-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/2-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/3-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/4-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/5-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/7-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/8-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/9-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/10-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/12-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/14-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/15-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/16-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/17-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/18-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/19-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/20-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/21-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/22-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/23-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/24-rover_v5-1.jpg)



## Assemblage du Rover V1

### Préparer son matériel

Vérifier que vous diposez de tous les composants:

* Module F9P
* Antenne GNSS
* Batterie
* Câble USB renforcé
* option Bluetooth:
    * Module Bluetooth
    * Câble 6 pins préparé et connecté au F9P

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

