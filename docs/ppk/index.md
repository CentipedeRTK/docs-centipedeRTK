---
layout: default
title: PPK
nav_order: 7
has_children: true
---

## Post Traitement d'un fichier de log Rover

Nous allons post traiter un fichier de log (rover ou base) afin de fabriquer une position corrigée

### 1. Télécharger les données de votre base RTK ou du RGP et de votre Rover

* Extraire le fichier de log de votre rover

* Se rendre dans l'onglet **logs** de votre base RTK et télécharger le .zip correspondant à la date de votre mesure avec le rover

Vous pouvez utiliser à la place de votre base les données du RGP si vous n'avez pas de bases à proximité.

* Aller sur le [site IGN](http://rgp.ign.fr/DONNEES/diffusion){:target="_blank"}
* Zoomer large sur votre zone (50km)
* Sélectionner TU (Temps Universel)
* Changer la date de début et de fin en fonction du nom de votre fichier téléchargé précédemment, et changer l'heure ```0 à 24h```
* Sélectionner GLONASS en plus de GPS (+ GALILEO si la base concernée le propose). Si un système sélectionné (ex : GALILEO) n'est pas disponible sur la base concernée, celle-ci disparaît de l'interface cartographique et n'est donc plus sélectionnable. Dans ce cas, décocher le système de positionnement.
* Échantillonnage : 5 sec.
* Version Rinex : 2.11
* Il faut ensuite sélectionner la base souhaitée sur la carte à l'aide de l'outil de sélection puis l'ajouter au panier.
* Télécharger l'archive au format ZIP une fois celle-ci disponible.

![ign](/assets/images/positionnement/ign.png)

Vous pouvez ne récupérer que le **XXXXX.20o**

> ex:**lroc3440.20o**

> [Pour en savoir plus sur les formats UBX et Rinex](https://en.wikipedia.org/wiki/RINEX){:target="_blank"}

### Conversion RINEX et Calcul de la correction

Télécharger cette version d'RTKLIB fournie par rtkexplorer: [RTKLIB Code: Windows executables](http://rtkexplorer.com/downloads/rtklib-code/){:target="_blank"}

### 3. Convertir les fichier .ubx en RINEX


* Créer un dossier et décompresser le .zip téléchargé dans votre base RTK.
* Lancer ```rtkconv.exe```
* Cocher Time start
	* Renseigner la même date que le .zip
	* changer le temps en **00:01:00**
* Cocher Time end
	* Renseigner la même date que le .zip
	* changer le temps en **23:59:00**
* Cocher Interval: **1s**
* Cocher Unit: **24h**
* Selectionner votre fichier **.ubx** issue de votre **.zip** dans **RTCM, RCV RAW or RINEX OBS**
	* le logiciel va ecrire le chemin une serie de fichier (.obs, .nav,...) dans ce même dossier
![ign](/assets/images/positionnement/rinex1.png)
* Cliquer sur **Options**
	* Choisir **Rinex ver 2.11**
	* Cocher **Scan Obs Types**, **Half Cyc Corr**, **Iono Corr**, **Time Corr**, **Leap Sec**
	* Cocher **GPS**, **GLO**, **GAL**, **BDS**
	* Cocher toutes les **Observations types**
	* Cocher **L1**, **L2/E5b**
	* **Receiver Options**: ```-TADJ=1```

![ign](/assets/images/positionnement/rinex2.png)
* Cliquer sur **OK**
* Cliquer su **Convert**

Votre fichier va être converti en fichiers RINEX

* Répéter l'opération pour les logs du rover. Vous pouvez ajuster **interval** en fonction de votre fréquence d'acquisition.
    
### 4. Post traitement: fabrication du fichier .pos

Cette étape permet de corriger les données brutes de votre rover avec un référentiel (votre base ou RGP) afin d'obtenir un nuage de point (.pos) corrigé.

Deux méthodes sont proposées:

* La première avec les fichiers récupérés 24 h après la collecte des données (positionnement précis).

* La deuxième avec ces mêmes fichiers + les fichiers de l'IGS récupérés 20 jours après la collecte des données donc un positionnement très précis (Solution combinée finale GNSS pour la solution orbitale combinée du système d'information sur la dynamique de la croûte terrestre (CDDIS)). 

####  Méthode à 24h

```
rtkpost.exe
```

* Renseigner le **Time Start** et le **Time End** : la date de votre fichier RINEX + l'heure de début **```00:01:00```**, pareil pour le end date + **```23:59:00```**. Cocher **Interval** et renseigner **1s** ou moins. **Unit** reste décoché
* Charger le fichier *.obs* de votre base (Rover)s
* Charger le fichier *.20o* de la base de référence IGN (Base Station)
* Charger les fichiers *.nav* de votre base
* Le fichier résultat aura une extension *.pos* c'est lui qui par traitement statistique donnera la position de la base RTK.
* Cliquer sur __options__
  - __Setting1__
       - *Positionning Mode* : Kinematic
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
* se rendre sur le site ftp://gdc.cddis.eosdis.nasa.gov/gnss/products/
* chercher le dossier correspondant à la date GPS et l'ouvrir
> dans notre exemple 2039
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

 Dans l'exemple ci-dessous, vous pouvez observer un maillage au mm avec **16527 points situés dans 1,5 cm2**. C'est bien mais nous allons maintenant nettoyer ce nuage de point pour ne garder que les meilleures données.
 
![rtkplot](/assets/images/positionnement/rtkplot.png)
 
## 5. Filtrer les données et calculer la position médiane.
 
 Le fichier résultat peut être exploité dans QGIS3 pour filtrer les meilleures données et calculer la position médiane.
 
 > Plus d'informations sur l'installation de ce logiciel sur cette [page](https://qgis.org/fr/site/){:target="_blank"}

### Importer le fichier .pos dans Qgis
 
* Cliquer sur *couche* > *Ajouter une couche* > *Ajouter une couche de texte délimité*
* Choisir le fichier .pos puis cliquer sur *Ouvrir*
        
![qgis](/assets/images/positionnement/calc_base_qgis_1.png)   

* Dans *Format de fichier*, sélectionner le délimiteur personnalisé *Espace*
* Fixer la valeur du *Nombre de lignes à ignorer* à 26 ou 27 (en fonction du fichier .pos généré)
* Cocher "Ignorer les champs vides"
* Cocher l'option "Entêtes en 1ere ligne", "Détecter les types de champs" et "Ignorer les champs vides"
* Définition de la géométrie: cocher "Point"
* Sélectionner le SRC 4326 (WGS 84)
* Cliquer sur *OK*
   
![qgis](/assets/images/positionnement/calc_base_qgis_2.png)

### Filtrer les données .pos

On retrouve ici les points affichés dans RTKPLOT, appliquons maintenant si besoin des filtres pour ne garder que les meilleures valeurs.

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
   
![qgis](/assets/images/positionnement/calc_base_qgis_3.png)

