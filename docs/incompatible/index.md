---
layout: default
title: Incompatibilités
nav_order: 12
has_children: false
---

# Incompatibilités connues

## Antennes John Deere SF6000 SF7000 SF7500

Les bases triple fréquence (Mosaic-X5, UM980) avec les réglages par défaut, ont un débit trop élevé. La console du tracteur affiche un age de correction qui augmente jusqu'à ne plus fonctionner. 

#### 2025-03-19 :
 La solution de contournement est de créer un second point de montage. Par exemple, si ma base s'appelle MABASE, dans le service Ntrip B j'indique MABASEL (L pour light), et d'utiliser ces messages rtcm : `1005(10),1006,1008(10),1019,1020(2),1032(10),1033(10),1042(2),1046(2),1074,1084,1094,1124(2),1230`
 
 Ensuite, dans le tracteur, il faudra entrer manuellement le point de montage MABASEL

## Livebox 5
Le modem/routeur Livebox 5 proposé par Orange/Sosh est incompatible avec les cartes **Orange Pi Zero**.
Le symptome principal est que l'interface web de RTKbase est inaccessible, alors que la base est bien visible depuis l'interface de la Livebox.

**Mais tout n'est pas perdu :** Si la base est branchée à un switch réseau, qui lui même sera branché sur la livebox, alors tout ira bien :

**Livebox 5** <-cordon rj45-> **Switch** <-cordon rj45-> **Base avec Orange Pi Zero**

Le problème a été remonté à Orange, mais sans réponse pour le moment : [message forum Orange](https://communaute.orange.fr/t5/Livebox/Livebox-5-Orange-Pi-Zero-probl%C3%A8mes-en-connexion-ethernet/td-p/2865493)

