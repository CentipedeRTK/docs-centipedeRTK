---
layout: default
title: Rover RTK V1
parent: Fabriquer un Rover RTK
nav_order: 2
has_children: true
---

## Liste du matériel V1

Le Rover V1 est un assemblage de composant sans soudure, il est également possible de l'utiliser en USB avec un câble OTG directement branché sur le smartphone ou un PC.

### Liste des composants d'un Rover RTK bifréquences L1-L2:

|Matériel|Prix HT|
|--------|----|
|[F9P](https://store-drotek.com/891-rtk-zed-f9p-gnss.html)|220€|
|[D910 antenna](https://store.drotek.com/da-910-multiband-gnss-antenna) |100€|
|[ou: Helix Antenna DA233](https://store-drotek.com/925-da233.html)|70€|
|[ou: U-blox ANN-MB](https://store-drotek.com/909-u-blox-ann-mb-multi-band-antenna.html)|50€|

Pour la mobilité:

|Matériel|Prix HT|
|--------|----|
|[powerbank 5000mha](https://www.amazon.fr/gp/product/B082PMBWRZ/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1)|11€|
|[Cable USB > USB microB renforcé](https://www.amazon.fr/gp/product/B01LXCA1GJ/ref=ppx_yo_dt_b_asin_title_o01_s00?ie=UTF8&psc=1)|9€|
|[fixation 3M Dual Lock](https://www.amazon.fr/3M-Syst%C3%A8me-fixation-pliable-transparent/dp/B00LZRLYYI/ref=psdc_1854612031_t2_B081FF3BM6)|16€|

![rover_v1](https://media.prusaprinters.org/media/prints/47974/images/478167_de7536d7-3302-4f26-847e-72f3065b7113/thumbs/cover/160x160/jpg/img_20201202_124011.jpg)
![rover_v1](https://media.prusaprinters.org/media/prints/47974/images/478171_e2e97adf-dabc-4881-81d7-b335c65ac2db/thumbs/cover/160x160/jpg/img_20201202_124917.jpg)
![rover_v1](https://media.prusaprinters.org/media/prints/47974/images/478179_d74c9516-950c-4d3e-82f2-4cf2c9d587ba/thumbs/cover/160x160/jpg/img_20201202_125714.jpg)

### Bluetooth:

|Matériel|Prix HT|
|--------|----|
|[bluetooth Hc-05](https://www.amazon.fr/DSD-TECH-HC-05-Pass-through-Communication/dp/B01G9KSAF6/ref=sr_1_1_sspa?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hc-05&qid=1586875187&s=computers&sr=1-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFTNVVYWUlSTThRMjgmZW5jcnlwdGVkSWQ9QTAzNzQ3MzMzUU5UWkZWSzdYRFJRJmVuY3J5cHRlZEFkSWQ9QTA5MDQwNTE0UElCRFlMNTQ1MDMmd2lkZ2V0TmFtZT1zcF9hdGYmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl)|10€|
|[JST-GH to JWT 28AWG 6-pins Silicone cable](https://store-drotek.com/831-jst-gh-to-jwt-28awg-6pins-cable.html)|3€|

## Paramétrage du récepteur GNSS et du bluetooth

[Configuration du récepteur GNSS et du bluetooth](configuration){: .btn }

## Assemblage du Rover V1

### Préparer son matériel

Vérifier que vous disposez de tous les composants:

* Module F9P
* Antenne GNSS
* Batterie
* Câble USB renforcé
* Option Bluetooth:
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
