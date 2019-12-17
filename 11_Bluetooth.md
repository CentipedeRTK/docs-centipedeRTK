
## 6.2 Bluetooth

Le Bluetooth est utile en mode Rover comme antenne mobile pour de l'acquision ou du positionnnement sur le terrain. le partage de la trame NMEA via bluetooth permet par exemple d'avoir une précison centimétrique sur votre smartphone et donc sur l'ensemble des applications utilisants la géolocalisation.

**Au préalable, avoir installé et paramètré sur android [cette appli](https://play.google.com/store/apps/details?id=googoo.android.btgps&hl=fr)**

* Activer le [mode développeur](https://www.androidpit.fr/comment-activer-options-developpeurs-android) sur votre smartphone ou tablette android
* Activer la position fictive sur Android (paramètres > system > options pour développeurs) pour l'application installé 
* l'activation du bluetooth s'effectue par la commande **```F2 > Start BT```** 
* se placer dans le dossier **```/rtkbase/rover/kinematic_BT_nmea/```**
* Modfier si besoin le fichier **```/rtkbase/rover/kinematic_BT_nmea/rtkrcv.conf```** ligne 107 et changer le nom du mountPoint par le votre **```inpstr2-path =:@caster.centipede.fr:2101/XXXX:```**
* connecter votre smartphone ou un PC sur le point Bluetooth **```centipede```**
* démarrer l'appli Bluetooth GPS sur votre smartphone, cocher **```Enable Mock GPS Provider```** (partage de position) et **```START```
* cliquer sur **```F2 > RTK Receiver ON```** sur l'interface de la base RTK.
> vous pouver taper **```stream```** **```status 1```** ou **```solution 1```** pour verifier la connexion et ou le positionnement son correct



