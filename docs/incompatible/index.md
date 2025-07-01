---
layout: default
title: Incompatibilités
nav_order: 12
has_children: false
---

# Incompatibilités connues

## Antennes John Deere SF6000 SF7000 SF7500

Les bases triple fréquence (Mosaic-X5, UM980) avec les réglages par défaut, ont un débit trop élevé. La console du tracteur affiche un age de correction qui augmente jusqu'à ne plus fonctionner. 

#### 2025-07-01 :
 La solution de contournement est d'utiliser le point de montage automatique **NEAR4**. Tout comme le point de montage **NEAR**, la connexion se fera automatiquement sur la base la plus proche, et en complément il réduit le débit en convertissant les messages MSM7 en messages MSM4 qui sont plus légers.

## Livebox 5
Le modem/routeur Livebox 5 proposé par Orange/Sosh est incompatible avec les cartes **Orange Pi Zero**.
Le symptome principal est que l'interface web de RTKbase est inaccessible, alors que la base est bien visible depuis l'interface de la Livebox.

**Mais tout n'est pas perdu :** Si la base est branchée à un switch réseau, qui lui même sera branché sur la livebox, alors tout ira bien :

**Livebox 5** <-cordon rj45-> **Switch** <-cordon rj45-> **Base avec Orange Pi Zero**

Le problème a été remonté à Orange, mais sans réponse pour le moment : [message forum Orange](https://communaute.orange.fr/t5/Livebox/Livebox-5-Orange-Pi-Zero-probl%C3%A8mes-en-connexion-ethernet/td-p/2865493)

