---
layout: default
title: Application RTKGPS+ Android
parent: Fabriquer un Rover RTK
nav_order: 4
has_children: true
---

## Application RTKGPS+ Android

L'application RTKGPS+ est un projet OpenSource initié par [illarionov](https://github.com/illarionov/RtkGps) il y a 7 ans, repris par [eltorio](https://github.com/eltorio/RtkGps) il y a 2 ans et que [j'ai patché](https://github.com/jancelin/RtkGps/releases) pour fonctionner avec les modules F9P.

Cette application utilise RTKLIB Navi qui permet une géolocalisation en RTK avec un récepteur U-blox et une connexion à une Base RTK Centipede ou autre via le réseau 3-4G.

L'application permet de faire une Localisation fictive, c'est à dire de ne plus utiliser le recepteur interne du smartphone mais celui de l'antenne RTK, et donc d'utiliser tout service de géolocalisation avec une précision centimétrique. Elle à la capacité de s'exécuter en tâche de fond et d'avaoir une interface assez simple.

L'application permet egalement de loguer dans un fichier .pos ([cf doc Qgis](https://jancelin.github.io/docs-centipedeRTK/docs/base/positionnement.html#qgis)) les données de géolocalisation.

## Installation

* Sur un smartphone ou une tablette Android autoriser les sources inconnus: Déroulez la barre de notifications, sélectionnez Paramètres → onglet Général → Sécurité puis cochez Sources inconnues.
* Télécharger l'[Application RTKGPS+](https://github.com/jancelin/RtkGps/releases/download/alpha2/RtkGps-debug_0_2.apk) et l'installer.
* Activer les Options pour développeurs afin de bénéficier de la position fictive:
  * Désactiver le GPS interne
  * Activer le mode développeur: Aller dans Paramètres > À Propos > Cliquer 7 fois d'affilé sur "Numéro de build"
  * Activer le "Mock location" : Aller dans Paramètres > Options développeur (menu apparu suite à l'action précédente) > Selectionner l'application de position fictive > RTKGPS+
* Desactiver la localisation par wifi pour éviter les saut de localisation.
  * Sécurité et localisation > Localisation > Options avancées > Précision de la localisation > Utiliser que le GPS interne

## Paramétrage

* Ouvrir RTKGPS+
* Autoriser l'appli pour le stockage de données et la localisation
* Cliquer sur le logo RTKGPS+ pour accéder aux paramètres
* Cliquer sur Options de traitement
  * Dans **Système GNSS** rajouter **Beidou**
  * Dans **Paramètres de résolution des ambiguités** appliquer cette configuration:

![rtkgps+](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/settings_RTK.png)

* Cliquer sur **Options de Solutions**
  * Cocher **Générer des positions GPS fictives**
  * Décocher **Activer le mode test**

* Cliquer sur **Flux d'entrée**
  * Cliquer sur **Entrée Mobile**
    * Penser à avoir démarré votre antenne GNSS
    * **Type** > **Bluetooth**
    * **Paramètres de flux** > Autoriser l'activation du Bluetooth > Paramètres système bluetooth > Associer nouvel app. > CENTIPEDE > rentrer le code PIN (1234) > revenir sur RTKGPS+
    * Vérifier que votre récépeteur est maintenant écris dans **Périphérique Bluetooth**
    * **Format** > **u-blox Lea-T**
  * Cliquer sur **Entrée Base** (normalement près paramétré Centipede)
    * **Paramètres de flux...** > **Point de montage NTRIP** > modifier avec la base RTK la plus proche de vous (https://centipede.fr)

* Cliquer sur **Flux de sortie**
  * Cocher **Activer la solution1** pour activer les logs.

* Enfin Cliquer sur **Server** pour lancer le service RTK. 
  * Le graphique du haut montre les données des sattelites du récepteur et celui du bas de la base (ce qui permet la correction RTK). 
  * La ligne **Solution** est soit vide (pas de position), **float**, ou **FIXE**.
  * Le **HRMS** donne la précision XY et **VRMS** la précision XYZ.
  * L'**Age** est la durée de réception de la dernière correction de la base RTK
  * Le **Ratio** la précision du calcul ( attendre minimum 30 pour faire vos mesures)

![rtkgps+](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/rtkgps.png)

* Vous pouvez maintenant utiliser vos application habituelle la géolocalisation est effectué par votre antenne externe et RTKGPS+.











 
