---
layout: default
title: Guide RTKBase
parent: Fabriquer une base RTK
nav_order: 7
---



Pour la connexion sur `http://basegnss.local` (ou l'IP du Rasperry Pi) il est nécessaire de saisir un mot de passe (`admin`), il est conseillé de le modifier par la suite.

![base gnss](/assets/images/basegnss/basegnss1.gif)

La base dispose de 3 onglets.

## STATUS

* Visualisation de la qualité de réception de chaque satellite (graphique).
* Position approximative de la base et la possibilité de copier les coordonnées.
* Carte de situation de la base, le pictogramme bleu donne la position approximative instantanée, la cible la position exacte de la base renseignée dans SETTINGS >Main service > Base coordinates.

## SETTINGS

Activation en cliquant sur **ON/OFF** et paramétrage des services en cliquant sur **Options**.

### Main service

C'est le service permettant de récupérer les signaux des satellites et de les distribuer aux autres services (NTRIP,TCP,LOGS), **l'activation de ce service est indispensable pour le fonctionnement des suivants**.

* **Base coordinates** : C'est ici que vous rentrerez la position exacte de votre base RTK après réception du rapport IGN ou post-traitement. Cette position doit être entrée sous la forme "Latitude Longitude Élevation".

    ![base gnss](/assets/images/basegnss/base_coordinates.png)
    
    Lorsque vous aurez enregistré ce paramètre, la position exacte sera représentée par la cible visible sur la carte (Onglet 'Status')

    ![base gnss](/assets/images/basegnss/basegnss_coord_check.png)
    
    Si vous constatez que la position de la cible n'est pas du tout au bon endroit, alors vérifiez que vous n'avez pas inversé la latitude et la longitude, ou bien laissé un '-' devant une des coordonnées.

* **Com port**, **Com port settings**, **Receiver type**, **Receiver format** : sont des paramètres récupérés automatiquement au moment de la première installation, ils correspondent au type de matériel connecté au Raspberry Pi.

* **Antenna info** : Renseigner le type d'antenne sans calibration **ADVNULLANTENNA**.

* **Tcp port** : le port de communication de ce service.

    ![base gnss](/assets/images/basegnss/basegnss_settings1.png)

### Ntrip A service

C'est ici que vous allez paramétrer votre base pour qu'elle soit accessible sur le réseau Centipede

* **Caster address** : par défaut **caster.centipede.fr**
* **Caster port** : par défaut **2101**
* **Caster password** : Le mot de passe pour le caster centipède est **centipede**, il sera nécessaire dans le futur de déclarer sa base à l'administrateur avant de pouvoir avoir une connexion au caster, le but est d'effectuer une vérification de la position précise de la base RTK.
* **Mount name** : C'est le nom de votre Base RTK, à vous de choisir **4 caractères en majuscule**.
* **Rtcm messages** : Par défaut la base est configurée pour envoyer certains messages, mais vous avez la possibilité de les personnaliser et de rajouter une fréquence d'envoie (ex: 1004(15),...). une liste des messages possible est disponible [ici](https://www.use-snip.com/kb/knowledge-base/rtcm-3-message-list/?gclid=EAIaIQobChMI6NC3pcj06QIVg53VCh3T1gG8EAAYASAAEgKGD_D_BwE)
* **Receiver options:** avec l'option par défaut ```-TADJ=1``` permet d'avoir des secondes rondes.

![base gnss](/assets/images/basegnss/basegnss_settings2.png)

### Ntrip B service

Il s'agit du même type de service que "Ntrip A service". Il peut être utile pour envoyer les données vers un autre caster.

### Rtcm server service 

Il est possible de se connecter directement à sa base RTK pour recevoir la trame de correction RTCM3, cette option peut être activée en plus du Ntrip Service.

* **Rtcm server port** : port de sortie du flux de correction
* **Rtcm server messages** : explication identique au Ntrip Service
* **Receiver options:** avec l'option par défaut ```-TADJ=1``` permet d'avoir des secondes rondes.

    ![base gnss](/assets/images/basegnss/basegnss_settings3.png)
    
### Rtcm serial service 

Il est possible de connecter un émetteur radio pour recevoir la trame de correction RTCM3, cette option peut être activée en plus du Ntrip Service.

* **Rtcm server port** : port de sortie du flux de correction, il est nécessaire de modifier 2 fichiers dans la partition /boot pour activer le port série du Raspberry Pi, la méthode est expliquée dans la section [port série](port_serie){: .btn }
* **Rtcm server messages** : explication identique au Ntrip Service
* **Receiver options:** avec l'option par défaut ```-TADJ=1``` permet d'avoir des secondes rondes.

    ![base gnss](/assets/images/basegnss/basegnss_settings7.png)

### File service

Paramétrage des fichiers de logs nécessaires, par exemple, au calcul de la position précise de la base ou à du post-traitement. Il est conseillé de conserver les paramètres par défaut. 

**Il est indispensable de démarrer ce service à la mise en route de la base afin de pouvoir calculer sa position précise**

**Ensuite, si vous n'avez pas l'utilité de faire du post-traitement, il est recommandé, afin d'améliorer la durée de vie de la carte SD, de couper le service**.

![base gnss](/assets/images/basegnss/basegnss_settings4.png)

### System Settings

* **Check update** : permets de vérifier et d'installer automatiquement les mises à jour de votre base RTK.
* **Change Password** : permets de modifier le mot de passe nécessaire pour se connecter à l'interface web.
* **Gnss receiver** : Affiche le type de récepteur installé dans la base ainsi que la version du firmware si elle peut être détectée.
* **Board** : Indique le type de carte installée dans la base (Raspberry Pi, Orange Pi Zero, autre...)
* **Os** : Affiche le système d'exploitation et sa version.
* **CPU Temp** : Affiche la température actuelle du processeur de la carte, et la température maximale relevée dans le passé (depuis le dernier démarrage)
* **Uptime** : Affiche depuis combien de temps la base est en fonctionnement sans interruption.
* **Storage** : Affiche l'espace disponible sur la carte micro-SD et l'espace total.
* **Settings** : **Backup** permet de sauvegarder les paramètres de RTKBase. **Restore** permet de réinjecter les paramètres de RTKBase depuis un fichier préalablement enregistré avec "Backup", par exemple lorsqu'on a du reflasher la carte micro-SD. **Reset** permet de réinitialiser les paramètres de RTKBase à leur valeur par défaut (y compris le mot de passe de connexion).
* **Diagnostic**: affiche une nouvelle page web avec l'état des services.
* **Power** : permet de redémarrer(**Reboot**) et d'éteindre(**Shutdown**) votre base RTK.

    ![base gnss](/assets/images/basegnss/basegnss_settings5.png)

## LOGS
 
* Si le  **File service** est activé, la base enregistre le flux de données des satellites. C'est ici qu'on va retrouver ces fichiers. **Il est indispensable de lancer l'acquisition des logs pour le calcul du positionnement de la base**.
* Tous les jours à 04h du matin une compression du ou des fichiers du jour précédent est effectuée en .zip, son poids est d'environ 160 Mo.
* Ces fichiers zip (et seulement eux) peuvent être convertis en RINEX avec le bouton edit (crayon ![crayon](/assets/images/basegnss/basegnss_logs_pencil.png) ). 4 préréglages sont disponibles.
![conversion rinex](/assets/images/basegnss/basegnss_rinex_conversion.png)
* L'icône ![download](/assets/images/basegnss/basegnss_logs_download.png) permet de télécharger le fichier.
* L'icône ![corbeille](/assets/images/basegnss/basegnss_logs_trash.png) sert à effacer un fichier de l'espace de stockage de la base.

* Les fichiers convertis en RINEX sont également accessibles dans ce tableau au format **AAAA-MM-JJ-MP.20o**
  
    ![base gnss](/assets/images/basegnss/basegnss_settings6.png)



