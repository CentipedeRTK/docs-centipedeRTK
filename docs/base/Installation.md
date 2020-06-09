---
layout: default
title: Installation logiciel
parent: Fabriquer une base RTK
nav_order: 2
---

## Installation

> Installation avec Raspberry Pi [3](https://www.kubii.fr/les-cartes-raspberry-pi/2119-raspberry-pi-3-modele-b-1-gb-kubii-713179640259.html), [4](https://www.kubii.fr/les-cartes-raspberry-pi/2770-nouveau-raspberry-pi-4-modele-b-1gb-kubii-0765756931168.html) ou [Zero W](https://www.kubii.fr/les-cartes-raspberry-pi/1851-raspberry-pi-zero-w-kubii-3272496006997.html)

### Update du firmware de l'antenne

Dans un premier temps il est nécessaire de mettre à jour le [firmware](https://fr.wikipedia.org/wiki/Firmware) de votre module F9P

* [Install U-center](https://www.u-blox.com/en/product/u-center) (Windows seulement)

* [Update F9P firmware](https://drotek.gitbook.io/rtk-f9p-positioning-solutions/tutorials/updating-zed-f9p-firmware)

* Télécharger l'image de Base RTK sur votre ordinateur (529Mo):

**Une nouvelle version de RTKbase est en cours de finalisation de développement, la version si dessus est une béta, la release arrive très bientôt**

 [1.1.0-beta3-Base_GNSS.zip](https://github.com/jancelin/pi-gen/releases/download/1.1.0-beta3/1.1.0-beta3-Base_GNSS.zip)


> Ne pas copier directement l'image X.X.X-Base_GNSS.zip sur la carte micro SD !!!


* Télécharger et installer ETCHER sur votre ordinateur (windows, linux, mac). Ce programme va permettre d'installer correctement l'image BaseRTK téléchargée dans la carte micro SD: https://etcher.io/
* Insérer la carte Micro SD dans l'ordinateur 

![](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrqS8MhQYdjrRmaYZS-RCtgLIrhB8gdLaxUmAfey96t6YpopQr)

* Démarrer le programme Etcher, choisir l'image téléchargée, la carte SD (normalement déjà sélectionnée) et flasher la carte

![etcher](https://jancelin.github.io/docs-centipedeRTK/assets/images/install/etcher.png)

* Retirer ensuite la carte SD du PC

### Assemblage et premier démarrage

* Brancher un câble ethernet sur votre réseau afin que votre base puisse envoyer ses données au caster Centipede. (sauf si la connexion en WIFI)
* Connecter en USB le recepteur F9P.
* Insérer la carte micro SD dans le Raspberry Pi et le mettre sous tension. 
> Il est possible de connecter un écran en HDMI sur le raspberry pour visualiser le déroulement de l'installation. 
* les leds du raspberry s'allument et/ou clignotent pendant ce premier démarrage (démarrage des services).
Quand l'une d'elles s'éteint définitivement (attention à ne pas confondre avec certaines petites coupures) l'installation est terminée (env. 3 min ou plus).

![](https://projects-static.raspberrypi.org/projects/raspberry-pi-setting-up/3addc4ca2ca0b7c999bdb03a46801a729614b235/en/images/pi-plug-in.gif)

* sur un PC connecté au même réseau, ouvrir un navigateur Internet et accéder à l'interface de la base RTK via l'URL :

 **http://basegnss.local**

> Mot de passe: ```Admin```

![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss.gif)

> Si vous ne voyez pas de position ou de barre sur le graphique c'est que l'initialisation de votre module GNSS s'est mal déroulé, il est conseillé de vérifier les branchement, flasher de nouveau la carte SD et recommencer l'installation.

Passons ensuite au paramétrage

---------------------------------------------------------------------------------------------------

> ### Option : Connexion en ssh pour les développeurs ou le débugage

> ssh basegnss@basegnss.local

> mdp: basegnss!

