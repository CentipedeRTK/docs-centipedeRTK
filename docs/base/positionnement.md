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
