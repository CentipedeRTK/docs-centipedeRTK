---
layout: default
title: Installation logiciel
parent: Fabriquer une base RTK
has_children: true
nav_order: 2
---

## Installation

> Installation avec Raspberry Pi [3](https://www.kubii.fr/les-cartes-raspberry-pi/2119-raspberry-pi-3-modele-b-1-gb-kubii-713179640259.html) ou [4](https://www.kubii.fr/les-cartes-raspberry-pi/2770-nouveau-raspberry-pi-4-modele-b-1gb-kubii-0765756931168.html)

### 1. mettre à jour le firmware de votre module GNSS F9P

Dans un premier temps il est nécessaire de mettre à jour le [firmware](https://fr.wikipedia.org/wiki/Firmware) de votre module GNSS F9P :

* [Installer U-center](https://www.u-blox.com/en/product/u-center) (Windows seulement) Attention, n'installez pas U-Center 2, mais U-Center :
![u-center](/assets/images/install/u_center_1_on_u-blox_website.png)
Si U-Center refuse de démarrer avec un message d'erreur du type "MSVCR120.dll introuvable", installez ce pack [vc_redist 2013 x64](https://download.microsoft.com/download/f/e/c/fece8bbd-3379-4db1-8006-b8f47783b2cb/vcredist_x86.exe).

* Update F9P firmware :
  * [Télécharger le fichier de mise à jour le plus récent](https://www.u-blox.com/en/product/zed-f9p-module?file_category=Firmware%2520Update). Au 2023-02-25 il s'agit de la version [1.32](https://content.u-blox.com/sites/default/files/2022-05/UBX_F9_100_HPG132.df73486d99374142f3aabf79b7178f48.bin)
  * Connecter en USB le récepteur F9P au PC
  * Ouvrir U-center en mode administrateur (click droit **Executer en mode administrateur**)
  * Connecter le récepteur (bouton en haut à gauche) au bon port COM
![firmware](https://gblobscdn.gitbook.com/assets%2F-LYSZeu4HjB-NrVI4riL%2F-LYbICDde_PqBQRMcCsl%2F-LYbIddBqnC-aXKJ1bxh%2FSans-titre-1.png?alt=media&token=240244db-09d5-40e8-9735-869651b9198e)
  * Vérifier que le récepteur est bien connecté
![firmware](https://gblobscdn.gitbook.com/assets%2F-LYSZeu4HjB-NrVI4riL%2F-LYbGvHfj8nIN6gywxBz%2F-LYbHSKTiJZ0j0qAf-5e%2Ficon_blink.png?alt=media&token=0f35cbc4-ce5a-4d3b-90f4-ecadc5a36821)
  * Cliquer sur **Tools** > **Firmware update...**
    * Choisir le .bin précédement téléchargé dans **Firmware image**
    * cocher **Use this baudrate for update** et choisir 9600
    * Décocher les 4 autres ( Enter safeboot, ...)
  * Cliquer sur **GO** (en bas à gauche de la fenêtre)
![firmware](https://gblobscdn.gitbook.com/assets%2F-LYSZeu4HjB-NrVI4riL%2F-LZ5-tu1J0X8sog9Xvkf%2F-LZ527USiWMS3Pjo5SXY%2Fstep4.png?alt=media&token=2e76981e-8874-4151-9c48-f5fa07cdcd69)
  * Attendre la fin de la procédure de mise à jour
![firmware](https://gblobscdn.gitbook.com/assets%2F-LYSZeu4HjB-NrVI4riL%2F-LZ52KPCRzypMK4cqtQW%2F-LZ52Z_bl9GHQP8dz7By%2Fstep6.png?alt=media&token=f8f7240b-79b4-4856-87ea-26e12c1aac36)

### 2. Télécharger l'image pour Raspberry Pi / Orange Pi Zero

Télécharger depuis votre ordinateur l'image RTKBase pour votre carte :
 - Raspberry Pi (~ 560 Mo) : [BaseGNSS-RPi-2.3.1](https://github.com/CentipedeRTK/pi-gen_RTKbase/releases/download/BaseGNSS-RPi-2.3.1/RTKBaseGNSS_2_3_1.zip) , Mettre à jour RTKbase 2.3.4 une fois l'image installée !
 - Orange Pi Zero : [BaseGNSS-Opi-Zero](https://github.com/Stefal/build/releases/download/v2.3.4/Armbian_22.02.0-trunk_Orangepizero_bullseye_current_5.15.32_minimal.img.zip)

**Attention**, ne pas copier directement l'image Base_GNSS_X.X.X.zip sur la carte micro SD !!!

### 3. Télécharger et installer ETCHER 

Télécharger et installer BalenaEtcher sur votre ordinateur (windows, linux, mac). Ce programme va permettre d'installer correctement l'image BaseGNSS téléchargée dans la carte micro SD : <https://www.balena.io/etcher>. Si vous utilisez Windows, vous pouvez choisir la version portable :

  ![Etcher Website](/assets/images/install/balena_etcher_website.png)

### 4. Insérer la carte Micro SD dans l'ordinateur 

   ![SD](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrqS8MhQYdjrRmaYZS-RCtgLIrhB8gdLaxUmAfey96t6YpopQr)

### 5. Flasher la carte SD avec l'image

Démarrer BalenaEtcher, choisir l'image téléchargée, la carte SD (normalement déjà sélectionnée) et flasher la carte :

   ![etcher](/assets/images/install/etcher.png)

### 6. Retirer ensuite la carte SD du PC

Vous pouvez retirer la carte SD du PC et l'insérer maintenant dans le Raspberry Pi.

En option, il est possible d'activer une connexion WIFI si vous n'avez pas de réseau filaire (déconseillé!) ainsi que le port série pour connecter par exemple un émetteur radio. Pour ce faire, ré-insérez la carte SD dans votre PC puis suivez la procédure de modification des fichiers de configurations du premier démarrage:

[WIFI](wifi){: .btn }

[port série](port_serie){: .btn }

----

### 7. Assemblage et premier démarrage

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

Passons ensuite au [Paramétrage](Parametrage){: .btn }

#### Connexion en ssh pour les développeurs ou le débugage

* identifiant : `ssh basegnss@basegnss.local`
* mot de passe : `basegnss!`

