---
layout: default
title: Système de référence
parent: Le Reseau Centipede RTK
nav_order: 4
---

## Systèmes de références

https://fr.wikipedia.org/wiki/Syst%C3%A8me_de_coordonn%C3%A9es_(cartographie)

Pour se localiser sur la Terre, il est nécessaire d'utiliser un système géodésique duquel découlent les coordonnées géographiques figurant sur les cartes. Celles-ci peuvent être exprimées soit sous la forme de longitude et latitude (coordonnées dites géographiques), soit en représentation cartographique plane (coordonnées dites en projection).

![geocentrique_geographique](https://jancelin.github.io/docs-centipedeRTK/assets/images/rtkconv/systemetellipsoide.png)

Les coordonnées géographiques sont exprimées en degrés sexagésimaux (Degrés Minutes Secondes), degrés décimaux, grades ou radians et donnent la latitude et la longitude d'un lieu par rapport à un méridien.

Attention, des coordonnées géographiques n'ont aucun sens si on ne les accompagne pas des informations sur le système géodésique dans lequel elles sont exprimées.

Les différents systèmes de coordonnées utilisées en géographie sont étroitement liés aux différents systèmes de référence : 

|Systèmes de coordonnées|Systèmes de référence|
|---|---|
|cartésiennes (X, Y, Z) 	|+ Système de référence|
|géographiques (Latitude : ɸ, Longitude : ʎ, Hauteur ellipsoïdale : h)|+ Système de référence + ellipsoïde|
|planes (E, N)|+ Système de référence + ellipsoïde+ projection |

## EPSG

EPSG:7019 / [Ellipsoîde GRS 1980](https://epsg.io/7019-ellipsoid)
EPSG:4171 / [coordonnées géographique RGF93](https://epsg.io/4171) en degrée
EPSG:2154 / [coordonnées projetées RGF93 / Lambert-93 -- France](https://epsg.io/2154)
EPSG:5698 / [RGF93 / Lambert-93 + NGF-IGN69 height](https://epsg.io/5698)

[Projection systèmes legaux](https://geodesie.ign.fr/contenu/fichiers/documentation/pedagogiques/TransformationsCoordonneesGeodesiques.pdf
