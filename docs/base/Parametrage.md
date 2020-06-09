---
layout: default
title: Paramétrage
parent: Fabriquer une base RTK
nav_order: 3
---

## Paramétrage

La première connexion sur http://basegnss.local demande un mot de passe (admin), il est souhaitable de le modifier par la suite.

![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss1.gif)

La base dispose de 3 onglets:

* **STATUS**: 
	* Visualisation de la qualité de réception de chaque satellite (graphique)
	* Postion approximative de la base.
	* Carte de situation de la base
* **SETTINGS**: activation en cliquant sur **ON/OFF** et paramétrage des services en cliquant sur **Options**
	* **Main service**: C'est le service permettant de récupérer les signanux des satellites et de les distribuer aux autres services (NTRIP,TCP,LOGS)
		* **Base coordinates**: C'est ici que vous rentrerez la position exact de votre base RTK après post traitement
		* **Com port**, **Com port settings**, **Receiver type**, **Receiver format**: sont des paramètres récupérés automatiquement au moment de la première installation, ils correspondent au type de matériel connecté au Raspberry-pi.
		* **Tcp port**: le port de communication de ce service
![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss_settings1.png)
	* **Ntrip service**: C'est ici que vous allez paramétrer votre base pour qu'elle soit accessible sur le réseau Centipede
		* **Caster address**: par defaut **caster.centipede.fr**
		* **Caster port**: par defaut **2101**
		* **Caster password**: Le mot de passe pour le caster centipede est **centipede**, il sera necessaire dans le futur de déclarer sa base à l'administrateur avant de pouvoir avoir une connexion au caster, le but est d'effectuer une vérification du calcul de position de la base RTK
		* **Mount name**: C'est le nom de votre Base RTK, à vous de choisir 4-5 caractères en Majuscule.
		* **Rtcm messages**: Par défaut la base est configurée pour envoyer certains messages mais vous avez la possibilité de les personaliser et de rajouter une fréquence d'envoie (ex: 1004(15),...). une liste des messages possible est disponible [ici](https://www.use-snip.com/kb/knowledge-base/rtcm-3-message-list/?gclid=EAIaIQobChMI6NC3pcj06QIVg53VCh3T1gG8EAAYASAAEgKGD_D_BwE)
![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss_settings2.png)
	* **Rtcm server service**: il est possible de se connecter directement à sa base RTK pour recevoir la trame de correction RTCM3, cette option peut être activé en plus du Ntrip Service.
		* **Rtcm server port**: port de sortie du flux de correction
		* **Rtcm server messages**: explication identique au Ntrip Service
![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss_settings3.png)
	* **File service**: Paramétrage des fichiers de logs necessaires, par exemple, au calcul de la position précise de la base. Il est conseillé de conserver les paramètres par défaut.
![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss_settings4.png)
* **System Settings**:
	* **Check update**: permet de vérifier et d'installer automatiquement les mises à jours de votre base RTK.
	* **Change Password**: permet de modifier le mot de passe necessaire pour se connecter à l'interface web.
![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss_settings5.png)
	* **Power**: permet de redémarrer(Reboot) et d'éteindre(Shutdown) votre base RTK
![base gnss](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss_settings6.png)
* **LOGS**: 
	* La base enregistre si le  **File service** est activé le flux de données des satellites. Ces fichiers peuvent être convertis en RINEX (prochainement un module dans la base RTK le permettra) afin de résaliser le calcul de la position précise.
	* Tous les jours à 04h du matin une compression des fichiers du jour précédent est effectuée en .zip
	* Pour lancer une conversion RINEX attendre 24h entières soit 1 journée complète (de 00:01:00 à 23:59:00). Par exemple, si vous démarrez vos logs le 18/07/2020 à 15h30 attendez jusqu'au 20/07/2020 matin.
	* Cliquer sur ![download](https://jancelin.github.io/docs-centipedeRTK/assets/images/basegnss/basegnss_logs_download.png) pour télécharger le .zip

Passer maintenant à la conversion en RINEX et ensuite au calcul du positionnement.

