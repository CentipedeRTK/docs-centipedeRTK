---
layout: default
title: Récepteurs GNSS
parent: Centipède & Matériels propriétaires
nav_order: 2
---

## Exemples de connexion au caster Centipede avec des récepteurs GNSS RTK

### [Trimble R4](https://www.trimble.com/support_trl.aspx?Nav=Collection-65944&pt=Trimble%20R4) et Trimble Juno


* Il n'y a pas besoin de la trame 1008 sur la base.
* Soit ajouter une carte SIM M2M débloquée, soit établir une connexion en WiFi avec son Smartphone en Hotspot. Il n'a pas été possible dans notre cas d'utiliser la carte SIM M2M intégrée à l'antenne, car elle est bloquée pour l'utilisation d'Orpheon
* type de levé – votre type de levé - options du mobile, il faut utiliser le format de diffusion : RTCM RTK

![trimbleR4](https://jancelin.github.io/docs-centipedeRTK/assets/images/consoles_rtk/trimble1.jpg)


* type de levé – votre type de levé – liaison de données mobile – clic sur la flèche à droite du contact GNSS – nouveau

![trimbleR4](https://jancelin.github.io/docs-centipedeRTK/assets/images/consoles_rtk/trimble2.jpg)

![trimbleR4](https://jancelin.github.io/docs-centipedeRTK/assets/images/consoles_rtk/trimble3.jpg)


### Trimble R2

Les GPS TRIMBLE R2 sont compatibles avec le système de correction RTK CENTIPEDE, ils utilisent une correction RTCM 3.
Il faudra que le smartphone (connecté en bluetooth à l'antenne) soit connecté à internet via le réseau 4 G ou wifi.

* Pour paramétrer le NTRIP, ouvrir l'application GNSS Status (Trimble) et allez sur "Real-Time Config"

![image](https://user-images.githubusercontent.com/74925959/99996346-e2139300-2dbb-11eb-8d60-474ce95f1e92.png)

* Puis appuyez sur Edit et définissez les accès à centipede , il vous faudra choisir la base de référence dans "NTRIP SOURCE" puis indiquer les identifiants centipede Username : centipede / Password : centipede, enfin cliquez sur "save" en haut !  (veillez à noter la configuration du départ si vous souhaitez effectuer des tests comparatifs.

![image](https://user-images.githubusercontent.com/74925959/99996675-5bab8100-2dbc-11eb-820e-50a2f5b5a2e0.png)

![image](https://user-images.githubusercontent.com/74925959/99996725-6d8d2400-2dbc-11eb-9950-7427db923a40.png)

![image](https://user-images.githubusercontent.com/74925959/99996953-c2309f00-2dbc-11eb-825f-630cfec6a1c8.png)


### Spectra et Nomad avec Survey Pro

* Besoin de la trame 1008 sur la base (MAJ rtkbase 2.2.0)
* Carte SIM M2M débloquée, soit établir une connexion en WiFi avec son Smartphone en Hotspot

![spectra_surveypro](https://jancelin.github.io/docs-centipedeRTK/assets/images/consoles_rtk/spectra_surveypro1.jpg)

![spectra_surveypro](https://jancelin.github.io/docs-centipedeRTK/assets/images/consoles_rtk/spectra_surveypro2.jpg)

![spectra_surveypro](https://jancelin.github.io/docs-centipedeRTK/assets/images/consoles_rtk/spectra_surveypro3.jpg)

![spectra_surveypro](https://jancelin.github.io/docs-centipedeRTK/assets/images/consoles_rtk/spectra_surveypro4.jpg)

![spectra_surveypro](https://jancelin.github.io/docs-centipedeRTK/assets/images/consoles_rtk/spectra_surveypro5.jpg)

![spectra_surveypro](https://jancelin.github.io/docs-centipedeRTK/assets/images/consoles_rtk/spectra_surveypro6.jpg)

![spectra_surveypro](https://jancelin.github.io/docs-centipedeRTK/assets/images/consoles_rtk/spectra_surveypro7.jpg)

![spectra_surveypro](https://jancelin.github.io/docs-centipedeRTK/assets/images/consoles_rtk/spectra_surveypro8.jpg)

![spectra_surveypro](https://jancelin.github.io/docs-centipedeRTK/assets/images/consoles_rtk/spectra_surveypro9.jpg)

![spectra_surveypro](https://jancelin.github.io/docs-centipedeRTK/assets/images/consoles_rtk/spectra_surveypro10.jpg)


