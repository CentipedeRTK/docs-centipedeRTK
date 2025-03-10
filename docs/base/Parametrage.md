---
layout: default
title: Paramétrage
parent: Fabriquer une base RTK
nav_order: 3
---

## Connexion
Pour se connecter sur la page Web de RTKBase, on entre l'adresse `http://basegnss.local` dans un navigateur Web. Si ça ne fonctionne pas, on peut utiliser l'application "Find_rtkbase" qui va chercher à détecter la base, et permettre d'ouvrir son interface en cliquant sur le bouton "Open". (prérequis : RTKBase 2.6.3)

![Ecran de Find_rtkbase](/assets/images/basegnss/find_rtkbase_screenshot.png)
- Télécharger Find_rtkbase [(Windows)](https://github.com/Stefal/rtkbase/raw/refs/heads/master/tools/find_rtkbase/dist/find_rtkbase.exe) [(Linux)](https://github.com/Stefal/rtkbase/raw/refs/heads/master/tools/find_rtkbase/dist/find_rtkbase)

Autre solution, entrer l'adresse IP de la base dans le navigateur. Cette adresse IP peut être retrouvée depuis l'interface de votre modem/routeur (livebox, freebox, etc) ou avec des outils tels que [Angry IP Scanner (windows)](https://angryip.org/) ou [Port Authority (Android)](https://play.google.com/store/apps/details?id=com.aaronjwood.portauthority.free&pli=1)).

| <a href="../../assets/images/basegnss/ip_livebox.png"><img src="../../assets/images/basegnss/ip_livebox.png" alt="livebox" height="250"/> </a> | <a href="../../assets/images/basegnss/ip_angry_ip_scanner.png"><img src="../../assets/images/basegnss/ip_angry_ip_scanner.png" alt="livebox" height="250"/></a> | <a href="../../assets/images/basegnss/ip_port_authority.png"><img src="../../assets/images/basegnss/ip_port_authority.png" alt="livebox" height="250"/></a>

Sur les exemples ci-dessus, vous pouvez voir que la base utilise l'ip 192.168.1.12, donc dans la barre d'adresse du navigateur on peut entrer `http://192.168.1.12`  
Vous remarquerez que la base a vu son suffixe `.local` devenir `.home`. C'est la faute à la Livebox, ce sera peut-être différent chez vous.

Une fois arrivé sur la page de connexion, il suffit d'entrer le mot de passe par défaut (`admin`), qu'il est conseillé de modifier par la suite.

## Paramétrage

Maintenant nous allons nous occuper du premier paramétrage de la base.

RTKBase dispose de 3 onglets, <span style="color:#007BFF">**STATUS**</span>, <span style="color:#007BFF">**SETTINGS**</span> et <span style="color:#007BFF">**LOGS**</span>. Commençons par aller sur l'onglet <span style="color:#007BFF">**SETTINGS**</span> où il faut activer le "Main Service" s'il ne l'est pas déjà.

![Main Service actif](/assets/images/basegnss/rtkbase_main_service.png) 

Ensuite, allons sur l'onglet <span style="color:#007BFF">**STATUS**</span> où vous devriez voir le niveau de réception des satellites, et après quelques secondes de calculs, la position approximative de la base, représentée par la puce bleu sur la carte, ainsi que les coordonnées enregistrées de la base représentées par la cible noire :

![Onglet STATUS](/assets/images/basegnss/rtkbase_status.png)

Tout va bien ? Si oui, alors direction l'onglet <span style="color:#007BFF">**SETTINGS**</span>, et cliquons sur le bouton `Options` du service Ntrip A. Le réglage important est celui du nom de la base, qu'on indique dans le champs "mount name". Ce nom est à choisir par vous-même, ne doit pas dépasser **4 caractères en majuscules**, ne pas être déjà utilisé par une autre base, et en évitant les noms de villes importantes (LYON serait une mauvaise idée).

La liste des Mount Points déja déclarés sur le réseau est disponible **[dans ce tableau](https://logs.centipede.fr/d/eQQ2q6_4k/mount-point?orgId=1&viewPanel=2)**. (Faire un clic droit, ouvrir le lien dans un nouvel onglet). Dans l'interface vous pouvez cliquer sur le petit entonnoir gris pour faire directement une recherche en MAJUSCULE dans la liste.

Les autres options du service Ntrip A doivent être les suivantes :
* **Caster address** : par défaut **caster.centipede.fr**
* **Caster port** : par défaut **2101**
* **Caster password** : Le mot de passe pour le caster centipède est **centipede** (en minuscule, et sans accent)

Un clic sur le bouton `Save`, et c'est terminé.  

![Réglages Ntrip](/assets/images/basegnss/rtkbase_ntrip_service.png)

Non non ! On n'active pas le service Ntrip pour le moment, où alors on commencerait à envoyer un signal de correction avec des coordonnées fantaisistes.

En revanche, on active le `File Service`:

![File service actif](/assets/images/basegnss/rtkbase_file_service.png)

Ce service va enregistrer le signal de la base et créer une archive tous les jours à 4H00. Pour effectuer le calcul précis, il nous faut une archive contenant 24 heures d'enregistrement de 00H00 à 23H59. Donc, si nous sommes mardi, il faut patienter jusqu'à jeudi matin.

En attendant, vous pouvez aller lire les explications des différentes possibilités de RTKBase sur le [Guide de RTKBase](Guide_RTKBase).

Ca y est ? C'est jeudi ? Alors passons au calcul du [positionnement de la base](positionnement){: .btn .btn-blue }
