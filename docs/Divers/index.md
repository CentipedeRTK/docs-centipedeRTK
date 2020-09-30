---
layout: default
title: Questions diverses
nav_order: 11
has_children: true
---

# Questions diverses

## Matériel Propriétaire

- [x] Comment adapter les systèmes d'autoguidage de marque propriétaire avec des outils libres pour utiliser le réseau Centipède ?
- [x] Est-il possible de rendre compatible des équipements existants d'agriculteur (Trimble, Raven ...) avec la correction Centipède ?

[Centipède sur Matériels propriétaires](../proprietaire)

- [ ] Utilisation/configuration de Rover pour piqueter des essais avec nos smartphones. (A ce jour nous avons un R2 de chez trimble , peut-on le rendre compatible Centipède ? )

**Avoir le R2 pendant la formation pour essayer**

- [ ] Quels seraient les différents points de blocage à l'utilisation de Centipède avec du matériel propriétaire et comment les lever ?


## Autoguidage Agri

- [ ] Pour conseiller les agriculteurs voulant faire leur système d'autoguidage, quels sont les prérequis ? 

[getting started](https://agopengps.discourse.group/c/operations/13)

[hardware AGopenGps](https://agopengps.discourse.group/c/hardware/7)

## Drone volant

- [ ] Drones RTK ou non, leur fonctionnement propriétaire et la possible utilisation avec le réseau Centipède.
- [ ] Comment pourrait-on utiliser le réseau Centipède pour traiter des images provenant de capteur embarqué par drone ?
- [ ] Aujourd'hui nous faisons de la photogrammétrie avec des drones DJI (non RTK), est il possible de rendre nos drônes compatibles Centipède ou de corriger les coordonnées des photos en post traitement ?

[Post Traitement d’un fichier de log Rover](../ppk)

https://escadrone.com/fonctionnement-phantom-4-rtk-ppk/

https://dronesurvey.asia/2019/12/04/teodrone-teokit-for-phantom4/



## Radio

- [ ] Comment exploiter le réseau Centipède avec des matériels équipés de communication radio ?

[Serial service #104](https://github.com/Stefal/rtkbase/pull/104)

![radio_rtkbase](https://user-images.githubusercontent.com/6421175/92691911-aaac5300-f343-11ea-913a-06bb4e061846.jpg)

## Paramétrage RTK

- [ ] Paramétrage d'un rover. En résumé : Il y a beaucoup de paramètres à régler dans RTKGPS+ (ou dans d'autres App proprio) J'aimerai bien ne plus bidouiller sans comprendre ce que je fais !

[rtknavi.conf](https://github.com/jancelin/docs-centipedeRTK/blob/master/assets/param_rtklib/RTKlib_windows.conf)

## Qualité

- [x] Quels protocoles peut-on suivre pour évaluer la précision du signal RTK fourni par le réseau Centipède ?
- [ ] Peut-on utiliser le réseau Centipède comme gold standard pour évaluer la précision d'autres systèmes gps (drone, robot...) ?

![quality](https://jancelin.github.io/docs-centipedeRTK/assets/images/autre/qualityxzy.png)

<iframe width="100%" height="600" frameborder="0" style="border:0" src="https://centipede.fr/index.php/view/embed/?repository=centtest&project=track&layers=B000000TTTTT&bbox=-159446.878983%2C5773299.034967%2C-87213.887264%2C5813199.163726&crs=EPSG%3A3857&layerStyles=llh_view%3Ad%C3%A9faut" allowfullscreen></iframe> 

<iframe width="100%" height="600" frameborder="0" style="border:0" src="https://centipede.fr/index.php/view/embed/?repository=centtest&project=z&layers=B00000FFTTT&bbox=-110198.133641%2C5802606.663514%2C-101169.009676%2C5807594.179609&crs=EPSG%3A3857&layerStyles=pointz_stat_group_z%3Adefault" allowfullscreen></iframe> 







