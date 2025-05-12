---
layout: default
title: Positionnement Canada
parent: Calcul de la position de la base
nav_order: 4
---
### 1. Convertir un fichier de log en fichier RINEX

* Se rendre dans l'onglet <span style="color:#007BFF">**LOGS**</span> de votre base RTK et cliquer sur le crayon (```edit```) d'un **.zip** complet de 24h.

![log2rinex](/assets/images/positionnement/log2rinex1.png)

* Une fenêtre s'ouvre pour vous proposer de convertir le fichier de log en fichier RINEX.
* Si vous êtes hors de France: **Utiliser un Fichier de logs datant de plus de 15 jours** puis choissisez le préréglage **NRCAN**, qui est compatible avec les services en ligne d'NRCAN pour le calcul du positionnement précis. Cliquer sur **Create Rinex File**

![log2rinex](/assets/images/positionnement/log2rinex1_nrcan.png)

* Patientez lors de la création du fichier RINEX cela peut durer plusieurs minutes.

![log2rinex](/assets/images/positionnement/log2rinex3.gif)

* Téléchargez le fichier créé. Une fois la fenêtre fermée (```close```) le fichier RINEX est également disponible dans la liste des logs avec un nom **AAAA-MM-JJ-nom_de_votre_point_de_montage_nrcan.obs**, son poids est d'environ 4 Mo.

![log2rinex](/assets/images/positionnement/log2rinex4.png)


### 2. Post traitement

**Pensez à bien utiliser un RINEX datant de plus de 15 jours afin d'avoir un positionnement précis!**
Cette étape permet de corriger les données brutes de votre base RTK avec la méthode PPP [NRCAN](https://webapp.csrs-scrs.nrcan-rncan.gc.ca/geod/tools-outils/ppp.php)

* se rendre sur le site [NRCAN](https://webapp.csrs-scrs.nrcan-rncan.gc.ca/geod/tools-outils/ppp.php)
* Ouvrir une Session en renseignant votre identité
* Choisir le mode de traitement **statique** et **NAD83**
* Choisir l'époques **Epoque des données GNSS**
* Importer son Fichier d'observavtion RINEX généré précédement.
* Cliquer sur **Soumettre à PPP**

![log2rinex](/assets/images/positionnement/nrcan_nad83.png)

Les liens de téléchargement sont transmis après quelques minutes sur votre boite mail:

* Cliquer sur full_output.zip pour le télécharger
* Cliquer sur **summary** pour l'afficher

Les 2 documents (summary et full_output.zip) + le rinex créé précédemment vous seront demandés au moment de la déclaration ,pensez à conserver l'ensemble des informations.

### 3. Interprétation du rapport

> Exemple d'un fichier summary nrcan:

```
Les coordonnées NAD83(SCRS) 2025-03-22 calculées pour le fichier RINEX SEPT0810.25O sont les suivantes:
Latitude	N46° 17' 54.9219"	± 0.002 m (95%)
Longitude	W71° 39' 25.7527"	± 0.002 m (95%)
Hauteur ellipsoïdale	134.493 m	± 0.007 m (95%)
Hauteur orthométrique	CGVD2013 CGG2013a 162.4271 m
[46.29858940,-71.65715354,134.493]

UTM Zone 19 (Nord)
Ordonnée	5130655.391 m
Abscisse	295363.233 m
Facteur échelle (point)	1.00011479
Facteur échelle (combiné)	1.00009371
[5130655.391,295363.233,134.493]
Coordonnées cartésiennes
X	1389246.816	± 0.003 m (95%)
Y	-4190180.681	± 0.005 m (95%)
Z	4588337.806	± 0.005 m (95%)
[1389246.816,-4190180.681,4588337.806]

Orbites et horloges utilisées: RNCan/IGS final
Données GNSS: GPS & GLONASS
Ellipsoïde GRS80 utilisée pour la transformation de (x,y,z) à (lat,lon,h)
```
* Récupérer les coordonnées dans le rapport, exemple:
	*	**[46.29858940,-71.65715354,134.493]** <---- Vos coordonnées en ITRF20
* les adapter pour les insérer dans votre base GNSS, enlever les "[]" et remplacer les  "," par un espace : **46.29858940 -71.65715354 134.493**

![itrf2etrf](/assets/images/positionnement/itrf2etrf_5.png)

> Vos coordonnées géographiques sont maintenant dans un système global au niveau international.
Chaque continent et/ou pays ont souvent un système de coordonnées local en plus, comme l'ETRF2000 en Europe ou le RGF93 en France, afin de prendre en considération les mouvements locaux.s
Si vous avez besoin d'avoir d'être convergeant avec le système de coordonnées de votre pays merci de nous faire remonter vos besoins sur le [forum](https://forum.geocommuns.fr/c/rtk-centipede/18)

* Passons à la finalisation du [Paramétrage du positionnement de votre Base RTK](param_positionnement){: .btn .btn-blue }
