---
layout: default
title: Récepteur bi-fréquences F9P
parent: Rover RTK V6
nav_order: 3
---

### Liste

Voici la liste des éléments nécessaires à la mise en place d'un rover GNSS [Ublox F9p](https://www.u-blox.com/en/product/zed-f9p-module) bi-fréquences:
<img src="https://content.u-blox.com/sites/default/files/products/ZED-F9P-top-bottom.png" width="200">

|Matériel|Prix HT|
|--------|----|
|[F9P drotek: 5% ristourne code CENTIPEDERTK](https://store-drotek.com/891-rtk-zed-f9p-gnss.html) ou [F9P ardusimple](https://www.ardusimple.com/product/simplertk2b/)|180€|
|[D910 antenna](https://store.drotek.com/da-910-multiband-gnss-antenna) ou [survey](https://www.ardusimple.com/product/survey-gnss-multiband-antenna/), pas de ublox ANN-MB!!!|100€|


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


### Injection des paramètres

 L'injection permet de paramétrer le récepteur F9P pour une utilisation avec RTKlib et plus particulièrement RTKGPS+ sur Android

 * Télécharger/créer le fichier de configuration:
  * avec Firmware 1.32: [F9P_HPG1-32_Rover_5hz_nmea_460800.txt](/assets/param_files/F9P/F9P_HPG1-32_Rover_5hz_nmea_460800.txt)

 ![arduino](/assets/images/montage_rover/u-center.gif)

 * Aller dans **Tools** > **Receiver Configuration**
 * Sélectionner u-blox Generation 9
 * Sélectionner le fichier précédemment téléchargé
 * Cliquer sur **Transfert file -> GNSS** et attendre que le transfert se réalise

 Par mesure de prudence, s'assurer que la configuration est bien enregistrée :
 * Cliquer sur **View** > **Configuration View**
 * Cliquer sur **CFG (Configuration)**
 * Cliquer sur **Send**
 * Cliquer sur **Disconnect**
 * Débrancher le récepteur
