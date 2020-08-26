---
layout: default
title: Application RTKGPS+ Android
parent: Fabriquer un Rover RTK
nav_order: 4
has_children: true
---

## Application RTKGPS+ Android

![rtkgps+](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/rtkgps_logo.png)

L'application RTKGPS+ est un projet OpenSource initié par [illarionov](https://github.com/illarionov/RtkGps) il y a 7 ans, repris par [eltorio](https://github.com/eltorio/RtkGps) il y a 2 ans et que [j'ai modifié](https://github.com/jancelin/RtkGps/releases) pour permettre le fonctionnement avec les modules F9P.

Cette application utilise RTKLIB Navi, qui permet une géolocalisation RTK avec un récepteur U-blox (ou autre) et une connexion à une Base RTK Centipede (ou autre) via le réseau 3-4G.

L'application permet de faire une localisation fictive, c'est à dire de ne plus utiliser le récepteur interne du smartphone mais celui de l'antenne RTK, et donc d'utiliser un service de géolocalisation avec une précision centimétrique. Elle a la capacité de s'exécuter en tâche de fond et propose une interface relativement simple.

L'application permet également d'enregistrer l'historique des positions dans un fichier .pos ([cf doc Qgis](https://jancelin.github.io/docs-centipedeRTK/docs/base/positionnement.html#qgis)).

## Installation

* Sur votre système Android, autoriser l'utilisation de sources inconnues : Dérouler la barre de notifications, sélectionner Paramètres → onglet Général → Sécurité puis cocher "Sources inconnues".
* Télécharger l'[Application RTKGPS+ 1.1 Alpha 2](https://github.com/jancelin/RtkGps/releases/download/1.1-Alpha2/RtkGps-1_1alpha2.apk) et l'installer.
* Activer les "Options pour développeurs" afin de bénéficier de la position fictive :
  * Désactiver le GPS interne
  * Activer le mode développeur : Aller dans Paramètres > À Propos > Cliquer 7 fois d'affilé sur "Numéro de build"
  * Activer le "Mock location" : Aller dans Paramètres > Options développeur (menu apparu suite à l'action précédente) > Sélectionner l'application de position fictive > RTKGPS+
* Désactiver la localisation par wifi pour éviter les sauts de localisation :
  * Sécurité et localisation > Localisation > Options avancées > Précision de la localisation > N'utiliser que le GPS interne

## Paramétrage automatique

* Télécharger [settings.zip](https://github.com/jancelin/RtkGps/releases/download/1.1-Alpha2/settings.zip) et le déposer dans le dossier **RtkGPS** de votre appareil android.
* Démarrer l'application RtkGPS+
* Dans le menu de gauche, faire défiler vers le bas et appuyer sur **Charger les paramètres**
* Une fois que la fenêtre de message disparait, fermer et réouvrir l'application pour la prise en compte des nuveaux paramètres.

## Paramétrage Manuel

* Ouvrir RTKGPS+
* Autoriser l'appli pour le stockage de données et la localisation
* Cliquer sur le logo RTKGPS+ pour accéder aux paramètres
* Cliquer sur **Options de traitement**
  * Dans **Système GNSS** rajouter **Beidou**
  * Dans **Paramètres de résolution des ambiguités** appliquer cette configuration :

![rtkgps+](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/settings_RTK.png)

* Cliquer sur **Options de Solutions**
  * Cocher **Générer des positions GPS fictives**
  * Décocher **Activer le mode test**

* Cliquer sur **Flux d'entrée**
  * Cliquer sur **Entrée Mobile**
    * Penser à l'alimentation de l'antenne GNSS
    * **Type** > **Bluetooth**
    * **Paramètres de flux** > Autoriser l'activation du Bluetooth > Paramètres système bluetooth > Associer nouvel app. > CENTIPEDE > rentrer le code PIN (1234) > revenir sur RTKGPS+
    * Vérifier que votre récepteur apparait maintenant dans **Périphérique Bluetooth**
    * **Format** > **u-blox Lea-T**
  * Cliquer sur **Entrée Base** (normalement pré-paramétré Centipede)
    * **Paramètres de flux...** > **Point de montage NTRIP** > modifier avec la base RTK la plus proche de vous (https://centipede.fr)

* Cliquer sur **Flux de sortie**
  * Cocher **Activer la solution1** pour activer les logs.

* Enfin cliquer sur **Server** pour lancer le service RTK. 
  * Le graphique du haut montre les données des satellites du récepteur tandis que le graphique du bas montre les données des satallites de la base (ce qui permet la correction RTK). 
  * La ligne **Solution** est soit vide (pas de position), soit **float**, soit **FIXE**.
  * Le **HRMS** donne la précision XY et **VRMS** la précision Z.
  * L'**Age** indique la dernière correction reçue de la base RTK.
  * Le **Ratio** indique la précision du calcul (attendre au moins 30' pour faire vos mesures)

![rtkgps+](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/rtkgps.png)

* Vous pouvez maintenant utiliser vos applications habituelles nécessitant la géolocalisation. Celle-ci est désormais effectuée par votre antenne externe et RTKGPS+.

![RTKrover](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/rtkgps_input.gif)









 
