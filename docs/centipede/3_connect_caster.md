---
layout: default
title: Connexion au caster
parent: Le Reseau Centipede RTK
nav_order: 3
---

* Protocole : Ntrip v1 ou v2
* Adresse caster : crtk.net
* Port : 2101
* Point de montage, au choix : 
  * **NEAR** : Sélection automatique de la base opérationnelle la plus proche de vous. Le flux de "correction" est complet (MSM7).
  * **NEAR4** : Même principe que NEAR mais avec un débit plus faible (MSM4) pour s'accomoder des matériels anciens ou bridés (John Deere, CHCNAV,...)
  * Le nom de la base que vous souhaitez, à choisir en fonction de votre situation, regarder sur [https://map-centipede-rtk.org](https://map.centipede-rtk.org/)
* Fonctionne sans identifiants, ou avec :
    * Login : centipede
    * Mot de passe : centipede
* Format: RTCM3

> Limite de connexion: 1 matériel/ntrip client par IP
