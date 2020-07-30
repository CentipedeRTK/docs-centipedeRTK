---
layout: default
title: Installation logiciel
parent: Fabriquer une base RTK
nav_order: 2
---

## Installation

> Installation avec Raspberry Pi [3](https://www.kubii.fr/les-cartes-raspberry-pi/2119-raspberry-pi-3-modele-b-1-gb-kubii-713179640259.html) ou [4](https://www.kubii.fr/les-cartes-raspberry-pi/2770-nouveau-raspberry-pi-4-modele-b-1gb-kubii-0765756931168.html)

### Mise à jour du firmware de l'antenne

Dans un premier temps il est nécessaire de mettre à jour le [firmware](https://fr.wikipedia.org/wiki/Firmware) de votre module F9P :

1. Pour Windows seulement : [installer U-center](https://www.u-blox.com/en/product/u-center)
2. [Mettre à jour le logiciel F9P](https://drotek.gitbook.io/rtk-f9p-positioning-solutions/tutorials/updating-zed-f9p-firmware)
3. Télécharger l'image de Base RTK sur votre ordinateur (~ 530 Mo) : [BaseGNSS-RPi-2.1.1](https://github.com/jancelin/pi-gen/releases/download/BaseGNSS-RPi-2.1.1/Base_GNSS_2_1_1.zip). **Attention**, ne pas copier directement l'image Base_GNSS_X.X.X.zip sur la carte micro SD !!!
4. Télécharger et installer ETCHER sur votre ordinateur (windows, linux, mac). Ce programme va permettre d'installer correctement l'image BaseRTK téléchargée dans la carte micro SD : <https://etcher.io/>.
5. Insérer la carte Micro SD dans l'ordinateur 

    ![](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrqS8MhQYdjrRmaYZS-RCtgLIrhB8gdLaxUmAfey96t6YpopQr)

6. Démarrer Etcher, choisir l'image téléchargée, la carte SD (normalement déjà sélectionnée) et flasher la carte :

   ![etcher](https://jancelin.github.io/docs-centipedeRTK/assets/images/install/etcher.png)


7. Retirer ensuite la carte SD du PC

----

### Assemblage et premier démarrage

1. Brancher un câble ethernet sur votre réseau afin que votre base puisse envoyer ses données au caster Centipede. (sauf si la connexion en WIFI)
2. Connecter en USB le récepteur F9P.
3. Insérer la carte micro SD dans le Raspberry Pi et le mettre sous tension. 

    > Il est possible de connecter un écran en HDMI sur le raspberry pour visualiser le déroulement de l'installation. 

4. Les leds du raspberry s'allument et/ou clignotent pendant ce premier démarrage (démarrage des services). Quand l'une d'elles s'éteint définitivement (attention à ne pas confondre avec certaines petites coupures) l'installation est terminée (~ 3 min ou plus).

    ![](https://projects-static.raspberrypi.org/projects/raspberry-pi-setting-up/3addc4ca2ca0b7c999bdb03a46801a729614b235/en/images/pi-plug-in.gif)

5. sur un PC connecté au même réseau, ouvrir un navigateur Internet et accéder à l'interface de la base RTK via l'URL : **<http://basegnss.local>** ou avec l'ip du Raspberry Pi si vous êtes sur un réseau.

> Mot de passe: ```admin```

![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss.gif)

En cas de problème
{: .label .label-yellow }

Si vous ne voyez pas de position ou de barre sur le graphique c'est que l'initialisation de votre module GNSS s'est mal déroulé, il est conseillé de vérifier les branchements, flasher de nouveau la carte SD et recommencer l'installation.

Passons ensuite au [Paramétrage](Parametrage){: .btn }

#### Option : Connexion en ssh pour les développeurs ou le débugage

* identifiant : `ssh basegnss@basegnss.local`
* mot de passe : `basegnss!`

