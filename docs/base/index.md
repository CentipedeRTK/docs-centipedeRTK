---
layout: default
title: Fabriquer une base RTK
nav_order: 2
has_children: true
---

# Fabriquer une base RTK

La geolocation classique n'a q'une précision de quelques mètre car les perturbation atmosphériques (entre autre) entrainent des ecarts sur les signaux satellitaires. 

Pour optenir une précison centimétrique il est necessaire d'avoir un récepteur GNSS static une "Base".

Elle sera fixé sur un support stable avec une vue dégagée vers le ciel. Elle connait sa position très précisément (au milimètre) et "ecoute" 24h/24 l'ensemble des satellites (GPS, Glonass, Galileo, ...). Elle compare en temps réel sa position réelle et sa position estimée via les signaux des satellites.

Le résultat obtenu est un flux de données (RTCM) qui va servir à un autre récepteur GNSS ("Rover") afin de corriger sa position.

les récepteur peuvent autant servir en Rover qu'en Base.

Les prochaines pages vont vous permettrent de fabriquer votre propre base GNSS RTK.

![logo](https://jancelin.github.io/docs-centipedeRTK/assets/images/index/1.jpg)


