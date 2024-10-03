---
layout: default
title: Installation logiciel
parent: Fabriquer une base RTK
has_children: true
nav_order: 3
---

## Installation

### 1. Télécharger l'image pour Raspberry Pi / Orange Pi

Télécharger depuis votre ordinateur l'image RTKBase pour votre carte :
 - Orange Pi Zero : [BaseGNSS-Opi-Zero](https://github.com/Stefal/build/releases/download/2.6.0_24.05/Armbian-unofficial_24.5.1_RTKBase_2.6.0_Orangepizero_bookworm_current_6.6.31_minimal.zip)
 - Orange Pi Zero 2 : [BaseGNSS-Opi-Zero2](https://github.com/Stefal/build/releases/download/2.6.0_24.05/Armbian-unofficial_24.5.1_RTKBase_2.6.0_Orangepizero2_bookworm_current_6.6.31_minimal.zip)
 - Orange Pi Zero 3 : [BaseGNSS-Opi-Zero3](https://github.com/Stefal/build/releases/download/2.6.0_24.05/Armbian-unofficial_24.5.1_RTKBase_2.6.0_Orangepizero3_bookworm_current_6.6.31_minimal.zip)
 - Raspberry Pi 64b: [BaseGNSS-RPi-2.6.1](https://github.com/CentipedeRTK/pi-gen_RTKbase/releases/download/RTKBase-GNSS-RPi-2.6.1/image_2024-08-27-RTKBase-2-6-1_bookworm_64-lite.zip)

**Attention**, ne pas copier directement l'image Base_GNSS_X.X.X.zip sur la carte micro SD !!!

### 2. Télécharger et installer ETCHER

Télécharger et installer BalenaEtcher sur votre ordinateur (windows, linux, mac). Ce programme va permettre d'installer correctement l'image BaseGNSS téléchargée dans la carte micro SD : <https://www.balena.io/etcher>. Si vous utilisez Windows, vous pouvez choisir la version portable :

  ![Etcher Website](/assets/images/install/balena_etcher_website.png)

### 3. Insérer la carte Micro SD dans l'ordinateur

   ![SD](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrqS8MhQYdjrRmaYZS-RCtgLIrhB8gdLaxUmAfey96t6YpopQr)

### 4. Flasher la carte SD avec l'image

Démarrer BalenaEtcher, choisir l'image téléchargée, la carte SD (normalement déjà sélectionnée) et flasher la carte :

   ![etcher](/assets/images/install/etcher.png)

### 5. Retirer ensuite la carte SD du PC

Vous pouvez retirer la carte SD du PC et l'insérer maintenant dans le Raspberry Pi.

En option, il est possible d'activer une connexion WIFI si vous n'avez pas de réseau filaire (déconseillé!) ainsi que le port série pour connecter par exemple un émetteur radio. Pour ce faire, ré-insérez la carte SD dans votre PC puis suivez la procédure de modification des fichiers de configurations du premier démarrage:

[port série](port_serie){: .btn }

----

### 6. Assemblage et premier démarrage

1. Brancher un câble ethernet sur votre réseau afin que votre base puisse envoyer ses données au caster Centipede.
2. Connecter en USB le récepteur F9P.
3. Insérer la carte micro SD dans le Raspberry Pi et le mettre sous tension.

    > Il est possible de connecter un écran en HDMI sur le raspberry pour visualiser le déroulement de l'installation.

4. Les leds du raspberry s'allument et/ou clignotent pendant ce premier démarrage (démarrage des services). Quand l'une d'elles s'éteint définitivement (attention à ne pas confondre avec certaines petites coupures) l'installation est terminée (~ 3 min ou plus).

    ![](https://projects-static.raspberrypi.org/projects/raspberry-pi-setting-up/3addc4ca2ca0b7c999bdb03a46801a729614b235/en/images/pi-plug-in.gif)

5. Sur un PC connecté au même réseau, ouvrir un navigateur Internet et accéder à l'interface de la base RTK via l'URL : **<http://basegnss.local>** ou avec l'ip du Raspberry Pi si vous êtes sur un réseau.

> Mot de passe: ```admin```

![base gnss](/assets/images/basegnss/basegnss.gif)

En cas de problème
{: .label .label-yellow }

Si vous ne voyez pas de position ou de barre sur le graphique c'est que l'initialisation de votre module GNSS s'est mal déroulée, il est conseillé de vérifier les branchements, flasher de nouveau la carte SD et recommencer l'installation.

Passons ensuite au [Paramétrage](Parametrage){: .btn .btn-blue }

#### Connexion en ssh pour les développeurs ou le débugage

* identifiant : `ssh basegnss@basegnss.local`
* mot de passe : `basegnss!`
