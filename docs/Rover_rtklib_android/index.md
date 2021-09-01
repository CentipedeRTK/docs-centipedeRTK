---
layout: default
title: Rover Android
nav_order: 5
has_children: true
---

## Application Lefebure (propriétaire)

![Lefebure](https://user-images.githubusercontent.com/6421175/131640187-087e385e-c2d6-4130-8bdc-1316ca53c0d0.png)

L'application Lefebure NTRIP client pour Android permet d'envoyer au récepteur GNSS (ublox-F9P) la correction d'un mount point du réseau Centipede et de recevoir une trame NMEA corrigée, l'option activer la position fictive permet quand à elle de considérer que votre récepteur GNSS RTK est utilisé pour la géolocalisation pour toutes les applications de votre smartphone/tablette android comme par exemple les outils SIG [Input](https://play.google.com/store/apps/details?id=uk.co.lutraconsulting&hl=fr&gl=fr) ,[Qfield](https://play.google.com/store/apps/details?id=ch.opengis.qfield&hl=fr&gl=fr), [OsmAnd](https://play.google.com/store/apps/details?id=net.osmand&hl=fr&gl=US).

Il est possible d'enregistrer plusieurs profil d'utilisation en fonction de vos déplacement entre point de montage du réseau Centipede.

[Lefebure NtripClient sur le playstore](https://play.google.com/store/apps/details?id=com.lefebure.ntripclient&hl=fr&gl=fr)

http://lefebure.com/software/android-ntripclient/

## Bluetooth GNSS (Open-Source)

![Bluetooth gnss](https://play-lh.googleusercontent.com/dLnImcx6IPTAN2pCbtBtoh5QDTuENf7hOsImlCxTlAAlmmR6OplAwOfcyeHaXaPoVaU=s180)

Un équivalent de l'application Lefebure mais en Opensource, cette application prend  en charge la superposition des flux de données du serveur NTRIP pour un positionnement RTK professionnel.

Cette application prend en charge l'affichage des estimations de précision à partir des messages de précision U-Blox ```PUBX```, au lieu de la méthode couramment utilisée ```HDOP x CEP```. Cette lecture de précision PUBX correspond exactement à la même source de précision que celle indiquée dans l'outil U-Center PC lorsqu'il est connecté directement aux appareils M8030 (EcoDroidGPS) ou ZED-F9P (EcoDroidGPS + ArduSimple) via USB.

[github libbluetooth_gnss](https://github.com/ykasidit/libbluetooth_gnss)

[Bluetooth GNSS sur le playstore](https://play.google.com/store/apps/details?id=com.clearevo.bluetooth_gnss)


## Application SW MAPS  (propriétaire)

![swmaps](https://play-lh.googleusercontent.com/J-ecYQoiNwYIg03fscsbkE_ozFiDxP4kgGTpr4Zau9JJArol-gBfhU0pWODUtj-Lacc=s180)

SW Maps est une application gratuite de SIG et de cartographie mobile pour la collecte, la présentation et le partage d'informations géographiques.

Que vous meniez une enquête GNSS à grande échelle avec des instruments de haute précision, que vous deviez collecter une grande quantité de données de localisation en utilisant uniquement votre téléphone, ou que vous ayez simplement besoin d'afficher quelques fichiers de formes avec des étiquettes sur une carte d'arrière-plan lors de vos déplacements, SW Maps a tout a couvert.

Enregistrez des points, des lignes, des polygones et même des photos et affichez-les sur la carte d'arrière-plan de votre choix, et attachez des données d'attributs personnalisés à n'importe quelle entité. Les types d'attributs incluent le texte, les nombres, une option parmi un ensemble prédéfini de choix, des photos, des clips audio et des vidéos.

Réalisez des levés GPS de haute précision à l'aide de récepteurs externes compatibles RTK via Bluetooth ou USB Serial.

Dessinez des entités sur la carte en ajoutant des marqueurs et mesurez la distance et la zone.

Réutilisez les couches et les attributs d'un projet précédent pour une autre enquête, ou créez des modèles et partagez-les avec d'autres utilisateurs.

Partagez les données collectées avec d'autres utilisateurs sous forme de Geopackages, KMZ ou de fichiers de formes, ou exportez-les vers le stockage de votre appareil. Partagez et exportez également les données enregistrées sous forme de feuilles de calcul (XLS / ODS) ou de fichiers CSV.

[SWMAPS sur le playstore](https://play.google.com/store/apps/details?id=np.com.softwel.swmaps&hl=fr&gl=fr)

[Tuto utilisation avec un RTK Surveyor et Centipede](https://www-iuem.univ-brest.fr/pops/attachments/2444/Tuto_Mesure_Centipede-RTKsurveyor.pdf)


## Application RTKGPS+ Android (Open-source)

![rtkgps+](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/rtkgps_logo.png)

![rtkgps+](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/rtkgps.png)

L'application RTKGPS+ est un projet OpenSource initié par [illarionov](https://github.com/illarionov/RtkGps) il y a 7 ans, repris par [eltorio](https://github.com/eltorio/RtkGps) il y a 2 ans et [mis à jour](https://github.com/jancelin/RtkGps/releases) pour permettre le fonctionnement avec les modules F9P.

Cette application utilise RTKLIB Navi, qui permet une géolocalisation RTK avec un récepteur U-blox (ou autre) et une connexion à une Base RTK Centipede (ou autre) via le réseau 3-4G.

L'application permet de faire une localisation fictive, c'est à dire de ne plus utiliser le récepteur interne du smartphone mais celui de l'antenne RTK, et donc d'utiliser un service de géolocalisation avec une précision centimétrique. Elle a la capacité de s'exécuter en tâche de fond et propose une interface relativement simple.

L'application permet également d'enregistrer l'historique des positions dans un fichier .pos ([cf doc Qgis](https://jancelin.github.io/docs-centipedeRTK/docs/base/positionnement.html#qgis)), devenir serveur de données ou client d'un serveur de tracking.

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

* Il est necessaire d'avoir démarré une fois à blanc le serveur pour que le dossier **RtkGps**, sur votre smartphone, soit créé.
* Télécharger [settings.zip](https://github.com/jancelin/RtkGps/releases/download/1.1-Alpha2/settings.zip) et le déposer dans le dossier **RtkGPS** de votre appareil android.
* Démarrer l'application RtkGPS+
* Dans le menu de gauche, faire défiler vers le bas et appuyer sur **Charger les paramètres**
* Une fois que la fenêtre de messages disparait, fermer et réouvrir l'application pour la prise en compte des nouveaux paramètres.
* tester l'application avec les flux d'entrée mobile tcp et base par defaut afin de vérifier que la solution RTK soit fix.

## Configuration

* Ouvrir RTKGPS+
* Autoriser l'appli pour le stockage de données et la localisation
* Cliquer sur le logo RTKGPS+ pour accéder aux paramètres
* Cliquer sur **Flux d'entrée**
  * Cliquer sur **Entrée Mobile**
    * Penser à l'alimentation de l'antenne GNSS
    * **Type** > **Bluetooth** (ou USB)
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
  * Le **Ratio** indique la précision du calcul.

![rtkgps+](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/rtkgps.png)

* Vous pouvez maintenant utiliser vos applications habituelles nécessitant la géolocalisation. Celle-ci est désormais effectuée par votre antenne externe et RTKGPS+.

![RTKrover](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/rtkgps_input.gif)


