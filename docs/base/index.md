---
layout: default
title: Fabriquer une base RTK
nav_order: 2
has_children: true
---

# Fabriquer une base RTK

La géolocalisation classique n'a qu'une précision de quelques mètres, car les perturbations atmosphériques (entre autres) entraînent des écarts sur les signaux satellitaires. 

Pour obtenir une précision centimétrique, il est nécessaire d'avoir un récepteur GNSS statique : une "Base".

Elle sera fixée sur un support stable avec une vue dégagée vers le ciel. Elle connait sa position très précisément (au millimètre) et "écoute" 24h/24 l'ensemble des satellites (GPS, Glonass, Galileo...). Elle compare en temps réel sa position réelle et sa position estimée via les signaux des satellites.

Le résultat obtenu est un flux de données (RTCM) qui va servir à un autre récepteur GNSS ("Rover") afin de corriger sa position.

Les récepteurs peuvent autant servir en Rover qu'en Base. Les prochaines pages vont vous permettre de fabriquer votre propre base GNSS RTK.

![logo](https://jancelin.github.io/docs-centipedeRTK/assets/images/index/1.jpg)
