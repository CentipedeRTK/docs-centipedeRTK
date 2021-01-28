---
layout: default
title: Paramétrage
parent: Fabriquer une base RTK
nav_order: 3
---

## Paramétrage

Pour la connexion sur `http://basegnss.local` (ou l'IP du Rasperry Pi) il est necessaire de saisir un mot de passe (`admin`), il est conseillé de le modifier par la suite.

![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss1.gif)

La base dispose de 3 onglets.

### STATUS

* Visualisation de la qualité de réception de chaque satellite (graphique)
* Position approximative de la base et la possibilité de copier les coordonnées
* Carte de situation de la base, le pictogramme bleu donne la position approximative instantanée, la cible la position exacte de la base renseignée dans SETTINGS >Main service > Base coordinates

### SETTINGS

Activation en cliquant sur **ON/OFF** et paramétrage des services en cliquant sur **Options**.

#### Main service

C'est le service permettant de récupérer les signaux des satellites et de les distribuer aux autres services (NTRIP,TCP,LOGS), **l'activation de ce service est indispensable pour le fonctionnement des suivants**

* **Base coordinates** : C'est ici que vous rentrerez la position exacte de votre base RTK après réception du rapport IGN ou post traitement

* **Com port**, **Com port settings**, **Receiver type**, **Receiver format** : sont des paramètres récupérés automatiquement au moment de la première installation, ils correspondent au type de matériel connecté au Raspberry-pi.

* **Antenna info** : Renseigner le type d'antenne que vous utilisez pour la réception. La plupart des antennes utilisées sont les suivantes: u-blox_ANN-MB-00, drotek_D910, ardusimple_AS-ANT2B-SUR, ardusimple_AS-ANT2B-CAL, BEITAN_BT-160, BT-47N, HX-CSX601A, Mini_Survey_Antenna_GPS500, mais il e existe d'autre. Pour certaines utilisation avec des récepteurs propriétaires il peut être necessaire de renseigner ADVNULLANTENNA.

* **Tcp port** : le port de communication de ce service

    ![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss_settings1.png)

#### Ntrip service

C'est ici que vous allez paramétrer votre base pour qu'elle soit accessible sur le réseau Centipede

* **Caster address** : par defaut **caster.centipede.fr**
* **Caster port** : par defaut **2101**
* **Caster password** : Le mot de passe pour le caster centipede est **centipede**, il sera necessaire dans le futur de déclarer sa base à l'administrateur avant de pouvoir avoir une connexion au caster, le but est d'effectuer une vérification de la position précise de la base RTK.
* **Mount name** : C'est le nom de votre Base RTK, à vous de choisir 4-5 caractères en Majuscule.
* **Rtcm messages** : Par défaut la base est configurée pour envoyer certains messages mais vous avez la possibilité de les personnaliser et de rajouter une fréquence d'envoie (ex: 1004(15),...). une liste des messages possible est disponible [ici](https://www.use-snip.com/kb/knowledge-base/rtcm-3-message-list/?gclid=EAIaIQobChMI6NC3pcj06QIVg53VCh3T1gG8EAAYASAAEgKGD_D_BwE)
* **Receiver options:** avec l'option par defaut ```-TADJ=1``` permet d'avoir des secondes rondes.

![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss_settings2.png)

#### Rtcm server service 

Il est possible de se connecter directement à sa base RTK pour recevoir la trame de correction RTCM3, cette option peut être activée en plus du Ntrip Service.

* **Rtcm server port** : port de sortie du flux de correction
* **Rtcm server messages** : explication identique au Ntrip Service
* **Receiver options:** avec l'option par defaut ```-TADJ=1``` permet d'avoir des secondes rondes.

    ![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss_settings3.png)
    
#### Rtcm serial service 

Il est possible de connecter un emmeteur radio pour recevoir la trame de correction RTCM3, cette option peut être activée en plus du Ntrip Service.

* **Rtcm server port** : port de sortie du flux de correction, il est necessaire de modifier 2 fichiers dans la partition /boot pour activer le port serie du Raspberry Pi, la méthode est expliqué dans la section [wifi et port serie](wifi_port_serie){: .btn }
* **Rtcm server messages** : explication identique au Ntrip Service
* **Receiver options:** avec l'option par defaut ```-TADJ=1``` permet d'avoir des secondes rondes.

    ![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss_settings7.png)

#### File service

Paramétrage des fichiers de logs nécessaires, par exemple, au calcul de la position précise de la base. Il est conseillé de conserver les paramètres par défaut. 

**Il est indispensable de démarrer ce service à la mise en route de la base afin de pouvoir calculer sa position précise**

**Ensuite, si vous n'avez pas l'utilité de faire du post traiment, il est recommandé, afin d'améliorer la durée de vie de la carte SD, de couper le service**.

![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss_settings4.png)

#### System Settings

* **Check update** : permet de vérifier et d'installer automatiquement les mises à jour de votre base RTK.
* **Change Password** : permet de modifier le mot de passe nécessaire pour se connecter à l'interface web.
* **Diagnostic**: affiche une nouvelle page web avec l'état des services.
* **Power** : permet de redémarrer(Reboot) et d'éteindre(Shutdown) votre base RTK

    ![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss_settings5.png)

### LOGS
	
* La base enregistre si le  **File service** est activé le flux de données des satellites. **Il est indispensable de lancer l'acquisition des logs pour le calcul du positionnement de la base**.
* Tous les jours à 04h du matin une compression des fichiers du jour précédent est effectuée en .zip, son poids est d'environ 160 Mo.
* Ces fichiers peuvent être convertis en RINEX (après 24h et compression en .zip) avec le bouton edit (crayon) afin de réaliser le calcul de la position précise.
* Pour lancer une conversion RINEX d'un fichier .zip attendre 24h entières soit 1 journée complète. Par exemple, si vous démarrez vos logs le 18/07/2020 à 15h30 attendez jusqu'au 20/07/2020 matin.
* Les fichiers convertis en RINEX sont également accessibles dans ce tableau au format **AAAA-MM-JJ-MP.20o**
  
    ![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss_settings6.png)

Passons maintenant au calcul de la [positionnement de la base](positionnement){: .btn }
