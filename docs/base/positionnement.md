---
layout: default
title: Calcul de la position de la base
parent: Fabriquer une base RTK
nav_order: 4
---

## Calcul de la position de la base

Nous allons déterminer la position de la base le plus précisément possible.

La procédure pour calculer la position va se décomposer en 5 étapes:

* Télécharger les données de votre base RTK
* Télécharger les données de référence de la station du [RGP](http://rgp.ign.fr) la plus proche de sa base.
* Dézipper un .zip des logs de votre base  et le  convertir le .ubx en RINEX avec ```rtkconv```.
* Utiliser ```rtkpost``` (comparaison du RINEX RGP et de son RINEX) pour récupérer un nuage de points corrigés  (.pos) en sortie.
* Utiliser ```Qgis``` pour  filtrer les données du .pos les plus stables et calculer la mediane des points restants pour te fournir la position précise de la base RTK.

Votre base va servir de référentiel pour vous mais aussi pour toute personne se trouvant dans sa zone d'action. Il est primordial que sa position soit juste et très précise afin de pourvoir tous travailler sur un même référentiel géographique.

Il est conseillé de refaire ce calcul sur plusieurs jour afin de vérifier que la position est bien bonne.

Il est également indispensable de refaire ce calcul tout les 6 mois afin de vérifier la position de la base.

### Télécharger les données de votre base RTK

* Se rendre dans l'onglet **logs** de votre base RTK et télécharger le dernier .zip

### Télécharger les données du RGP

* Aller sur le [site IGN](http://rgp.ign.fr/DONNEES/diffusion){:target="_blank"}
* Zoomer large sur votre zone (50km)
* Sélectionner TU (Temps Universel)
* Changer la date de début et de fin en fonction du nom de votre fichier téléchargé précédemment, et changer l'heure ```0 à 24h```
* Sélectionner GLONASS en plus de GPS (+ GALILEO si la base concernée le propose). Si un système sélectionné (ex : GALILEO) n'est pas disponible sur la base concernée, celle-ci disparaît de l'interface cartographique et n'est donc plus sélectionnable. Dans ce cas, décocher le système de positionnement.
* Échantillonnage : 5 sec.
* Version Rinex : 2.11
* Il faut ensuite sélectionner la base souhaitée sur la carte à l'aide de l'outil de sélection puis l'ajouter au panier.
* Télécharger l'archive au format ZIP une fois celle-ci disponible.

![ign](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/ign.png)

Vous pouvez ne récupérer que le **XXXXX.20o**

> ex:**lroc3440.20o**

> [Pour en savoir plus sur les formats UBX et Rinex](https://en.wikipedia.org/wiki/RINEX){:target="_blank"}

### Conversion RINEX et Calcul de la correction

Télécharger cette version d'RTKLIB fournie par rtkexplorer: [RTKLIB Code: Windows executables](http://rtkexplorer.com/downloads/rtklib-code/){:target="_blank"}

#### Convertir le fichier .ubx en RINEX


* Créer un dossier et décompresser le .zip téléchargé dans votre base RTK.
* Lancer ```rtkconv.exe```
* Cocher Time start
	* Renseigner la même date que le .zip
	* changer le temps en **00:01:00**
* Cocher Time end
	* Renseigner la même date que le .zip
	* changer le temps en **23:59:00**
* Cocher Interval: **5s**
* Cocher Unit: **24h**
* Selectionner votre fichier **.ubx** issue de votre **.zip** dans **RTCM, RCV RAW or RINEX OBS**
	* le logiciel va ecrire le chemin une serie de fichier (.obs, .nav,...) dans ce même dossier
![ign](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/rinex1.png)
* Cliquer sur **Options**
	* Choisir **Rinex ver 2.11**
	* Cocher **Scan Obs Types**, **Half Cyc Corr**, **Iono Corr**, **Time Corr**, **Leap Sec**
	* Cocher **GPS**, **GLO**, **GAL**, **BDS**
	* Cocher toutes les **Observations types**
	* Cocher **L1**, **L2/E5b**
![ign](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/rinex2.png)
* Cliquer sur **OK**
* Cliquer su **Convert**

Votre fichier va être convertis en fichiers RINEX
    
#### Post traitement: fabrication du fichier .pos

Cette étape permet de corriger les données brutes de votre base avec le référentiel du RGP afin d'obtenir un nuage de point (.pos) corrigé.

Deux méthodes sont proposées:

* La première avec les fichiers récupérés 24 h après la collecte des données (positionnement précis).

* La deuxième avec ces mêmes fichiers + les fichiers de l'IGS récupérés 20 jours après la collecte des données donc un positionnement très précis (Solution combinée finale GNSS pour la solution orbitale combinée du système d'information sur la dynamique de la croûte terrestre (CDDIS)). 

####  Méthode à 24h

```
rtkpost.exe
```

* Renseigner le **Time Start** et le **Time End** : la date de votre fichier RINEX + l'heure de début **```00:01:00```**, pareil pour le end date + **```23:59:00```**. Cocher **Interval** et renseigner **5s**. **Unit** reste decoché
* Charger le fichier *.obs* de votre base (Rover)s
* Charger le fichier *.20o* de la base de référence IGN (Base Station)
* Charger les fichiers *.nav* de votre base
* Le fichier résultat aura une extension *.pos* c'est lui qui par traitement statistique donnera la position de la base RTK.
* Cliquer sur __options__
  - __Setting1__
       - *Positionning Mode* : Static 
       - *Fréquencies* : L1 + L2 
       - *Elevation mask* : 15° par défaut
       - *Ionosphere correction* : Broadcast  
            > Correction de l'effet de l'ionosphère. Il est conseillé d'utiliser le mode Broadcast (modèle utilisé en temps réel et disponible dans le fichier de navigation) ou Dual-Frequancy (si des mesures ou plusieurs fréquences sont disponibles).
            > Source : IGN cf. http://cours-fad-public.ensg.eu/mod/imscp/view.php?id=450 (Analyse GNSS sous RTKLIB, Fenêtre options)
       - *Troposphere correction* : Saastamoinen 
            > Correction de l'effet de la troposphère. Il est conseillé d'utiliser le mode Saastamoinen en positionnement utilisant des mesures de code ou en positionnement relatif avec de courtes lignes de base et de faibles dénivelés ; dans le cas contraire, on peut utiliser les modes Estimate ZTD ou Estimate ZTD+Grad (estimation de paramètres troposphériques).
            > Source : IGN cf. http://cours-fad-public.ensg.eu/mod/imscp/view.php?id=450 (Analyse GNSS sous RTKLIB, Fenêtre options)
       - Cocher Galileo si votre fichier RGP en contient, sinon cocher juste GPS et GLONASS.
       - Pour les autres options, laisser les valeurs par défaut 
  - __Setting2__
       - *Integer Ambiguity Res* : Fix and Hold
            > Stratégie de résolution des ambiguïtés. Les stratégies Continuous et Fix ans Hold sont les plus concluantes.
            > Source : IGN cf. http://cours-fad-public.ensg.eu/mod/imscp/view.php?id=450 (Analyse GNSS sous RTKLIB, Fenêtre options)
            >
            > (cf. aussi RTKLIB explorer qui privilégie le Continuous https://rtklibexplorer.wordpress.com/2016/04/05/rtklib-thoughts-on-fix-and-hold/
            >   https://rtklibexplorer.wordpress.com/2016/05/02/another-kayak-data-set-fix-and-hold-fails-again/   http://rtkexplorer.com/improving-rtklib-solution-ar-lock-count-and-elevation-mask/ ) 
       - Toutes les autres options doivent rester par défaut
  - __Output__ : laisser les valeurs par défaut 
  - __Statistics__ : laisser les valeurs par défaut 
  - __Positions__ 
       - Changer la valeur de *Base station* : Rinex Header Position 
  - __Files__ : laisser les valeurs par défaut 
  - __Misc__ : laisser les valeurs par défaut
 
> Penser à sauvegarder tous ces paramétrages dans un fichier .conf (option Save)

#### Méthode après 20 jours

* Récupérer la date GPS de la collecte de données: http://navigationservices.agi.com/GNSSWeb/
> par exemple le 5 février 2019 correspond au 2039:2
* se rendre sur le site ftp://cddis.nasa.gov/gnss/products/
* chercher le dossier correspondant à la date GPS et l'ouvrir
> dans notre exemple 2032
* Chercher le Fichier :igs"dategps+jour".sp3.Z , télécharger le et décompressez-le
> dans l'exemple: Fichier :igs20392.sp3.Z > igs20392.sp3
* Ouvrir RTKPOST
```
./RTKPOST_Qt-x86_64.exe
```
## Positionnement

* Charger le fichier *.obs* de la base à corriger (Rover)
* Charger le fichier *.19o* de la base de référence (Base Station)
* Charger les fichiers *.nav*, *.hnav*, *.gnav*, *igs20392.sp3* de la base à corriger
* Renseigner le *Time Start* et le *Time End* (la plage horaire de notre période de logging).
* Reprendre la procédure décrite précédemment (2.1 __Méthode à 24h__) au niveau de * Cliquer sur __options__

  
### RTKPLOT

 
 Pour cartographier le nuage de points obtenu précédemment (fichier avec extension pos) vous pouvez cliquer sur l'onglet en as à gauche **```Plot```**
 
 Il est possible à ce stade-là de filtrer les données afin de ne conserver que les points pour lesquels la valeur de Q est égale à 1 (ie. mode FIX).

 Dans l'exemple ci dessous vous pouvez observer un maillage au mm avec **16527 points situés dans 1,5 cm2**. C'est bien mais nous allons maintenant nettoyer ce nuage de point pour ne garder que les meilleures données et calculer la médiane. Le résultat nous donnera la position définitive de la base. 
 
![rtkplot](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/rtkplot.png)
 
## QGIS
 
 Le fichier résultat peut être exploité dans QGIS3 pour filtrer les meilleurs données et calculer la position mediane.
 
 > Plus d'informations sur l'installation de ce logiciel sur cette [page](https://qgis.org/fr/site/){:target="_blank"}

### Importer le fichier .pos dans Qgis
 
* Cliquer sur *couche* > *Ajouter une couche* > *Ajouter une couche de texte délimité*
* Choisir le fichier .pos puis cliquer sur *Ouvrir*
        
![qgis](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/calc_base_qgis_1.png)   

* Dans *Format de fichier*, sélectionner le délimiteur personnalisé *Espace*
* Fixer la valeur du *Nombre de lignes à ignorer* à 26 ou 27 (en fonction du fichier .pos généré)
* Cocher "Ignorer les champs vides"
* Cocher l'option "Entêtes en 1ere ligne", "Détecter les types de champs" et "Ignorer les champs vides"
* Définition de la géométrie: cocher "Point"
* Sélectionner le SRC 4326 (WGS 84)
* Cliquer sur *OK*
   
![qgis](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/calc_base_qgis_2.png)

### Filtrer les données .pos

On retrouve ici les points affichés dans RTKPLOT, appliquons maintenant des filtres pour ne garder que les meilleures valeurs.

* Faire un clic droit sur la couche puis *Filtrer...*
* Ajouter le filtre suivant :

```
"Q"=1 AND
"ratio" >= 50 AND
"sdn(m)" <= 0.0002 AND
"sde(m)" <= 0.0002 AND
"sdu(m)" <= 0.0003
  ```
* Cliquer sur *OK*
   
![qgis](https://jancelin.github.io/docs-centipedeRTK/assets/images/positionnement/calc_base_qgis_3.png)

### Statistiques sur les données filtrés

* Cliquer sur *vecteur* > *Outils d'analyse* > *Statistiques basiques pour les champs*
   * **Couche vectorielle en entrée** : choisir le fichier pos
   * **Champ pour le calcul des statistiques** : latitude
   * Cliquer sur **Exécuter**
   * Récupérer la valeur **MEDIAN** ex: 46.164793681
* Répéter l'opération avec les champs longitude et hauteur.
* Voici un exemple de coordonnées récupérées **```46.164793681 -0.948418958 63.0686```**, ceci est la position précise de votre base RTK

* Passons à la finalisation du Paramétrage du positionnement  de votre Base RTK

