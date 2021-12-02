---
layout: default
title: Matériels
parent: Fabriquer un Rover RTK
nav_order: 1
has_children: true
---

## Matériels

Cette section décrit en détail le matériel nécessaire pour fabriquer un rover RTK avec connexion Bluetooth.
La V5.1 demande une impression 3D ainsi que du matériel de soudure à l'étain, pensez aux fablabs à côté de chez vous!!!
La V1 est un assemblage de composant sans soudure, il est également possible de l'utiliser en USB avec un câble OTG directement branché sur le smartphone ou un PC.

### Liste du matériel V5.1

|matériel|ref|prix|
|---|---|---|
|[Batterie Lithium Ion Polymere - 3.7v 2000mAh](https://boutique.semageek.com/fr/533-batterie-lithium-ion-polymere-37v-2000mah-3002958281613.html)|ADA 2011|18€|
|[PowerBoost 1000 Charger - Rechargeable 5V Lipo USB Boost - 1A](https://boutique.semageek.com/fr/1405-powerboost-1000-charger-rechargeable-5v-lipo-usb-boost-1a-3009227033751.html?search_query=PowerBoost+1000+Charger+-+Rechargeable+5V+Lipo+USB+Boost&results=113)|ADA 2465|24€|
|[Switch double SPDT](https://boutique.semageek.com/fr/468-switch-double-spdt-3006504205436.html?search_query=SPDT&results=7)|ADA 805|1,5€|
|[DA233 multi-band GNSS Antenna](https://store-drotek.com/925-da233.html)|0925|70€|
|[DP0601 RTK GNSS (XL F9P)](https://store-drotek.com/891-rtk-zed-f9p-gnss.html)| 0891B08A| 180€|
|[Adaptateur USB C vers USB Micro B](https://www.amazon.fr/GeekerChip-Pi%C3%A8ces-Adaptateur-Femelle-Galaxy/dp/B08F9S9H4K/ref=psdc_2908498031_t3_B08WM1ZFZR)||1€|
|[Bluetooth HC-05](https://www.amazon.fr/gp/product/B07BHRG9KB/ref=ppx_yo_dt_b_asin_title_o04_s01?ie=UTF8&psc=1)||5,6€|
|[SMA Mâle vers SMA Femelle Coude 135 Degrés 45 Degrés](https://www.amazon.fr/WE-WHLL-connecteur-Adaptateur-biseaut%C3%A9-Lunettes/dp/B08QCDL774/ref=sr_1_10?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=OM175088RFS6&keywords=SMA+M%C3%A2le+SMA+Femelle+45%C2%B0&qid=1635941613&sprefix=sma+m%C3%A2le+sma+femelle+45+%2Caps%2C74&sr=8-10)||3,5€|
| | | |
|Total environ| |310€|

+ 8 vis et 4 boulons/ecrous

[Modèle impression 3D](https://www.prusaprinters.org/fr/prints/90252-gnss-rtk-v51)

![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/2-rover_v5-1.jpg)
![montage rover 5.1](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/16-rover_v5-1.jpg)


### Liste du matériel V1

Liste des composants d'un Rover RTK bifréquences L1-L2:

|Matériel|Prix HT|
|--------|----|
|[F9P](https://store-drotek.com/891-rtk-zed-f9p-gnss.html)|220€|
|[D910 antenna](https://store.drotek.com/da-910-multiband-gnss-antenna) |100€|
|[ou: Helix Antenna DA233](https://store-drotek.com/925-da233.html)|70€|
|[ou: U-blox ANN-MB](https://store-drotek.com/909-u-blox-ann-mb-multi-band-antenna.html)|50€|

Pour la modbilité:

|Matériel|Prix HT|
|--------|----|
|[powerbank 5000mha](https://www.amazon.fr/gp/product/B082PMBWRZ/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1)|11€|
|[Cable USB > USB microB renforcé](https://www.amazon.fr/gp/product/B01LXCA1GJ/ref=ppx_yo_dt_b_asin_title_o01_s00?ie=UTF8&psc=1)|9€|
|[fixation 3M Dual Lock](https://www.amazon.fr/3M-Syst%C3%A8me-fixation-pliable-transparent/dp/B00LZRLYYI/ref=psdc_1854612031_t2_B081FF3BM6)|16€|

![rover_v1](https://media.prusaprinters.org/media/prints/47974/images/478167_de7536d7-3302-4f26-847e-72f3065b7113/thumbs/cover/160x160/jpg/img_20201202_124011.jpg)
![rover_v1](https://media.prusaprinters.org/media/prints/47974/images/478171_e2e97adf-dabc-4881-81d7-b335c65ac2db/thumbs/cover/160x160/jpg/img_20201202_124917.jpg)
![rover_v1](https://media.prusaprinters.org/media/prints/47974/images/478179_d74c9516-950c-4d3e-82f2-4cf2c9d587ba/thumbs/cover/160x160/jpg/img_20201202_125714.jpg)

### Paramétrage Bluetooth:

|Matériel|Prix HT|
|--------|----|
|[bluetooth Hc-05](https://www.amazon.fr/DSD-TECH-HC-05-Pass-through-Communication/dp/B01G9KSAF6/ref=sr_1_1_sspa?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hc-05&qid=1586875187&s=computers&sr=1-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFTNVVYWUlSTThRMjgmZW5jcnlwdGVkSWQ9QTAzNzQ3MzMzUU5UWkZWSzdYRFJRJmVuY3J5cHRlZEFkSWQ9QTA5MDQwNTE0UElCRFlMNTQ1MDMmd2lkZ2V0TmFtZT1zcF9hdGYmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl)|10€|
|[JST-GH to JWT 28AWG 6-pins Silicone cable](https://store-drotek.com/831-jst-gh-to-jwt-28awg-6pins-cable.html)|3€|

Pour le paramétrage du module bluetooth HC-05 il est necessaire de disposer d'un arduino, de jumpers femelles et d'un câble USB mini-B

|Matériel|Prix HT|
|--------|----|
|[arduino nano](https://fr.rs-online.com/web/p/arduino/6961667)|13€|
|[câbles jumpers femelles](https://fr.rs-online.com/web/p/kit-de-cables-dupont/7916450/)|3€|
|[câble USB A > USB mini-B](https://fr.rs-online.com/web/p/cables-usb/1862803/)|2.6€|

**Pour l'utilisation du rover, vous aurez besoin d'un PC windows ou linux, ou bien un smartphone ou tablette sous Android.**
