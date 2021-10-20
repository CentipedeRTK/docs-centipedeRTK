---
layout: default
title: Systèmes de référence
parent: Le Reseau Centipede RTK
nav_order: 2
---

## Pense-bête

###  EPSG France métropolitaine

* **EPSG:4171** / [coordonnées géographique RGF93](https://epsg.io/4171) ellipsoïdal en degrés décimaux, 2D
  * à utiliser pour les relevés GNSS
* **EPSG:4965** / [coordonnées géographique RGF93](https://epsg.io/4965) ellipsoïdal en mètre, 3D
* **EPSG:2154** / [coordonnées projetées RGF93 / Lambert-93](https://epsg.io/2154) plane en mètre
  * à utiliser pour la conception de cartes
* **EPSG:5698** / [coordonnées projetées RGF93 / Lambert-93 + NGF-IGN69 height](https://epsg.io/5698) plane en mètre + altimétrie 
  * à utiliser pour la conception de cartes et permet une lecture altimétrique de la donnée collectée

### Transformation d’un point d’un système de coordonnées de référence à un autre

Exmple de transformation de coordonnées géographique RGF93 (EPSG:4171) vers coordonnées projetées RGF93 / Lambert-93 + NGF-IGN69 height (EPSG:5698):

* avec [Proj version >7](https://proj.org/usage/quickstart.html):
  * ```echo "45.988773737 -1.024687261 49.81495" | cs2cs EPSG:4171 +to EPSG:5698```
  * ```388588.92 6551165.15 3.04```
* avec Postgresql/postgis embarquant [Proj version >7](https://proj.org/usage/quickstart.html):
  * st_transform(st_setsrid(st_makepoint(45.988773737,-1.024687261,49.81495), 4171),5698);

[RAF18b pour la France continentale Géotiff Proj](https://cdn.proj.org/fr_ign_RAF18b.tif)

[PROJ Datumgrid CDN](https://cdn.proj.org/)

[PROJ et paramétrage des datumgrid pour l'altimétrie](https://proj.org/usage/network.html?highlight=geotiff)



## Systèmes de références

[wikipedia: Système de coordonnées (cartographie)](https://fr.wikipedia.org/wiki/Syst%C3%A8me_de_coordonn%C3%A9es_(cartographie))

Pour se localiser sur la Terre, il est nécessaire d'utiliser un système géodésique duquel découlent les coordonnées géographiques figurant sur les cartes. Celles-ci peuvent être exprimées soit sous la forme de longitude et latitude (coordonnées dites géographiques), soit en représentation cartographique plane (coordonnées dites en projection).

![geocentrique_geographique](https://lh3.googleusercontent.com/proxy/3LxBeSQRBI3vYHiICGPpVeeCsf1u0PpbBJIh_A0uMbZuQSXS_42Nect8F7-yxqkKgS_W2BTV-k9cR0A9kB_oWTBBn1QGVc5CPolYdx3xdSS-yMpA79wc-oVJiZ-74g)

[Ellipsoïde](https://geodesie.ign.fr/contenu/fichiers/ellipsoide_geodesique.pdf)

Les coordonnées géographiques sont exprimées en degrés exagésimaux (Degrés Minutes Secondes), degrés décimaux, grades ou radians et donnent la latitude et la longitude d'un lieu par rapport à un méridien.

Attention, des coordonnées géographiques n'ont aucun sens si on ne les accompagne pas des informations sur le système géodésique dans lequel elles sont exprimées.

Les différents systèmes de coordonnées utilisées en géographie sont étroitement liés aux différents systèmes de référence : 

|Systèmes de coordonnées|Systèmes de référence|
|---|---|
|cartésiennes (X, Y, Z) 	|+ Système de référence|
|géographiques (Latitude : ɸ, Longitude : ʎ, Hauteur ellipsoïdale : h)|+ Système de référence + ellipsoïde|
|planes (E, N)|+ Système de référence + ellipsoïde+ projection |

## [Réseau Géodésique Français 1993 (RGF93)](https://geodesie.ign.fr/index.php?page=rgf93)

Le Référentiel Géodésique Français 93 est le repère de référence tridimensionnel géocentrique de précision centimétrique, adapté aux techniques modernes de positionnement pour la France métropolitaine. Les liens suivants mènent à des informations destinés à l'accompagnement des utilisateurs dans la migration de leurs données vers le repère de référence défini par le nouveau décret n°2019-165 du 5 mars 2019 relatif au système national de référence de coordonnées. 

 Il matérialise sur le territoire métropolitain un repère de référence précis, adapté aux technologies modernes, et compatible avec les références mondiales. Il est tridimensionnel et géocentrique et correspond à la réalisation française de l'ETRS89 (European Terrestrial Reference System 1989). Il convient de rappeler que l'ETRS89 :

- a été adopté en 1990 par la commission EUREF de l'AIG pour l'Europe, comme système géodésique pan-européen de référence pour la collecte, l'analyse et l'archivage des données géographiques.

- coïncide avec le système mondial ITRS à l'époque 1989.0 et est fixe par rapport à la partie stable de la plaque Eurasie.

Le RGF93 est donc compatible avec le systèmes mondial ITRS et à fortiori le système usuel WGS 84.

En application des décrets 2000-1276 du 26 décembre 2000, 2006-272 du 3 avril 2006 et 2019-165 du 5 mars 2019 (et son arrêté), le RGF93 constitue la référence géographique légale. 

### Caractéristiques

Le RGF93 est un repère de référence :

* tridimensionnel géocentrique
* lié au système de référence mondial ITRS
* associé à l'ellipsoïde IAG GRS 1980
* ayant pour méridien origine le méridien international (ou méridien de Greenwich)
* ayant pour projections associées la projection Lambert-93 et les projections CC 9 Zones
* d'exactitude horizontale comprise entre 1 et 2 cm (par rapport aux systèmes mondiaux)
* d'exactitude verticale comprise entre 2 et 5 cm (par rapport aux systèmes mondiaux)
* adapté aux techniques modernes de positionnement

[Projection systèmes legaux](https://geodesie.ign.fr/contenu/fichiers/documentation/pedagogiques/TransformationsCoordonneesGeodesiques.pdf)

### [hauteurs ellipsoïdales en altitudes](https://geodesie.ign.fr/index.php?page=grilles)

Le développement rapide de l'utilisation du GNSS a suscité de nouveaux besoins en matière de systèmes de référence et de conversions de coordonnées, en particulier dans le domaine de l'altimétrie. Alors qu'en géodésie traditionnelle on sépare les déterminations planimétriques et altimétriques, le GNSS permet d'intégrer ces opérations. Il devient dès lors nécessaire de convertir les hauteurs ellipsoïdales en altitudes.

En plus de l'ellipsoïde, qui est un modèle mathématique de la Terre, la géodésie traite de surfaces de référence liées au champ de pesanteur : le géoïde, le quasi-géoïde et leurs différentes réalisations. 

Le géoïde est la surface du potentiel de pesanteur terrestre qui coïncide au mieux avec le niveau moyen de la mer.

![geoid](https://tool-online.com/cours/topographie/images/image4.jpg)

![geoid](http://geoconfluences.ens-lyon.fr/images/glossaire/geoide.jpg)

![quasi-geoid](https://geodesie.ign.fr/contenu/images/quasigeoidecarte3.jpg)


Le Service de Géodésie et de Métrologie diffuse des grilles de quasi-géoïde résultant des travaux de développement et de recherche ainsi que des surfaces de conversion d'altitudes directement utilisables pour une estimation de l'altimétrie par GNSS :

Pour la France continentale, la surface de conversion altimétrique RAF20 a été actualisée fin 2021 pour tenir compte des opérations de maintenance du repère de référence RGF93.

[RAF20 pour la France continentale (RGF93 v2b NGF-IGN69)](https://geodesie.ign.fr/contenu/fichiers/documentation/grilles/metropole/RAF20.tac)

[Ensemble des grilles de conversions altimétrique IGN](https://geodesie.ign.fr/index.php?page=grilles)





