---
layout: default
title: Analyse qualité réception GNSS
nav_order: 7
has_children: true
---

## Conversion Rinex et Analyse qualité réception GNSS

* Télécharger [RTKLIB](http://rtkexplorer.com/downloads/rtklib-code/)
* Décompresser le zip
* Double-clique sur **rtklaunch.exe**

![rtklaunch](https://jancelin.github.io/docs-centipedeRTK/assets/images/rtkconv/rtklaunch.jpg)

* appuyer sur le second bouton **RTKCONV**

![rtkconv](https://jancelin.github.io/docs-centipedeRTK/assets/images/rtkconv/rtkconv.jpg)

* Sur la première grande case, on indique le nom de son fichier avec le bouton ```...``` à droite.
* Cliquer sur **Options**
	* Choisir **Rinex ver 2.11**
	* Indiquer le nom de votre base dans **Marker Name**
	* Cocher **GPS**, **GLO**, **GAL**, **BDS**
	* Cocher toutes les **Observations types**
	* Cocher **L1**, **L2/E5b**
	* Rajouter dans **Receiver Options** ```-TADJ=1``` pour avoir un rinex en seconde ronde.
  * Cliquer sur **OK**
 
![rtkconv_option](https://jancelin.github.io/docs-centipedeRTK/assets/images/rtkconv/rtkconv_option.png) 

* Cliquer sur **Convert** , la conversion peut prendre un certain temps...
* Quand c'est fini, appuyer sur le bouton **Plot...** à bas à gauche.
* **RTKPlot** s'ouvre, ça peut aussi prendre du temps...

![rtplot](https://jancelin.github.io/docs-centipedeRTK/assets/images/rtkconv/rtkplot.jpg)

* La première fois, il faut appuyer sur le petit engrenage en haut à droite pour modifier les options et vérifier en bas à gauche dans **Satellite System** qu'ils sont tous cochés.
* Appuyer sur **OK**

![rtplot_option](https://jancelin.github.io/docs-centipedeRTK/assets/images/rtkconv/rtkplot_option.jpg)

* Dans la liste déroulante, on choisit **SNR/MP-EL**, attendre...

![rtplot](https://jancelin.github.io/docs-centipedeRTK/assets/images/rtkconv/rtkplot1.jpg)

![rtplot](https://jancelin.github.io/docs-centipedeRTK/assets/images/rtkconv/rtkplot2.jpg)

* Avec la liste défilante de droite, on peut sélection une constellation (G : GPS, R : Glonass, E : Galileo, C : Beidou) voir un satellite en particulier. On voit encore plus s'il y a des signaux qui sortent du lot, le tracé doit être le plus proche du centre

![rtplot](https://jancelin.github.io/docs-centipedeRTK/assets/images/rtkconv/rtkplot3.jpg)

* L'option Skyplot est intéressante pour voir les masques

![skyplot](https://jancelin.github.io/docs-centipedeRTK/assets/images/rtkconv/skyplot.jpg)

* Exemple d'interprétation sur la base MNE1:
  * Sur MNE1, on voit un décrochement du signal à certains angles : les satellites sont masqués mais les signaux sont réfléchis (et atténués) sur les montagnes en face.
  * Par contre, le multipath reste bon. Pas de réflexion sur une surface proche.

![rtplot](https://jancelin.github.io/docs-centipedeRTK/assets/images/rtkconv/rtkplot_MNE1.jpg)




