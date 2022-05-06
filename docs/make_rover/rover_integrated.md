---
layout: default
title: Rover RTK Intégré
parent: Fabriquer un Rover RTK
nav_order: 5
has_children: true
---

## Matériels

Cette section décrit en détail le matériel nécessaire et la méthode d'assemblage pour fabriquer un rover RTK avec connexion Bluetooth pour smartphone.
Le Rover V5.1 nécessite une impression 3D du boitier ainsi que du matériel de soudure précis à l'étain, si vous n'avez pas d'équipements pensez aux [fablabs](https://cartographie.francetierslieux.fr/#?tags=Fablab%20/%20Atelier%20de%20Fabrication%20Num%C3%A9rique) à côté de chez vous!!!

![montage rover integrated](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/rover_integrated_1.jpg)
![architecture rover](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/mm_rover_small.jpg)

## Liste du matériel V5.1

### Boitier:

Le modèle impression 3D pour réaliser la boite est disponible sur la plateforme de partage [Printables](https://www.printables.com/model/196536-rtk-rover-integrated-housing), elle permet aussi de trouver [une imprimante pas loin de chez vous](https://world.prusa3d.com/) pour réaliser l'impression.
Vous pouvez demander également votre [fablab local](https://cartographie.francetierslieux.fr/#?tags=Fablab%20/%20Atelier%20de%20Fabrication%20Num%C3%A9rique).

Il est conseillé d'utiliser du filament en [PETG](https://prusament.com/fr/materials/prusament-petg/). C’est un excellent choix pour l’impression de pièces mécaniquement stressées. Comparé au PLA, il est plus résistant à la chaleur, plus souple et moins cassant.

![petg comparison](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/petg.png)

* Télécharger et imprimer les fichiers [d'impression](https://media.printables.com/media/prints/196536/packs/705934_b49dab24-8809-4164-a667-bfbf0e0959a8/rtk-rover-integrated-housing-model_files.zip). Les paramètres d'impression ont été choisi pour obtenir un bon rapport entre la qualité d'impression et la vitesse. Certains supports sont nécessaires, pensez à les activer (seulement pour les supports peints). De plus, une pause est réalisée pendant l'impression du corps pour permettre l'insertion d'écrous dans les trous prévus à cet effet.

![3D Corps](https://media.printables.com/media/prints/196536/stls/1818708_3fff77f2-8dd7-4ec8-9a9f-8d1fd4e30bfd/thumbs/cover/1280x960/png/housing-body_preview.webp)
![3D Base](https://media.printables.com/media/prints/196536/stls/1818825_e5b95909-ff1c-4bc7-ab04-ea9bf9f82da4/thumbs/cover/1280x960/png/housing-base_preview.webp)

> [fichiers source impression 3D](https://www.printables.com/model/196536-rtk-rover-integrated-housing)

### Composants

La disponibilité des composants chez les fournisseurs peut évoluer voir disparaître mais ils ont des dimensions assez standards. Assurez d'avoir les mêmes dimensions si vous en trouvez ailleurs, sinon modifier le modèle d'impression 3D.

|matériel|ref|prix|
|---|---|---|
|[Batterie LIPo 3.7v 3000mAh, 65x36x10 mm](https://www.amazon.fr/gp/product/B091Y3TW9F/)|| 23€ |
|[PowerBoost 1000 Charger 1A](https://www.amazon.fr/gp/product/B01BMRBTH2/)| ADA2465 | 26€ |
|[Interrupteur poussoir à enclenchement lumineux](https://www.amazon.fr/gp/product/B07RXZB4Z4) (par 2)|| 10€ |
|[Antenne calibrée multi-bande](https://www.ardusimple.com/product/calibrated-survey-gnss-multiband-antenna-ip67/)| ANT2B | 150€ |
|[DP0601 RTK GNSS (XL F9P)](https://store-drotek.com/891-rtk-zed-f9p-gnss.html)| 0891B08A | 170€ |
|[Serre-câble velcro](https://www.amazon.fr/gp/product/B0973BF36X) (10m)|| 6€ |
|[Bluetooth HC-05](https://www.amazon.fr/gp/product/B07BHRG9KB/) (par 5)|| 30€ |
|[Module FT232 USB-C vers UART](https://www.amazon.fr/gp/product/B09F6FGMD7/)|| 12,5€ |
|[Adaptateur fileté 5/8"-11](https://www.amazon.fr/gp/product/B07QCSTFVW/)|| 9€ |
|[Câble TNC angle droit vers SMA angle droit 10cm](https://www.aliexpress.com/item/1005001963693834.html)|| 3€ |
|[6 Écrous hexagonaux M3](https://fr.farnell.com/tr-fastenings/m3-hfa2-s100/full-nut-stainless-steel-a2-m3/dp/1420788) (paquet de 100) | 1420788 | 4.5€ |
|[6 Vis tête bombée M3 x 12mm ](https://fr.farnell.com/tr-fastenings/m312-bha2mcs100/vis-tete-bombee-hexa-s-s-a2-m3x12/dp/1420717) (paquet de 100) | 1420717 | 6€ |
|(En option) [Canne d'arpentage](https://www.aliexpress.com/item/1005003772471466.html)|| 110€ |
|(En option) [Valise de rangement étanche 215x272x166 mm](https://fr.farnell.com/b-w/2000-y-si/case-waterproof-pp-type-2000-yell/dp/3374618)| 2000-Y-SI | 60€ |
| | | |
|Total environ| |450€ (620€)|

![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/2-rover_v5-1.jpg)

## Paramétrage du récepteur GNSS et du bluetooth

Ouvrir dans un nouvel onglet la page de[Configuration du récepteur GNSS et du bluetooth](configuration){: .btn } et suivre les instructions.

## Assemblage du Rover V5.1

### Préparer son matériel

Vérifier que vous disposez de tous les composants:

* Module F9P DP0601
* Câble 6 pins fournis avec le F9P DP0601
* Module Bluetooth Hc-05
* Module FT232 USB-C vers UART
* Batterie 3000 mAh
* Module adafruit Power boost 1000c
* Bouton poussoir
* Câble TNC-SMA
* 6 vis M3
* Antenne GNSS
* Les pièces imprimées (attention, lors de l'impression du corps, n'oubliez pas d'insérer les écrous M3 dans leur logement!)

### Adaptation des câbles 6-pins

* Prendre un des câbles plats noirs fournis avec le récepteur GNSS F9P DP0601 et coupez le en deux et préparer les connexions et les étamer:

> Attention au sens du connecteur du câble!

![montage câble](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/cut_pin.jpg)

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

![montage câble](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/solder_hc05.jpg)

* Connecter enfin sur le UART1 du récepteur DP0601 F9p

## ATTENTION SECTIONS SUIVANTES NON ADAPTÉES AU ROVER INTÉGRÉ

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

![montage câble](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/solder_1000c.jpg)

* souder maintenant l'interrupteur sans courber les 3-pin

![montage interrupteur](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/inter1.jpg)
![montage interrupteur](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/inter2.jpg)

[Doc adafruit interrupteur](https://learn.adafruit.com/adafruit-powerboost-1000c-load-share-usb-charge-boost/assembly#on-slash-off-switch-1833577-5)

### Assemblage

* Préparer vos outils pour l'assemblage
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/1-rover_v5-1.jpg)

* Préparer l'ensemble des pièces et procéder au montage, il peut être nécessaire de déboucher les trous des vis de fixation du récepteur GNSS et du module d'alimentation sur le boitier imprimé. Utiliser un foré adapté à la taille de vos vis et une visseuse.
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/2-rover_v5-1.jpg)

* Commencer par l'insertion des écrous
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/3-rover_v5-1.jpg)

* Utiliser un briquet pour chauffer l'écrou puis l'insérer dans le boitier, attention à ne pas trop chauffer et surtout à ne pas trop appuyer au moment de l'insertion au risque de déformer le boitier
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/4-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/5-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/6-rover_v5-1.jpg)

* Assembler les composants d'alimentation.
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/7-rover_v5-1.jpg)

* Il est parfois nécessaire de poncer légèrement le trou sur le côté pour l'adaptateur USB en fonction des modèles.
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/8-rover_v5-1.jpg)

* Fixer la nappe avec un scotch et tester l'alimentation
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/9-rover_v5-1.jpg)

* Assembler les composants GNSS et Bluetooth
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/10-rover_v5-1.jpg)

* Commencer par le Bluetooth ([a-t-il bien été paramétré avant?](https://docs.centipede.fr/docs/make_rover/configuration.html#ajouter-un-module-bluetooth)) engager les broches en premier et pousser le module pour qu'il s'insère dans son emplacement.
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/11-rover_v5-1.jpg)

* Connecter les composants au récepteur GNSS ([a-t-il bien été paramétré avant?](https://docs.centipede.fr/docs/make_rover/configuration.html#configuration-du-r%C3%A9cepteur-gnss-f9p)) pour procéder à un test de fonctionnement
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/12-rover_v5-1.jpg)

* Attention à partir de maintenant tous les composants sont connectés, faire très attention à ne pas tirer sur les câbles!!! Installer le récepteur GNSS et ne serrez pas entièrement les vis. Assembler le raccord SMA avec une pince
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/13-rover_v5-1.jpg)

* Finaliser le serrage et fixer le câble.
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/14-rover_v5-1.jpg)

* Refermer délicatement le boitier en vérifiant de ne pas écraser un câble, tester de nouveau puis finaliser l'assemblage avec les boulons. Il est possible d'utiliser du joint silicone sur les zones de contact et les trous des composants afin d'assurer une certaine étanchéité.
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/15-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/16-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/17-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/rover_integrated_2.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/rover_integrated_3.jpg)

* Votre Rover GNSS RTK est enfin prêt, il vous reste  maintenant à [paramétrer votre smartphone](https://docs.centipede.fr/docs/Rover_rtklib_android/){: .btn }
