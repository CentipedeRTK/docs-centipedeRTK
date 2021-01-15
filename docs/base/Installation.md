---
layout: default
title: Installation logiciel
parent: Fabriquer une base RTK
nav_order: 2
---

## Installation

> Installation avec Raspberry Pi [3](https://www.kubii.fr/les-cartes-raspberry-pi/2119-raspberry-pi-3-modele-b-1-gb-kubii-713179640259.html) ou [4](https://www.kubii.fr/les-cartes-raspberry-pi/2770-nouveau-raspberry-pi-4-modele-b-1gb-kubii-0765756931168.html)

1. Dans un premier temps il est nécessaire de mettre à jour le [firmware](https://fr.wikipedia.org/wiki/Firmware) de votre module GNSS F9P :

* [Install U-center](https://www.u-blox.com/en/product/u-center) (Windows seulement)

* Update F9P firmware 1.13:
  * [Télécharger le fichier de mise à jour](https://www.u-blox.com/en/ubx-viewer/view/UBX_F9_100_HPG_113_ZED_F9P.7e6e899c5597acddf2f5f2f70fdf5fbe.bin?url=https%3A%2F%2Fwww.u-blox.com%2Fsites%2Fdefault%2Ffiles%2FUBX_F9_100_HPG_113_ZED_F9P.7e6e899c5597acddf2f5f2f70fdf5fbe.bin)
  * Connecter en USB le récepteur F9P au PC
  * Ouvrir U-center en mode administrateur (click droit **Executer en mode administrateur**)
  * Connecter le recepteur (bouton en haut à gauche) au bon port COM
![firware](https://gblobscdn.gitbook.com/assets%2F-LYSZeu4HjB-NrVI4riL%2F-LYbICDde_PqBQRMcCsl%2F-LYbIddBqnC-aXKJ1bxh%2FSans-titre-1.png?alt=media&token=240244db-09d5-40e8-9735-869651b9198e)
  * Vérifier que le récepteur est bien connecté
![firware](https://gblobscdn.gitbook.com/assets%2F-LYSZeu4HjB-NrVI4riL%2F-LYbGvHfj8nIN6gywxBz%2F-LYbHSKTiJZ0j0qAf-5e%2Ficon_blink.png?alt=media&token=0f35cbc4-ce5a-4d3b-90f4-ecadc5a36821)
  * Cliquer sur **Tools** > **Firmware upade...**
    * Choisir le .bin précédement téléchargé dans **Firmware image**
    * cocher **Use this baudrate for update** et choisir 9600
    * Décocher les 4 autres ( Enter safeboot, ...)
  * Cliquer sur **GO** (en bas à gauche de la fenêtre)
![firware](https://gblobscdn.gitbook.com/assets%2F-LYSZeu4HjB-NrVI4riL%2F-LZ5-tu1J0X8sog9Xvkf%2F-LZ527USiWMS3Pjo5SXY%2Fstep4.png?alt=media&token=2e76981e-8874-4151-9c48-f5fa07cdcd69)
  * Attendre la fin de la procédure de mise à jour
![firware](https://gblobscdn.gitbook.com/assets%2F-LYSZeu4HjB-NrVI4riL%2F-LZ52KPCRzypMK4cqtQW%2F-LZ52Z_bl9GHQP8dz7By%2Fstep6.png?alt=media&token=f8f7240b-79b4-4856-87ea-26e12c1aac36)

2. Télécharger l'image de Base RTK sur votre ordinateur (~ 560 Mo) : [BaseGNSS-RPi-2.1.1](https://github.com/jancelin/pi-gen/releases/download/BaseGNSS-RPi-2.1.1/Base_GNSS_2_1_1.zip). **Attention**, ne pas copier directement l'image Base_GNSS_X.X.X.zip sur la carte micro SD !!!

**Après l'installation pensez à mettre à jour rtkbase en 2.2.0** 
3. Télécharger et installer ETCHER sur votre ordinateur (windows, linux, mac). Ce programme va permettre d'installer correctement l'image BaseRTK téléchargée dans la carte micro SD : <https://etcher.io/>.
4. Insérer la carte Micro SD dans l'ordinateur 

    ![](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrqS8MhQYdjrRmaYZS-RCtgLIrhB8gdLaxUmAfey96t6YpopQr)

5. Démarrer Etcher, choisir l'image téléchargée, la carte SD (normalement déjà sélectionnée) et flasher la carte :

   ![etcher](https://jancelin.github.io/docs-centipedeRTK/assets/images/install/etcher.png)

6. Retirer ensuite la carte SD du PC

----

### Assemblage et premier démarrage

1. Brancher un câble ethernet sur votre réseau afin que votre base puisse envoyer ses données au caster Centipede.
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

