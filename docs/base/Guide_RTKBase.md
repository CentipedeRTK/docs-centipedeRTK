---
layout: default
title: Guide RTKBase
parent: Fabriquer une base RTK
nav_order: 7
---



Pour la connexion sur `http://basegnss.local` (ou l'IP du Rasperry Pi) il est nécessaire de saisir un mot de passe (`admin`), il est conseillé de le modifier par la suite.

![base gnss](/assets/images/basegnss/basegnss_v2.4.1.gif)

La base dispose de 3 onglets.

## STATUS

* Visualisation de la qualité de réception de chaque satellite (graphique).
* Position approximative de la base et la possibilité de copier les coordonnées.
* Carte de situation de la base, le pictogramme bleu donne la position approximative instantanée, la cible la position exacte de la base renseignée dans SETTINGS >Main service > Base coordinates.

## SETTINGS

Activation en cliquant sur **ON/OFF** et paramétrage des services en cliquant sur **Options**.

### Main service

C'est le service permettant de récupérer les signaux des satellites et de les distribuer aux autres services (NTRIP,TCP,LOGS, ...), **l'activation de ce service est indispensable pour le fonctionnement des suivants**.

![base gnss](/assets/images/basegnss/basegnss_settings_main.png)

* **Base coordinates** : C'est ici que vous rentrerez la position exacte de votre base RTK après réception du rapport IGN ou post-traitement. Cette position doit être entrée sous la forme "Latitude Longitude Élevation".

    
    Lorsque vous aurez enregistré ce paramètre, la position exacte sera représentée par la cible visible sur la carte (Onglet 'Status')

    ![base gnss](/assets/images/basegnss/basegnss_coord_check.png)
    
    Si vous constatez que la position de la cible n'est pas du tout au bon endroit, alors vérifiez que vous n'avez pas inversé la latitude et la longitude, ou bien laissé un '-' devant une des coordonnées.

* **Com port**, **Com port settings**, **Receiver type**, **Receiver format** : sont des paramètres récupérés automatiquement au moment de la première installation, ils correspondent au type de matériel connecté au Raspberry Pi.

* **Antenna info** : Renseigner le type d'antenne sans calibration **ADVNULLANTENNA**.

* **Tcp port** : le port de communication de ce service.
* **Bouton Detect/Configure** : Si le récepteur n'a pas été détecté au premier démarrage, ce bouton permet de relancer sa détection (detect), le configurer (configure), ou d'enchainer les 2 actions (Detect and Coonfigure).  
 La détection ne fonctionne qu'avec un récepteur F9P connecté en Usb. En revanche, la configuration peut fonctionner avec un récepteur connecté en Uart si le port a été indiqué correctement dans le champ **Com port**.
 ![detect & configure](/assets/images/basegnss/basegnss_settings_detect-configure.png)


### Ntrip A service

C'est ici que vous allez paramétrer votre base pour qu'elle soit accessible sur le réseau Centipede

![base gnss](/assets/images/basegnss/basegnss_settings_ntrip_a.png)

* **Caster address** : par défaut **caster.centipede.fr**
* **Caster port** : par défaut **2101**
* **Caster password** : Le mot de passe pour le caster centipède est **centipede**.
* **Mount name** : C'est le nom de votre Base RTK, à vous de choisir **4 caractères en majuscule**.
* **Rtcm messages** : Par défaut la base est configurée pour envoyer certains messages, mais vous avez la possibilité de les personnaliser et de rajouter une fréquence d'envoie (ex: 1004(15),...). une liste des messages possible est disponible [ici](https://www.use-snip.com/kb/knowledge-base/rtcm-3-message-list/?gclid=EAIaIQobChMI6NC3pcj06QIVg53VCh3T1gG8EAAYASAAEgKGD_D_BwE)
* **Receiver options** : l'option par défaut ```-TADJ=1``` permet d'avoir des secondes rondes.

### Ntrip B service

Il s'agit du même type de service que "Ntrip A service". Il peut être utile pour envoyer les données vers un autre caster en parallèle du premier.

### Ntrip Caster service

Permet d'activer un caster directement dans RTKBase. Une fois activé, votre rover pourra se connecter directement sur la base. Attention, pour que ça fonctionne, il faudra connaitre l'adresse ip publique de votre réseau (ou utiliser un service tel que Dyndns) et certainement modifier les paramètres de votre modem/routeur pour rediriger le port 2101 vers votre base.

![service caster local](/assets/images/basegnss/basegnss_settings_local_caster.png)

* **Local caster username** : le nom d'utilisateur que vous devrez entrer sur le rover pour qu'il puisse se connecter au caster de la base. (optionnel)
* **Local caster password** : le mot de passe à utiliser sur le rover pour se connecter au caster de la base. (optionnel)
* **Local caster port** : le port sur lequel pourra se connecter le rover. La valeur par défaut est 2101.
* **Local caster mount name** : nom du point de montage de votre base sur le caster local.
* **Local caster rtcm messages** : Liste des messages Rtcm envoyés par la base
* **Local caster receiver options** : l'option par défaut ```-TADJ=1``` permet d'avoir des secondes rondes.

### Rtcm server service 

Il est possible de se connecter directement à sa base RTK pour recevoir la trame de correction RTCM3, cette option peut être activée en plus du Ntrip Service.

![base gnss](/assets/images/basegnss/basegnss_settings_rtcm_tcp.png)

* **Rtcm server port** : port de sortie du flux de correction
* **Rtcm server messages** : explication identique au Ntrip Service
* **Receiver options** : l'option par défaut ```-TADJ=1``` permet d'avoir des secondes rondes.
    
### Rtcm serial service 

Il est possible de connecter un émetteur radio pour recevoir la trame de correction RTCM3, cette option peut être activée en plus du Ntrip Service.

![base gnss](/assets/images/basegnss/basegnss_settings_serial.png)

* **Rtcm server port** : port de sortie du flux de correction, il est nécessaire de modifier 2 fichiers dans la partition /boot pour activer le port série du Raspberry Pi, la méthode est expliquée dans la section [port série](port_serie){: .btn }
* **Rtcm server messages** : explication identique au Ntrip Service
* **Receiver options** : l'option par défaut ```-TADJ=1``` permet d'avoir des secondes rondes.

### File service

Paramétrage des fichiers de logs nécessaires, par exemple, au calcul de la position précise de la base ou à du post-traitement. Il est conseillé de conserver les paramètres par défaut. 

![base gnss](/assets/images/basegnss/basegnss_settings_file.png)

**Il est indispensable de démarrer ce service à la mise en route de la base afin de pouvoir calculer sa position précise**

**Ensuite, si vous n'avez pas l'utilité de faire du post-traitement, il est recommandé, afin d'améliorer la durée de vie de la carte SD, de couper le service**.

### System Settings

![base gnss](/assets/images/basegnss/basegnss_settings_system.png)

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

## LOGS
 
![base gnss](/assets/images/basegnss/basegnss_settings6.png)

* Si le  **File service** est activé, la base enregistre le flux de données des satellites. C'est ici qu'on va retrouver ces fichiers. **Il est indispensable de lancer l'acquisition des logs pour le calcul du positionnement de la base**.
* Tous les jours à 04h du matin une compression du ou des fichiers du jour précédent est effectuée en .zip, son poids est d'environ 160 Mo.
* Ces fichiers zip (et seulement eux) peuvent être convertis en RINEX avec le bouton edit (crayon ![crayon](/assets/images/basegnss/basegnss_logs_pencil.png) ). 4 préréglages sont disponibles.
![conversion rinex](/assets/images/basegnss/basegnss_rinex_conversion.png)
* L'icône ![download](/assets/images/basegnss/basegnss_logs_download.png) permet de télécharger le fichier.
* L'icône ![corbeille](/assets/images/basegnss/basegnss_logs_trash.png) sert à effacer un fichier de l'espace de stockage de la base.

* Les fichiers convertis en RINEX sont également accessibles dans ce tableau au format **AAAA-MM-JJ-nom-du-point-de-montage_nom-du-préréglage**. Par exemple, **2023-03-02-EMONIE_ign.23o**



