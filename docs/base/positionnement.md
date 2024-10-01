---
layout: default
title: Calcul de la position de la base
parent: Fabriquer une base RTK
nav_order: 4
has_children: true
---

## Calcul de la position de la base

Nous allons maintenant déterminer la position de la base le plus précisément possible.

Votre base va servir de référentiel pour vous, mais aussi pour toute personne se trouvant dans sa zone d'action. Il est primordial que sa position soit juste et très précise afin de pouvoir tous travailler sur un même référentiel géographique, peux importe sur quelle base du réseau nous sommes connecté.

Pour cela nous allons transformer un fichier de log de 24h de données satellitaires reçues par votre Base GNSS en un fichier [RINEX](http://rgp.ign.fr/DONNEES/format/rinex.php), puis nous allons le transférer à un service en ligne de calcul de positionnement afin d'optenir les coordonnées précises en latitude, longitude et élévation de votre base RTK.

![RGF93_v2b](https://api.maptiler.com/maps/streets/static/auto/265x215@2x.png?key=g0y01TmlRNajMPkic9lG&latlng=1&fill=rgba(255,0,0,0.15)&stroke=red&width=2&path=41.15,-9.86|51.56,-9.86|51.56,10.38|41.15,10.38|41.15,-9.86])

![ETRF2000](https://api.maptiler.com/maps/streets/static/auto/265x215@2x.png?key=g0y01TmlRNajMPkic9lG&latlng=1&fill=rgba(255,0,0,0.15)&stroke=red&width=2&path=32.88,-16.1|84.73,-16.1|84.73,40.18|32.88,40.18|32.88,-16.1)

![ITRF20](https://api.maptiler.com/maps/streets/static/auto/265x215@2x.png?key=g0y01TmlRNajMPkic9lG&latlng=1&fill=rgba(255,0,0,0.15)&stroke=red&width=2&path=-85,-179.9|85,-179.9|85,0|85,179.9|-85,179.9|-85,0|-85,-179.9)
