## 4.2 Déclaration

### mofifier la valeur de la posiotion dans la base RTK

* Revenir dans votre interface **http://centipede.local:8000**

* Modifier **```settings.conf```** et changer la position par celle calculée précedement **```position='46.164793681 -0.948418958 63.0686'```**

* Enregistrer **```ctrl s```** 

* lancer les commandes **```F2 > Stop Rtcm3```** & **```F2 > Start Rtcm3```** pour redemarrer le service avec la nouvelle configuration.

![cmd_rtcm3](./images/param/cmd_stop_rtcm.png)
![cmd_rtcm3](./images/param/cmd_start_rtcm.png)

### Vérifier que la connexion avec le caster fonctionne

* Se rendre dans le dossier **```/rtkbase/rover/Test_Base2caster```**
* Clic droit sur le fichier `**```rtkrcv.conf```** > **```Edit```**
* Modifier la ligne 106 : **```:@caster.centipede.fr:2101/BASE:```** en changeant le nom de la base par la votre (attention concerver le **:** à la fin : **```@caster.centipede.fr:2101/FOOO:```**
* Enregistrer **```ctrl s```**

![cmd_rtcm3conf](./images/param/cmd_rtkrcvconf.png)

* Cliquez sur **```F2 > RTK reveiver OFF```** puis **```F2 > RTK reveiver ON```**

![cmd_rtcm3](./images/param/cmd_rtkrcv1.png)

* Taper **```status 1```** Entrer & Vérifier que vous avez des valeurs sur la ligne **```# of rtcm messages rover: ```**

> ex : **```# of rtcm messages rover: 1004(43),1005(2),1006(2),1012(43),1019(19),1020(14),1042(8),1045(29),1046(29),1077(44),1087(44),1097(44),1127(44)```**

![cmd_rtcm3](./images/param/cmd_rtkrcv2.png) 

* Si l'étape précédente est OK alors votre base GNSS RTK fonctionne bien avec le [caster Centipede](http://caster.centipede.fr:2101).
* Pour sortir taper: **```shutdown```** 

## Declaration sur le Réseau Centipede

* Enfin, envoyer un courriel à **contact@centipede.fr** pour activer votre base sur la [Carte](https://centipede.fr):
    * Nom Prénom
    * Profession
    * Courriel
    * Nom du point (de 3 à 5 caractères en Majuscule)
    * Matériel utilisé.
    * Un rapport de votre calcul de positionnement (si possible)

Une fois que votre base sera déclaré par un adminstrateur elle sera visible sur la carte.

Un test de fonctionnement est réalisé toutes les 30 minutes sur l'ensemble du Réseau, si votre base RTK ne renvoie pas de signal au caster (panne électrique, coupure réseau, problème matériel,...) un mail vous sera envoyé automatiquement pour prévenir du disfonctionnement.

Si vous recevez des mails alors que tout fonctionne merci de contacter un adminstrateur à à **contact@centipede.fr** en détaillant ce problème.

