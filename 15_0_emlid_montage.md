## 8.1 Base Emlid

Voici la liste des éléments nécessaires à la mise en place d'une base RTK L1:

|Matériel|Prix HT|
|--------|----|
|[Emlid Reach M+](https://store.emlid.com/product/reachm-plus/)|240€|
|[Tallysman multi-GNSS antenna](https://store.emlid.com/product/tallysman-multi-gnss-antenna/)|54€|
|[Câble d'extension d'antenne](https://store.emlid.com/product/reach-antenna-extension-cable-2m/)|11€|
|[Feuille aluminium (plan de masse)](https://fr.rs-online.com/web/c/abrasifs-materiaux-techniques/tubes-feuilles-et-angles-en-aluminium/feuilles-en-aluminium/?searchTerm=aluminium&sort-by=P_breakPrice1&sort-order=asc&applied-dimensions=4294555449)|12€|
|[Alimentation](https://fr.rs-online.com/web/p/adaptateurs-ac-dc/1770223/)|6€|
|En Option||
|[Dissipateur chaleur](https://fr.rs-online.com/web/p/dissipateurs-de-chaleur/1263113/)|13€|
|[Pâte thermique](https://fr.rs-online.com/web/p/graisse-thermique/0554311/)|7€|

> scratch 3M ?

Un accès WIFI proche de la base est indispensable pour assurer la connexion du récepteur au réseau internet. Si ce n'est pas le cas, il est possible d'utiliser des CPL ethernet et wifi pour se déporter le réseau wifi vers la zone d'installation de votre antenne. Attention, dans cette configuration le CPL doit être connecté sur la même phase de votre réseau électrique que votre point d'accès à internet (Box).

> Exemple d'utilisation d'un RPI pour les réseaux wifi institutionnels ?

## 3.2 Choix de la zone d'implantation

La zone d'implantation de l'antenne de réception ne nécessite pas une position dominante, mais doit proposer une visibilité maximum du ciel ; il est indispensable de ne pas avoir d'obstacles (bâtiments, arbres, murs ...) sous les 30 premiers degrés par rapport à la base de l'antenne.

![sky_view](image/montage/skyview-obstacles_1.png)

## 3.3 Installation de l'antenne de réception et du Reach M+

### 3.3.1 Installation de l'antenne de réception L1-L2

### 3.3.2 Installation de l'antenne de réception L1 EMLID

L'antenne [Tallysman multi-GNSS antenna](https://store.emlid.com/product/tallysman-multi-gnss-antenna/) doit être placée sur un plan de masse en métal ([préconisation du constructeur](http://www.tallysman.com/wp-content/uploads/Embedded-Antennas-Reference-Guide.pdf)) de 10 cm afin d'améliorer la réception des données satellitaires. Il peut être fabriqué en aluminium, inox ou cuivre. Il doit disposer d'un trou central pour le fixer avec un boulon tête fraisée sur un support (mât, toiture, borne béton...) et d'un deuxième trou pour faire passer le fil de l'antenne.
> [Note pour plus tard](https://www.fig.net/resources/proceedings/fig_proceedings/fig2017/ppt/ts08c/TS08C_zhang_schwieger_8513_ppt.pdf)

Coller ensuite l'antenne sur le plan de masse, rajouter le câble d'extension de 2 mètres si nécessaire (en fonction de la configuration de pose) et connecter le Reach M+.

![groundPlane](image/montage/ground_plane.jpg)

Le Reach M+ doit être positionné dans un endroit abrité du soleil direct et de la pluie, si possible en intérieur et dans une zone lui permettant de capter le signal wifi de votre box. Si vous n'avez pas de wifi disponible, vous pouvez utiliser un [cpl wifi](https://www.boulanger.com/ref/8002139?xtor=SEC-1294-GOO&xts=171153&origin=pla&kwd=&gclid=EAIaIQobChMI1tTns9TN4wIVkEPTCh1dzAA7EAYYAiABEgKVZvD_BwE&gclsrc=aw.ds) ou un [Raspberry Pi](https://github.com/jancelin/geo-poppy/wiki/2.-Installation). Il est également possible de le connecter avec un avec un cable ethernet ([exemple de montage](https://jancelin.github.io/centipede/3_2_ethernet)) mais pas pour la phase de mise à jour (wifi uniquement).

Voici plusieurs exemples de montage de bases RTK :

![antenne](image/montage/antenne.jpg)

En cas de montage extérieur, il est important de rajouter un dissipateur de chaleur sur le module RTK. La procédure de montage est disponible ici:

[Installation d'un dissipateur thermique](https://jancelin.github.io/centipede/3_1_dissipateur)

## 3.4 Premières configurations

Le Reach M+ est mis sous tension.

* Se connecter au réseau wifi du Reach ("reach:xx:xx") en utilisant le mot de passe __emlidreach__.

* Ouvrir un navigateur (de préférence Mozilla Firefox ou Google Chrome) et taper http://reach.local ou http://192.168.42.1 pour accéder à l'interface de configuration du reach

* Cliquer sur le bouton + et entrer le SSID de votre réseau wifi, le type de sécurité et le mot de passe. Cliquer sur le bouton Save.

* Sélectionner votre réseau wifi et cliquer sur Connect.

* Mettre à jour le Reach M+

* Reboot

![reachupdate](image/montage/reachupdate.jpg)

* Une fois le reach connecté sur votre réseau wifi, une nouvelle IP lui est attribuée ; c'est celle-ci qui est utilisée par la suite (http://reach.local fonctionne également). Cette IP est visible sur l'interface Web du Reach, en haut à gauche de l'écran.

![reachview](image/montage/reachview1.png)

> Note : il est également possible de faire ces manipulations via l'application [ReachView](https://play.google.com/store/apps/details?id=com.reachview&hl=fr) (disponible sur Android et iOS) sur une tablette ou un smartphone.

### 4.1 Paramétrage de la position des satellites

Paramétrer le recepteur en postionnnement static 

![reachview](image/positionnement/RTK_setting1.png)

La valeur du *Update rate* conditionne le nombre de mesures par seconde. 

### 4.2 Récupération des données nécessaires

Afin d'utiliser le reach en tant que base fixe, il est indispensable de définir ses coordonnées le plus précisément possible.
Pour ce faire, nous activons l'enregistrement des positions dans la rubrique logging, en activant l'option *Raw data* (position ON). Les options *Position* et *Base correction* ne doivent pas être activées pour l'instant.

![reachview](image/positionnement/reach_log.png)

L'enregistrement se fait pendant une période minimale de 12h00 consécutives. Les positions enregistrées sont ensuite post-traitées en s'appuyant sur la trame de l'antenne RGP la plus proche (IGN - <a href="http://rgp.ign.fr">En savoir plus</a>), enregistrée sur la même période. Plus l'antenne de référence sera proche, meilleure sera la précision de localisation de notre base.

Plusieurs méthodes de post-traitements existent, et ce sont les conditions locales (éloignement de l'antenne de référence, modèle de l'antenne,  visibilité de la constellation ...) qui aident à déterminer la méthode la plus pertinente.

* Télécharger le fichier UBX (Raw_xxx_UBX.zip) en cliquant sur l'icône.
> Le téléchargement n'est possible qu'en stoppant préalablement les logs (*Raw Data* sur OFF).

#### 4.4.1 RTKCONV

```
./rtkconv.exe
```

* Renseigner la date start et end (la même)
* Renseigner l'heure : start 00:01:00 et end 23:59:00
* Interval = 5s
* Unit= 24 h
* Charger le fichier UBX
* Sélectionner le format u-blox
* Cliquer sur options 
    * changer la version Rinex (2.11 : celle de la base RGP)
    * cocher ```Scan Obs Types``` ```Half Cyc Corr``` ```Iono Corr``` ```Time Corr``` ```Leap sec```
    * Satellite systems: ```GPS``` ```GLO``` ```GAL```
    * Observation types: ``` C L D S ```
    * Frequencies: ```L1``` ```L2```
    * Time Torelance (s): ```0```
* Cliquer sur Convert
* En sortie, nous récupérons 6 fichiers :
    - *.nav*, *.qnav*, *.lnav*, *.gnav*, *.hnav*, *.obs*


### 4.6.2 Emlid

Pour connecter la base au caster, se rendre dans la rubrique *Base mode* de l'interface du reach :

![reachview](image/positionnement/reach_cor_output.png)

Modifier les valeurs suivantes (en se basant sur les paramètres enregistrés dans *ntripcaster.conf*)

   - Choisir l'option *NTRIP*
   - Indiquer l'URL du caster dans le champ *Address* : caster.centipede.fr
   - Choisir le port 2101
   - Indiquer le mot de passe: centipede
   - Choisir/Indiquer le nom du Mount point
   
> Votre base est immédiatement opérationnelle mais n'apparaitra sur la [carte](https://centipede.fr/index.php/view/map/?repository=centipede&project=centipede){:target="_blank"} et bénificiera des options du service (mail d'alerte en cas de déconnection, visibilité de sa position et de son état) seulement après validation par l'administrateur.

### 4.5.2 Emlid

 Ces valeurs doivent être enregistrées dans la rubrique *Base mode* de l'interface du Reach.
 
   Dans l'onglet *Base coordinates* (LLH), mettre le *Coordinates input mode* sur Manual puis enregistrer les valeurs de longitude, latitude et hauteur.
   
![reachview](image/positionnement/reach_base_coord.png)
 
> Dans nos conditions expérimentales, nous avons obtenu une précision inférieure à 1 centimètre. :+1:

## 4.6 Connexion de la base au caster

Avant de pouvoir utiliser le réseau Centipède il est indispensable de faire une demande de connection au Caster (gratuit et sans obligations). les demandes sont à envoyer à contact@centipede.fr en précisiant:

   - Votre situation géographique (commune)
   - Nom, prénom
   - Adresse mail
   - Type de matériel utilisé pour la base RTK
   - Proposition de nom de Mout Point ( entre 3 et 5 caractères)

------------------------------------------------------------

