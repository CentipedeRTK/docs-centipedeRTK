---
layout: default
title: Rover RTK V5.1
parent: Fabriquer un Rover RTK
nav_order: 1
has_children: true
---

## Matériels

Cette section décrit en détail le matériel nécessaire et la méthode d'assemblage pour fabriquer un rover RTK avec connexion Bluetooth pour smartphone.
Le Rover V5.1 necessite une impression 3D du boitier ainsi que du matériel de soudure précis à l'étain, si vous n'avez pas d'équipements pensez aux [fablabs](https://cartographie.francetierslieux.fr/#?tags=Fablab%20/%20Atelier%20de%20Fabrication%20Num%C3%A9rique) à côté de chez vous!!!

![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/16-rover_v5-1.jpg)
![architecture rover](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/mm_rover_small.jpg)

### Liste du matériel V5.1

## Boitier:

Le modèle impression 3D pour réaliser la boite est disponible sur la plateforme de partage[PrusaPrinter](https://www.prusaprinters.org/fr/prints/90252-gnss-rtk-v51), elle permet aussi de trouver [une imprimante pas loin de chez vous](https://www.prusaprinters.org/fr/world) pour réaliser l'impression.
Vous pouvez demander également votre [fablab local](https://cartographie.francetierslieux.fr/#?tags=Fablab%20/%20Atelier%20de%20Fabrication%20Num%C3%A9rique).

* Télécharger et imprimer le fichier [v5_1_3-alim+gnss_petg_0.2mm_PETG_MK3S_5h27m.gcode](https://media.prusaprinters.org/media/prints/90252/gcodes/948649_a60b3e49-185d-42cb-9288-f2798bc8b229/v5_1_3-alimgnss_petg_02mm_petg_mk3s_5h27m.gcode)

> [fichiers source impression 3D](https://www.prusaprinters.org/fr/prints/90252-gnss-rtk-v51)

![3d alim](https://media.prusaprinters.org/media/prints/90252/stls/948650_10df3525-daf6-4823-b093-f8d498a4a2be/thumbs/cover/640x250/png/v5_1_1_3-alim_preview.png)
![3d GNSS](https://media.prusaprinters.org/media/prints/90252/stls/948651_f379b93e-6dd7-4ba0-95ec-b495d4d879ce/thumbs/cover/640x250/png/v5_1_1_3-gnss_preview.png)

## Composants

La disponibilité des composants chez les fournisseurs peux évoluer voir disparaître mais ils ont des dimensions assez standards. Assurez d'avoir les mêmes dimensions si vous en trouvez ailleurs, sinon modifier le modèle d'impression 3D.

|matériel|ref|prix|
|---|---|---|
|[Batterie LIPo 3.7v 2000mAh](https://boutique.semageek.com/fr/533-batterie-lithium-ion-polymere-37v-2000mah-3002958281613.html)|ADA 2011|18€|
|[PowerBoost 1000 Charger 1A](https://boutique.semageek.com/fr/1405-powerboost-1000-charger-rechargeable-5v-lipo-usb-boost-1a-3009227033751.html?search_query=PowerBoost+1000+Charger+-+Rechargeable+5V+Lipo+USB+Boost&results=113)|ADA 2465|24€|
|[micro interrupteur à glissière 3.7mmX8.5mmX3.5mm](https://www.amazon.fr/gp/product/B08L6FMV84/ref=ppx_yo_dt_b_asin_title_o01_s00?ie=UTF8&psc=1) (boite de 150)||10€|
|[DA233 multi-band GNSS Antenna](https://store-drotek.com/925-da233.html)|0925|70€|
|[DP0601 RTK GNSS (XL F9P)](https://store-drotek.com/891-rtk-zed-f9p-gnss.html)| 0891B08A| 180€|
|[Adaptateur USB C vers USB Micro B](https://www.amazon.fr/GeekerChip-Pi%C3%A8ces-Adaptateur-Femelle-Galaxy/dp/B08F9S9H4K/ref=psdc_2908498031_t3_B08WM1ZFZR)||1€|
|[Bluetooth HC-05](https://www.amazon.fr/gp/product/B07BHRG9KB/ref=ppx_yo_dt_b_asin_title_o04_s01?ie=UTF8&psc=1)||5,6€|
|[SMA Mâle vers SMA Femelle Coude 135° 45°](https://www.amazon.fr/WE-WHLL-connecteur-Adaptateur-biseaut%C3%A9-Lunettes/dp/B08QCDL774/ref=sr_1_10?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=OM175088RFS6&keywords=SMA+M%C3%A2le+SMA+Femelle+45%C2%B0&qid=1635941613&sprefix=sma+m%C3%A2le+sma+femelle+45+%2Caps%2C74&sr=8-10)||3,5€|
|[8 Vis à métaux M2 tête Cylindrique Pozidriv inox 6mm](https://fr.rs-online.com/web/p/vis-a-metaux/0528693) (paquet de 100)|528-693| 6.7€|
|[4 Écrou hexagonal M3, Acier Inoxydable](https://fr.rs-online.com/web/p/ecrous-hexagonaux/189563) (paquet de 100)|189-563 |7.8€ |
|[4 Vis à métaux M3 tête Cylindrique fendue inox 20mm](https://fr.rs-online.com/web/p/vis-a-metaux/0526984)) (paquet de 100) |526-984|7€ |
| | | |
|Total environ| |310€|

![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/2-rover_v5-1.jpg)

## Paramétrage du recepteur GNSS et du bluetooth

Ouvrir dans un nouvel onglet la page de[Configuration du recepteur GNSS et du bluetooth](configuration){: .btn } et suivre les instructions.

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
* 8 vis M2
* 4 vis M3
* 4 ecrous M3
* Antenne GNSS
* La boite imprimée

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

### Assemblage

* Preparer vos outils pour l'assemblage
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/1-rover_v5-1.jpg)

* Preparer l'ensemble des pièces et procéder au montage, il peut être necessaire de déboucher les trous des vis de fixation du recepteur GNSS et du module d'alimentation sur le boitier imprimé. Utiliser un foré adapté à la taille de vos vis et une visseuse.
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/2-rover_v5-1.jpg)

* Commencer par l'insertion des écrous
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/3-rover_v5-1.jpg)

* Utiliser un briquet pour chauffer l'ecrou puis l'insérer dans le boitier, attention à ne pas trop chauffer et surtout à ne pas trop appuyer au moment de l'insertion au risque de déformer le boitier
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/4-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/5-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/6-rover_v5-1.jpg)

* Assembler les composants d'alimentation.
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/7-rover_v5-1.jpg)

* Il est parfois necessaire de poncer légèrement le trou sur le côté pour l'adaptateur USB en fonction des modèles.
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/8-rover_v5-1.jpg)

* Fixer la nappe avec un scotch et tester l'alimentation
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/9-rover_v5-1.jpg)

* Assembler les composants GNSS et Bluetooth
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/10-rover_v5-1.jpg)

* Commencer par le Bluetooth ([a t'il bien été paramétré avant?](https://docs.centipede.fr/docs/make_rover/configuration.html#ajouter-un-module-bluetooth)) engager les broches en premier et pousser le module pour qu'il s'insère dans son emplacement.
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/11-rover_v5-1.jpg)

* Connecter les composants au recepteur GNSS ([a t'il bien été paramétré avant?](https://docs.centipede.fr/docs/make_rover/configuration.html#configuration-du-r%C3%A9cepteur-gnss-f9p)) pour procéder à un test de fonctionnement
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/12-rover_v5-1.jpg)

* Attention a partir de maintenant tout les composant sont connectés, faire très attention à ne pas tirer sur les cables!!! Installer le recepteur GNSS et ne serrez pas entierement les vis. Assembler le raccord SMA avec une pince
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/13-rover_v5-1.jpg)

* Finaliser le serrage et fixer le cable.
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/14-rover_v5-1.jpg)

* Refermer délicatement le boitier en vérifiant de ne pas ecraser un cable, tester de nouveau puis finaliser l'assemblage avec les boulons.
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/15-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/16-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/17-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/18-rover_v5-1.jpg)

* Votre Rover GNSS RTK est enfin prêt, il vous reste  maintenant à [paramétrer votre smartphone](https://docs.centipede.fr/docs/Rover_rtklib_android/){: .btn }
