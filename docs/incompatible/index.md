---
layout: default
title: Incompatibilités
nav_order: 12
has_children: false
---

# Incompatibilités connues

## Livebox 5
Le modem/routeur Livebox 5 proposé par Orange/Sosh est incompatible avec les cartes Orange Pi Zero.
Le symptome principal est que l'interface web de RTKbase est inaccessible, alors que la base est bien visible depuis l'interface de la Livebox.

**Mais tout n'est pas perdu :** Si la base est branchée à un switch réseau, qui lui même sera branché sur la livebox, alors tout ira bien :

**Livebox 5** <-cordon rj45-> **Switch** <-cordon rj45-> **Base avec Orange Pi Zero**

Le problème a été remonté à Orange, mais sans réponse pour le moment : https://communaute.orange.fr/t5/Livebox/Livebox-5-Orange-Pi-Zero-probl%C3%A8mes-en-connexion-ethernet/td-p/2865493

