---
layout: default
title: Calcul de la position de la base
parent: Fabriquer une base RTK
nav_order: 4
---

## Calcul de la position de la base

Nous allons déterminer la position de la base le plus précisément possible.

Votre base va servir de référentiel pour vous, mais aussi pour toute personne se trouvant dans sa zone d'action. Il est primordial que sa position soit juste et très précise afin de pouvoir tous travailler sur un même référentiel géographique.

Pour cela nous allons transformer un fichier de log de 24h de données satellitaires reçues par votre récepteur en un fichier [RINEX](http://rgp.ign.fr/DONNEES/format/rinex.php), puis nous allons le transférer à un service en ligne de calcul de positionnement afin d'avoir les coordonnées précises en latitude, longitude et élévation de votre base RTK.

### 1. Convertir un fichier de log en fichier RINEX

* Se rendre dans l'onglet <span style="color:#007BFF">**LOGS**</span> de votre base RTK et cliquer sur le crayon (```edit```) d'un **.zip** complet de 24h.

![log2rinex](/assets/images/positionnement/log2rinex1.png)

* Une fenêtre s'ouvre pour vous proposer de convertir le fichier de log en fichier RINEX.
* Si vous êtes en France: Choissisez le préréglage **IGN**, qui est compatible avec les services en ligne d'IGN pour le calcul du positionnement précis. Cliquer sur **Create Rinex File**
* Si vous êtes hors de France: **Utiliser un Fichier de logs datant de plus de 15 jours** puis choissisez le préréglage **NRCAN**, qui est compatible avec les services en ligne d'NRCAN pour le calcul du positionnement précis. Cliquer sur **Create Rinex File**

![log2rinex](/assets/images/positionnement/log2rinex2.png)

* Patientez lors de la création du fichier RINEX cela peut durer plusieurs minutes.

![log2rinex](/assets/images/positionnement/log2rinex3.gif)

* Téléchargez le fichier créé. Une fois la fenêtre fermée (```close```) le fichier RINEX est également disponible dans la liste des logs avec un nom **AAAA-MM-JJ-nom_de_votre_point_de_montage_IGN**, son poids est d'environ 4 Mo.

![log2rinex](/assets/images/positionnement/log2rinex4.png)

    
### 3. Post traitement 

### 3.1 En FRANCE

Cette étape permet de corriger les données brutes de votre base RTK avec les stations de référence du [Réseau Géodésique Permanent](http://rgp.ign.fr/) afin d'obtenir une position précise corrigée.

* se rendre sur le site Ign [calculs GNSS Réseau en ligne](http://rgp.ign.fr/SERVICES/calcul_online.php)
* Dans la section "Fichiers d'observation au format RINEX" Importer votre fichier **AAAA-MM-JJ-MP.20o** dans **Pivot**
* Dans la section "Stations GNSS Permanentes à intégrer" Renseigner nombre maximum 8 et éloignement maximum 1000 km
* Renseigner son adresse mail pour recevoir le rapport
* Actualiser le code avec les flèches bleues et entrez les 4 lettres.
* Cliquer sur envoyer la demande

Le rapport de positionnement est transmis après quelques minutes sur votre boite mail.

![ign](/assets/images/positionnement/ign_reseau_en_ligne1.png)

### 3.2 Hors FRANCE

**Pensez à bien utiliser un RINEX datant de plus de 15 jours afin d'avoir un positionnement précis.**
Cette étape permet de corriger les données brutes de votre base RTK avec la méthode PPP [NRCAN](https://webapp.csrs-scrs.nrcan-rncan.gc.ca/geod/tools-outils/ppp.php)

* se rendre sur le site [NRCAN](https://webapp.csrs-scrs.nrcan-rncan.gc.ca/geod/tools-outils/ppp.php) 

> Documentation en cours d'écriture, pour toute question rendez-vous sur le [forum](https://forum.geocommuns.fr/t/coordinates-transformation-hors-zone-rgf93/827/30) et/ou le groupe de discussion [télégram](https://t.me/Centipede_RTK)

* Ouvrir une Session en renseignant votre identité
* Choisir le mode de traitement **statique** et **ITRF**
* Importer son Fichier d'observavtion RINEX généré précédement.
* Cliquer sur **Soumettre à PPP**
  
Les liens de téléchargement sont transmis après quelques minutes sur votre boite mail:

* Cliquer sur **summary** ou **sommaire** pour l'afficher
* Cliquer sur full_output.zip pour le télécharger

Les 2 documents (summary et full_output.zip) + le rinex créé précédement vous seront demandés au moment de la déclaration ,pensez à conserver l'ensemble des informations.

### 4. Interprétation du rapport 

###  4.1 En FRANCE

* Le rapport (xxxxxx.tar.gz) est à décompresser, il sera également nécessaire de le fournir au moment de la déclaration de votre base sur le réseau Centipede.
* Le rapport contient 3 documents:
	* une aide (readme.txt) vous expliquant la structure du rapport.
	* une carte au format pdf permettant de visualiser la répartition des stations de référence ainsi que les résidus de la mise en référence
	* le rapport de calcul au format texte 
* Le rapport est composé de plusieurs parties, la position de votre base se situe à la fin du document dans la zone **====== RGF93 ======**
* Il est important de regarder la partie **EXACTITUDE ESTIMÉE (2*SIGMA)** car elle va vous donner la qualité du calcul. **Vos valeurs doivent être inférieures à 8mm en E_N, E_E et inférieures à 16mm en E_H.**
* Noter les coordonnées de votre base dans cet ordre **Latitude Longitude Hell** afin de les copier dans votre base RTK.

![ign](/assets/images/positionnement/rapport_ign1.png)

###  4.2 hors FRANCE

### 4.2.1 Pays ayant un système de coordonnées

Exemple pour les pays Européen, à adapter en fonction de votre situation  géographique. 

> Documentation en cours d'écriture, pour toute question rendez-vous sur le [forum](https://forum.geocommuns.fr/t/coordinates-transformation-hors-zone-rgf93/827/30) et/ou le groupe de discussion [télégram](https://t.me/Centipede_RTK)

Copier le **summary** / **sommaire** reçu par NRCAN
> Exemple d'un fichier:

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
Se rendre sur [https://gunicsba.github.io/nrcan_etrf_en.html](https://gunicsba.github.io/nrcan_etrf_en.html) et suivre la méthode afin de calculer votre position en ETRF ou autre. Sur cette page se trouve aussi des outils en ligne pour la conversion des coordonnées dans un système local.

### 4.2.2 Pays sans système de coordonnées

Les coordonées sont à garder en ITRF, dans le **summary** / **sommaire** reçu par NRCAN récupérer les coordonnées décimales et remplacer les virgules par un espace afin de pouvoir les copier dans votre base RTK.
> Exemple d'un fichier:

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

> Coordonnées à retenir: **46.16483353,-0.94853206,65.270**



* Passons à la finalisation du [Paramétrage du positionnement de votre Base RTK](param_positionnement){: .btn .btn-blue }

