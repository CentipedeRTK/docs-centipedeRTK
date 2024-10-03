---
layout: default
title: Récepteur bi-fréquences F9P
parent: Materiel et Assemblage
nav_order: 3
---

### Liste

Voici la liste des éléments nécessaires à la mise en place d'une base GNSS [Ublox F9p](https://www.u-blox.com/en/product/zed-f9p-module) bi-fréquences:
<img src="https://content.u-blox.com/sites/default/files/products/ZED-F9P-top-bottom.png" width="200">

|Matériel|Prix HT|
|--------|----|
|[F9P drotek: 5% ristourne code CENTIPEDERTK](https://store-drotek.com/891-rtk-zed-f9p-gnss.html) ou [F9P ardusimple](https://www.ardusimple.com/product/simplertk2b/)|180€|
|[D910 antenna](https://store.drotek.com/da-910-multiband-gnss-antenna) ou [survey](https://www.ardusimple.com/product/survey-gnss-multiband-antenna/), pas de ublox ANN-MB!!!|100€|

### Assemblage

![composant](/assets/images/mat/composant.jpg)

Dans un premier temps faites un premier montage sans la boite:
   * Assembler l'antenne [DA910](https://store.drotek.com/da-910-multiband-gnss-antenna) sur son support
   * Connecter le câble d'antenne au récepteur [F9P](https://store-drotek.com/891-rtk-zed-f9p-gnss.html)
   * Connecter le cordon USB entre le [F9P](https://store.drotek.com/rtk-zed-f9p-gnss) et le [Raspberry Pi 3/4](https://www.kubii.fr/les-cartes-raspberry-pi/2119-raspberry-pi-3-modele-b-1-gb-kubii-713179640259.html)
   * Connecter le [câble ethernet RJ45](https://www.mhzshop.com/shop/Cables-et-cordons/Cordons-reseau/) à votre réseau (BOX internet, CPL, prise réseau Rj45) et au [Raspberry Pi 3/4](https://www.kubii.fr/les-cartes-raspberry-pi/2119-raspberry-pi-3-modele-b-1-gb-kubii-713179640259.html)
   * Préparer l'[alimentation](https://www.kubii.fr/les-officiels-raspberry-pi-kubii/2593-alimentation-officielle-raspberry-pi-3-eu-micro-usb-51v-25a-kubii-3272496297586.html?search_query=SC0136&results=51) mais ne pas mettre encore sous tension.

### Mettre à jour le firmware de votre module GNSS F9P

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


### Enfin
   * Prendre la [Micro SD 16Go](https://www.kubii.fr/carte-sd-et-stockage/2359-carte-microsd-16go-classe-10-u1-sandisk-kubii-619659161347.html) et passons maintenant à l'étape suivante: [Installation logiciel](Installation){: .btn .btn-blue }
