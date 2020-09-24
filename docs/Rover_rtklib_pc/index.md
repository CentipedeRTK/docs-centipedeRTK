---
layout: default
title: Rover sur PC windows ou Linux
nav_order: 6
has_children: true
---

# Rover RTKlib avec un pc Windows et Linux

Rtklib est utilisé pour les bases du réseau Centipede, mais peut-être aussi utilisé en mode rover.

Vous pouvez soit utiliser le mode graphique de Rtklib ou le mode serveur.

## Utilisation Rover RTK sur PC Windows 

> Cette méthode est un exemple, il existe d'autres méthodes pour paramétrer un client Ntrip sous windows avec un récepteur F9P.
> L'objectif est d'intégrer les binaires Ublox plutôt que du NMEA, les paramètres du F9P sont quant à eux injectés à chaque lancement pour adapter facilement la configuration en fonction du travail à effectuer (Rate, Mask,DynModel,...). Le paramétrage est également plus fin afin d'avoir un FIX RTK rapide, stable et répétable.

**Toujours vérifier la disponibilité d'une base [Centipede](https://centipede.fr) avant de l'utiliser**

Pour l'utilisation sur le terrain, vous devez disposer d'un matériel compatible (antenne et récepteur) ainsi que d'une connexion Internet mobile (3-4-5G) pour la réception des trames de correction du caster [Centipede](https://centipede.fr)


