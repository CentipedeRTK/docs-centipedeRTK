---
layout: default
title: Calcul de la position de la base
parent: Fabriquer une base RTK
nav_order: 4
---

## Calcul de la position de la base

Nous allons déterminer la position de la base le plus précisément possible.

Votre base va servir de référentiel pour vous mais aussi pour toute personne se trouvant dans sa zone d'action. Il est primordial que sa position soit juste et très précise afin de pourvoir tous travailler sur un même référentiel géographique.

### 1. Convertir les logs en fichier RINEX

* Se rendre dans l'onglet **logs** de votre base RTK et cliquer sur le crayon (```edit```) d'un **.zip** complet de 24h.

![log2rinex](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/log2rinex1.png)

* Une fenêtre s'ouvre pour vous proposer de convertir le ficheir de log en fichier RINEX compatible avec les services en ligne d'IGN pour le calcul du positionnement précis. Cliquer sur **CREATE**

![log2rinex](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/log2rinex2.png)

* Patientez pendant la création du fichier pendant env 1 min

![log2rinex](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/log2rinex3.png)

* Télécharger le fichier créé et cliquer ensuite dans la fenêtre sur [IGN](http://rgp.ign.fr/SERVICES/calcul_online.php) afin de lancer le calcul de positionnnement. Une fois la fênetre fermée (```close```) le fichier RINEX est egalement disponible dans la liste des logs avec un nom **AAAA-MM-JJ-MP.20o**, sont poids est d'environ 4 Mo.

![log2rinex](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/log2rinex4.png)

    
### 3. Post traitement IGN

Cette étape permet de corriger les données brutes de votre base RTK avec les stations de référence du [Réseau Géodésique Permanent](http://rgp.ign.fr/) afin d'obtenir une position précise corrigée.

* se rendre sur le site [calculs GNSS Réseau en ligne](http://rgp.ign.fr/SERVICES/calcul_online.php)
* Importer votre fichier **AAAA-MM-JJ-MP.20o** dans **Pivot**
* Renseigner nombre maximum 8 et eloignement maximum 1000 km
* Renseigner son adresse mail pour recevoir le rapport
* Actualiser le code avec les flêches bleu et Entrez les 4 lettres.
* Cliquer sur envoyer la demande

Le rapport de positionnement est transmit après quelques minutes.

![ign](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/ign_reseau_en_ligne1.png)


### 4. Interprétation du rapport 

* Le rapport (xxxxxx.tar.gz) est à décompresser, il sera également necesssaire de le fournir au moment de la déclaration de votre base sur le réseau Centipede.
* Le rapport contient 3 documents:
	* une aide (readme.txt) vous expliquant la structure du rapport.
	* une carte au format pdf permettant de visualiser la repartition des stations de reference ainsi que les residus de la mise en reference
	* le rapport de calcul au format texte 
* Le rapport est composé de plusieurs parties, la position de votre base se situe à la fin du document dans la zone **====== RGF93 ======**
* Il est important de regarder la partie **EXACTITUDE ESTIMEE (2*SIGMA)** car elle va vous donner la qualité du calcul, normalement vous ne devez avoir que quelques mm en E_N, E_E et environ le double en E_H.
* Noter les coordonnées de votre base dans cet ordre **Latitude Longitude Hell** afin de les copier dans votre base RTK.

![ign](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/rapport_ign1.png)


* Passons à la finalisation du Paramétrage du positionnement de votre Base RTK

