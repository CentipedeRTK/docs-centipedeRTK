---
layout: default
title: Calcul de la position de la base
parent: Fabriquer une base RTK
nav_order: 4
---

## Calcul de la position de la base

Nous allons déterminer la position de la base le plus précisément possible.

Votre base va servir de référentiel pour vous, mais aussi pour toute personne se trouvant dans sa zone d'action. Il est primordial que sa position soit juste et très précise afin de pouvoir tous travailler sur un même référentiel géographique.

Pour cela nous allons transformer un fichier de log de 24h de données satellitaires reçues par votre récepteur en un fichier [RINEX](http://rgp.ign.fr/DONNEES/format/rinex.php), puis nous allons le transférer au service [IGN Calculs GNSS réseau en ligne](http://rgp.ign.fr/SERVICES/calcul_online.php) afin d'avoir les coordonnées précises en latitude, longitude et élévation de votre base RTK

### 1. Convertir un fichier de log en fichier RINEX

* Se rendre dans l'onglet <span style="color:#007BFF">**LOGS**</span> de votre base RTK et cliquer sur le crayon (```edit```) d'un **.zip** complet de 24h.

![log2rinex](/assets/images/positionnement/log2rinex1.png)

* Une fenêtre s'ouvre pour vous proposer de convertir le fichier de log en fichier RINEX compatible avec les services en ligne d'IGN pour le calcul du positionnement précis. Cliquer sur **Create**

![log2rinex](/assets/images/positionnement/log2rinex2.png)

* Patientez lors de la création du fichier RINEX cela peut durer plusieurs minutes.

![log2rinex](/assets/images/positionnement/log2rinex3.png)

* Téléchargez le fichier créé. Une fois la fenêtre fermée (```close```) le fichier RINEX est également disponible dans la liste des logs avec un nom **AAAA-MM-JJ-MP.20o**, son poids est d'environ 4 Mo.

![log2rinex](/assets/images/positionnement/log2rinex4.png)

    
### 3. Post traitement IGN

Cette étape permet de corriger les données brutes de votre base RTK avec les stations de référence du [Réseau Géodésique Permanent](http://rgp.ign.fr/) ou [NRCAN](https://webapp.csrs-scrs.nrcan-rncan.gc.ca/geod/account-compte/login.php)si vous êtes hors France ou pays frontaliers, afin d'obtenir une position précise corrigée.

* se rendre sur le site [calculs GNSS Réseau en ligne](http://rgp.ign.fr/SERVICES/calcul_online.php) ou [NRCAN](https://webapp.csrs-scrs.nrcan-rncan.gc.ca/geod/account-compte/login.php) si vous êtes hors de France (Documentation en cours d'écriture...)
* Dans la section "Fichiers d'observation au format RINEX" Importer votre fichier **AAAA-MM-JJ-MP.20o** dans **Pivot**
* Dans la section "Stations GNSS Permanentes à intégrer" Renseigner nombre maximum 8 et éloignement maximum 1000 km
* Renseigner son adresse mail pour recevoir le rapport
* Actualiser le code avec les flèches bleues et entrez les 4 lettres.
* Cliquer sur envoyer la demande

Le rapport de positionnement est transmis après quelques minutes sur votre boite mail.

![ign](/assets/images/positionnement/ign_reseau_en_ligne1.png)


### 4. Interprétation du rapport 

* Le rapport (xxxxxx.tar.gz) est à décompresser, il sera également nécessaire de le fournir au moment de la déclaration de votre base sur le réseau Centipede.
* Le rapport contient 3 documents:
	* une aide (readme.txt) vous expliquant la structure du rapport.
	* une carte au format pdf permettant de visualiser la répartition des stations de référence ainsi que les résidus de la mise en référence
	* le rapport de calcul au format texte 
* Le rapport est composé de plusieurs parties, la position de votre base se situe à la fin du document dans la zone **====== RGF93 ======**
* Il est important de regarder la partie **EXACTITUDE ESTIMÉE (2*SIGMA)** car elle va vous donner la qualité du calcul. **Vos valeurs doivent être inférieures à 8mm en E_N, E_E et inférieures à 16mm en E_H.**
* Noter les coordonnées de votre base dans cet ordre **Latitude Longitude Hell** afin de les copier dans votre base RTK.

![ign](/assets/images/positionnement/rapport_ign1.png)


* Passons à la finalisation du [Paramétrage du positionnement de votre Base RTK](param_positionnement){: .btn }

