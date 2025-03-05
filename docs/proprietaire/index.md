---
layout: default
title: Centipède & Matériels propriétaires
nav_order: 8
has_children: true
---

## Centipède sur Matériels propriétaires

Le réseau Centipede utilise des formats de correction RTK standards (RTCM3), il donc est possible d'utiliser cette correction sur du matériel propriétaire.
Certains matériels demandent d'avoir des trames rtcm3 supplémentaires comme le 1008, vous pouvez les rajouter facilement dans la configuration de votre base RTK en fonction de vos besoins.

En plus de la configuration de base, il vous sera surement demandé de rentrer un utilisateur et un mot de passe, voici les identifiants de connexion:

* Protocole : Ntrip v1 ou v2
* Adresse caster: **crtk.net**
* Port: **2101**
* Point de montage (nommé parfois mount point, stream, base, etc..) :
  * Choisir 'NEAR' pour une sélection automatique de la base la plus proche. Il faut que votre matériel envoie une trame GGA pour donner sa position.
  * Ou à choisir manuellement en fonction de votre géolocalisation, regarder sur la [carte des bases](https://centipede.fr/index.php/view/map/?repository=cent&project=centipede)
* Login: **centipede**
* Mot de passe: **centipede**
* Format: **RTCM3**

Vous trouverez ci-après des exemples de connexions sur différents matériels.
