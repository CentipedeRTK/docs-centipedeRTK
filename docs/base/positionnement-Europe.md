---
layout: default
title: Positionnement Europe Géographique
parent: Calcul de la position de la base
nav_order: 2
---
### 1. Convertir un fichier de log en fichier RINEX

* Se rendre dans l'onglet <span style="color:#007BFF">**LOGS**</span> de votre base RTK et cliquer sur le crayon (```edit```) d'un **.zip** complet de 24h.

![log2rinex](/assets/images/positionnement/log2rinex1_nrcan.png)

* Une fenêtre s'ouvre pour vous proposer de convertir le fichier de log en fichier RINEX.
* Si vous êtes hors de France: **Utiliser un Fichier de logs datant de plus de 15 jours** puis choissisez le préréglage **NRCAN**, qui est compatible avec les services en ligne d'NRCAN pour le calcul du positionnement précis. Cliquer sur **Create Rinex File**

![log2rinex](/assets/images/positionnement/log2rinex2.png)

* Patientez lors de la création du fichier RINEX cela peut durer plusieurs minutes.

![log2rinex](/assets/images/positionnement/log2rinex3.gif)

* Téléchargez le fichier créé. Une fois la fenêtre fermée (```close```) le fichier RINEX est également disponible dans la liste des logs avec un nom **AAAA-MM-JJ-nom_de_votre_point_de_montage_nrcan.obs**, son poids est d'environ 4 Mo.

![log2rinex](/assets/images/positionnement/log2rinex4.png)


### 2. Post traitement

**Pensez à bien utiliser un RINEX datant de plus de 15 jours afin d'avoir un positionnement précis!**
Cette étape permet de corriger les données brutes de votre base RTK avec la méthode PPP [NRCAN](https://webapp.csrs-scrs.nrcan-rncan.gc.ca/geod/tools-outils/ppp.php)

* se rendre sur le site [NRCAN](https://webapp.csrs-scrs.nrcan-rncan.gc.ca/geod/tools-outils/ppp.php)
* Ouvrir une Session en renseignant votre identité
* Choisir le mode de traitement **statique** et **ITRF**
* Importer son Fichier d'observavtion RINEX généré précédement.
* Cliquer sur **Soumettre à PPP**

![log2rinex](/assets/images/positionnement/nrcan.png)

Les liens de téléchargement sont transmis après quelques minutes sur votre boite mail:


* Cliquer sur full_output.zip pour le télécharger
* Cliquer sur **summary** pour l'afficher

Les 2 documents (summary et full_output.zip) + le rinex créé précédement vous seront demandés au moment de la déclaration ,pensez à conserver l'ensemble des informations.

### 3. Interprétation du rapport

* Copier le **summary**

> Exemple d'un fichier summary nrcan:

```
The estimated coordinates ITRF20 2023-05-24 for the 2023-05-25-CT_nrcan_1_.obs RINEX file are as follows:
Latitude	N46° 09' 53.4007"	± 0.002 m (95%)
Longitude	W0° 56' 54.7154"	± 0.002 m (95%)
Ellipsoidal Height	65.270 m	± 0.008 m (95%)
[46.16483353,-0.94853206,65.270] <---- Vos coordonnées en ITRF20!!

UTM Zone 30 (North)
Northing	5114407.540 m
Easting	658376.222 m
Scale factor (point)	0.99990835
Scale factor (combined)	0.99989812
[5114407.540,658376.222,65.270]
Cartesian coordinates
X	4424561.087	± 0.006 m (95%)
Y	-73255.334	± 0.002 m (95%)
Z	4578002.990	± 0.006 m (95%)
[4424561.087,-73255.334,4578002.990]

Orbits and Clocks Used: NRCan/IGS Final
GNSS Data: GPS & GLONASS
GRS80 ellipsoid used for (x,y,z) to (lat,lon,h) transformation
```
.
* aller sur [ITRF20 to ETRF2000 conversion](https://nrcan2etrf.centipede.fr/nrcan_itrf-ectt_etrf-epsg_io.html) et coller le **summary**, cliquer sur **1. Extract data**

![itrf2etrf](/assets/images/positionnement/itrf2etrf_1.png)

* Cliquer sur **2. Click to display the ECTT result...** afin de convertir les coordonnées ITRF2020 en [ETRF2000](https://epsg.io/7931). Vous aller avoir un nouvel onglet qui s'ouvre vers le convertisseur [EUREF Permanent GNSS Network](https://www.epncb.oma.be/_productsservices/coord_trans/index.php). **Copier toute la zone RESULTS**.

![itrf2etrf](/assets/images/positionnement/itrf2etrf_2.png)

* Revenir sur la page précédente et coller les valeurs, cliquer ensuite sur  **3. Convert XYZ to Lat Long Elev**

![itrf2etrf](/assets/images/positionnement/itrf2etrf_3.png)

* Les coordonnées finales de votre base GNSS sont maintenant affichées, Cliquer sur:
  * **4. Export Form Data .txt ...** pour télécharger le rapport de conversion afin de pouvoir l'envoyer lors de votre déclaration sur le réseau Centipede-RTK.

![itrf2etrf](/assets/images/positionnement/itrf2etrf_4.png)

	* **5. Finaly, Copy Converted Coordinates for ....** pour copier ces valeurs et les insérer dans les paramètres de coordonnées de votre base GNSS.

![itrf2etrf](/assets/images/positionnement/itrf2etrf_5.png)

> Vos coordonnées géographiques sont maintenant dans un système global au niveau de l'Europe géographique qui prend en compte le mouvement de la plaque tectonique eurasienne.
Chaque pays a souvent un système de coordonnées local en plus, comme le RGF93 en France, afin de prendre en considération les mouvements locaux. Les différences sont mineurs en positionnement par RTK ( < 1cm ).
Si vous avez besoin d'avoir d'être convergeant avec le système de coordonnées de votre pays merci de nous faire remonter vos besoins sur le [forum](https://forum.geocommuns.fr/c/rtk-centipede/18)

* Passons à la finalisation du [Paramétrage du positionnement de votre Base RTK](param_positionnement){: .btn .btn-blue }
