---
layout: default
title: Rover RTK V6
parent: Fabriquer un Rover RTK
nav_order: 1
has_children: true
---

# Rovers GNSS RTK (Bluetooth / ESP32) + configurations récepteurs

Ce dépôt regroupe **tout le nécessaire pour fabriquer un rover GNSS RTK** autour d’un récepteur (ex. u-blox, Unicore, …) et l’utiliser :
- soit comme **rover “pass-through”** (le smartphone fait le client NTRIP et injecte les RTCM),
- soit comme **rover autonome** (ESP32 + Wi-Fi : client NTRIP embarqué),
- soit comme **rover connecté** (ESP32 + Wi-Fi + MQTT + capteurs).

Il contient également un dossier de **configurations récepteurs GNSS** (profils NMEA/RTCM, débits UART, phrases NMEA, etc.) afin d’avoir un comportement stable et reproductible.

L'objectif  est de fournir des briques **DIY** (matériel + firmware + tests) et documenter les variantes, tout en conservant une compatibilité maximale avec les applis mobiles GNSS/NTRIP.

Toutes les ressources sont disponibles sur la page [https://github.com/jancelin/rover-gnss](https://github.com/jancelin/rover-gnss) pour fabriquer sont rover RTK, [une version commerciale](https://natuition.odoo.com/shop/n2168-navx-2678) est également disponible pour ceux qui ne sont pas bricoleur.

<img width="960" height="1280" alt="image" src="https://github.com/user-attachments/assets/7676f812-7901-4b5d-8e46-d2eb5196bb27" />


