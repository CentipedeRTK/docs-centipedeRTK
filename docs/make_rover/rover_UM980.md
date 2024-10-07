---
layout: default
title: Récepteur tri-fréquences UM980
parent: Rover RTK V6
nav_order: 2
---

### Liste


Voici la liste des éléments nécessaires à la mise en place d'un rover GNSS [Unicore UM980](https://en.unicore.com/products/surveying-grade-gnss-um980/) triple-fréquences:

<img src="https://en.unicore.com/uploads/image/20231116/16/multi-frequency.webp" width="200">

|Matériel|Prix HT|
|--------|----|
|[simpleRTK3B Budget](https://www.ardusimple.com/product/simplertk3b-budget/){:target="_blank"} ou [UM980 RTK GNSS receiver](https://gnss.store/unicore-gnss-modules/248-elt0223.html){:target="_blank"}|~200€|
|[Budget Survey Tripleband GNSS Antenna](https://www.ardusimple.com/product/budget-survey-tripleband-gnss-antenna-ip66/){:target="_blank"} ou [BT-800S](https://store.beitian.com/products/beitian-high-gain-high-precision-gnss-antenna-provide-stability-and-reliability-gnss-signal-for-positioning-applications-bt-800s?_pos=1&_sid=bcd57f6d3&_ss=r&variant=44374047490335){:target="_blank"}|~100€|

### paramétrer le récepteur GNSS UM980

* Brancher votre récepteur GNSS en USB au PC, ouvrir le **gestionnaire de périphériques**, cliquer sur **Ports** et noter le numéro de port **COM** de **USB Serial Port**. Dans mon exemple **12**

![param](/assets/images/mat/gesPerif.png)

* Ouvrir ce fichier en cliquant sur le lien puis faire **CTRL S** pour le sauvegarder dans le dossier de votre choix:
  * [conf_rover_GNSS_UM980.txt](/assets/param_files/UM98x/UM960_980_982_rover_fullNMEA_5hz.txt){:target="_blank"}
* Télécharger et installer [Realterm_exe](https://sourceforge.net/projects/realterm/files/latest/download){:target="_blank"}
  * Source: [Realterm_source](https://realterm.sourceforge.io/){:target="_blank"}
* Démarrer en mode administrateur (click droit) le programme **RealTerm**
* Cliquer sur l'onglet en bas à gauche **Port** puis:
  * Modifier le **Baud** à la valeur **15200**
  * Rechercher le **Port** de votre récepteur:
    * Si votre numéro de port n'est pas dans la liste, cliquer sur **/VCP0** puis sur **V change**, une nouvelle fenêtre s'ouvrira pour choisir quel Port COM connecter. Choisir celui que vous avez trouvé précédemment, dans mon exemple COM12.

> dans mon exemple le COM12 est **12=/VCP0** et cliquer sur **V Change** pour que s'affiche seulement le numéro

![param](/assets/images/mat/rt_port.png)
![param](/assets/images/mat/realterm_um980_1.jpg)

* Cliquer sur l'onglet **Send** puis:
  * modifier la deuxième valeur du **Delays** à **8000**
  * Dans **Dump File to Port** sélectionner le fichier téléchargé précédemment : **[conf_rover_GNSS_UM980.txt](/assets/param_files/UM98x/UM960_980_982_rover_fullNMEA_5hz.txt){:target="_blank"}**

![param](/assets/images/mat/realterm_um980_2.jpg)

* Cliquer enfin sur **Send**. Les commandes du fichier de configuration vont se succéder (en jaune), si il n'y en a pas c'est que le port COM à mal été configuré, revenir au début du paramétrage pour vérifier sur quel port le récepteur GNSS est branché.

![param](/assets/images/mat/rt_send.png)

* A la fin  de la procédure, il est écrit **Done** au dessus de la barre de progression. Des messages (en jaune) s'écrivent régulièrement (si vous avez une antenne branchée au récepteur GNSS et quelle est bien placée en extérieur)

![param](/assets/images/mat/rt_done.png)

* Si tout est OK vous pouvez maintenant débrancher votre récepteur GNSS du PC et le connecter en USB dans votre base GNSS
* Après les prochaines étapes, quand vous aurez accès à l'interface web de RTKBase, il sera nécessaire de modifier les paramètres du **Main Service** afin de les rendre compatible avec la configuration de l'UM980.

![UM980_RTKbase](/assets/images/mat/UM980_rtkbase.png)
