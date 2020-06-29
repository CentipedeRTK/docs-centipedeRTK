---
layout: default
title: Calcul de la position de la base
parent: Fabriquer une base RTK
nav_order: 4
---

## Calcul de la position de la base

Nous allons déterminer la position de la base le plus précisément possible.

Votre base va servir de référentiel pour vous mais aussi pour toute personne se trouvant dans sa zone d'action. Il est primordial que sa position soit juste et très précise afin de pourvoir tous travailler sur un même référentiel géographique.

### 1. Télécharger les données de votre base RTK

* Créer un dossier **RINEX** sur votre PC 
* Se rendre dans l'onglet **logs** de votre base RTK et télécharger un **.zip** complet de 24h.
* Décompresser le **.zip** dans le dossier **RINEX**
* C'est le fichier **AAAA-MM-JJ_00-00-00_GNSS-1.ubx** (environ 400 Mo) qui va nous servir pour le calcul de la position

### 2. Convertir le fichier .ubx en RINEX

Télécharger cette version d'RTKLIB fournie par rtkexplorer: [RTKLIB Code: Windows executables](http://rtkexplorer.com/downloads/rtklib-code/){:target="_blank"}

* Lancer ```rtkconv.exe```
* Cocher Time start
	* Renseigner la même date, au format AAAA/MM/JJ, que le fichier **AAAA-MM-JJ_00-00-00_GNSS-1.ubx**
	* changer le temps en **00:00:00**
* Cocher Time end
	* Renseigner la même date, au format AAAA/MM/JJ, que le fichier **AAAA-MM-JJ_00-00-00_GNSS-1.ubx**
	* changer le temps en **23:59:00**
* Cocher Interval: **30s**
* Selectionner votre fichier **.ubx** issue de votre **.zip** dans **RTCM, RCV RAW or RINEX OBS**
* Selectionner le **format u-blox**
* laisser cocher seulement la première ligne: AAAA-MM-JJ_00-00-00_GNSS-1**.obs**
* Modifier l'extension du fichier en **.20o** (AAAA-MM-JJ_00-00-00_GNSS-1**.obs** > AAAA-MM-JJ_00-00-00_GNSS-1**.20o**)

![rinex](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/rinex1.png)

* Cliquer sur **Options**
	* Choisir **Rinex ver 2.11**
	* Dans **Marker Name** rajouter le Nom (Mount Point) de votre Base RTK
	* Cocher **GPS**
	* Cocher toutes les **Observations types**
	* Cocher **L1**, **L2/E5b**
	* Dans **Receiver Options** rajouter ```-TADJ=1```
	* En option, si vous avez le modèle IGS de votre antenne et les informations de qualibrations il est fortement conseillé de les rajouter.

![rinex](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/rinex2.png)

* Cliquer sur **OK**
* Cliquer su **Convert**

Votre fichier **.ubx** va être convertis en fichiers RINEX
    
### 3. Post traitement IGN

Cette étape permet de corriger les données brutes de votre base RTK avec les stations de référence du [Réseau Géodésique Permanent](http://rgp.ign.fr/) afin d'obtenir une position corrigée.

* se rendre sur le site [calculs GNSS Réseau en ligne](http://rgp.ign.fr/SERVICES/calcul_online.php)
* Importer votre fichier **AAAA-MM-JJ_00-00-00_GNSS-1.20o** dans **Pivot**
* Garder les paramètres par défaut ( nombre maximum 8 et eloignement maximum 1000 km)
* Renseigner son adresse mail pour recevoir le rapport
* Actualiser le code avec les flêches bleu et Entrez les 4 lettres.
* Cliquer sur envoyer la demande

Le rapport de positionnement est transmit après quelques minutes.

![ign](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/ign_reseau_en_ligne.png)


### 4. Interprétation du rapport 

* Le rapport (xxxxxx.tar.gz) est à décompresser dans dans votre répertoire RINEX, il sera également necesssaire de le fournir au moment de la déclaration de votre base sur le réseau Centipede.
* Le rapport contient 3 documents:
	* une aide (readme.txt) vous expliquant la structure du rapport.
	* une carte au format pdf permettant de visualiser la repartition des stations de reference ainsi que les residus de la mise en reference
	* le rapport de calcul au format texte 
* Le rapport est composé de plusieurs parties, la position de votre base se situe à la fin du document dans la zone **====== RGF93 ======**
* Il est important de regarder la partie **EXACTITUDE ESTIMEE (2*SIGMA)** car elle va vous donner la qualité du calcul, normalement vous ne devez avaoir que quelques mm en E_N, E_E et environ le double en E_H.
* Noter les coordonnées de votre base dans cet ordre **Latitude Longitude Hell** afin de les copier dans votre base RTK

![ign](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/rapport_ign.png)


* Passons à la finalisation du Paramétrage du positionnement de votre Base RTK

