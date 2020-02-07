## 5.2 Utilisation du positionnement centimétrique sur PC Windows 10 & y compris pour [AgOpenGps](http://agopengps.gh-ortner.com/doku.php?id=fr:start)

**Toujours vérifier la disponibilité d'une base [Centipede](https://centipede.fr) avant de l'utiliser**

Pour l'utilisation sur le terrain, vous devez disposer d'un matériel compatible (antenne et récepteur) ainsi que d'une connexion Internet mobile (3-4-5G) pour la réception des trames de correction du caster [Centipede)(https://centipede.fr)

### 5.2.1 Prérequis

#### Matériels

* Une tablette ou un PC sous windows 10

* Une [antenne GNSS bi-fréquence](https://store.drotek.com/da-910-multiband-gnss-antenna) ou bien la même chose chez un autre fournisseur [antenne GNSS bi-fréquence](https://www.ardusimple.com/product/simplertk2b/), d'autres modèles existent....

* Un [recepteur F9P](https://store.drotek.com/rtk-zed-f9p-gnss) ou bien la même chose chez un autre fournisseur [recepteur F9P](https://www.ardusimple.com/product/survey-gnss-multiband-antenna/), d'autres modèles existent....

* Un [câble antenne sma mâle tnc mâle 3m (longueur à adapter en fonction de votre projet)](https://www.mhzshop.com/shop/Cables-et-cordons/Sur-mesure/50-ohms-WiFi-4G/Cordon-sur-mesure-en-coax-faible-perte-WLL-240-2-4-5-GHz-6-1mm.html) dans le cas ou celui fournis avec l'antenne ne correspond pas à votre besoin.

#### Logiciels

* Le logiciel [Null-modem emulator](https://sourceforge.net/projects/com0com/files/latest/download) > création d'un virtual port COM pour utiliser les trames de géolocalisation NMEA corrigées en RTK comme un récepteur externe pour votre logiciel de collecte de donnée ou d'autoguidage.

* La dernière version du logiciel [RTKlib version Rtkexplorer demo5](http://rtkexplorer.com/downloads/rtklib-code/) > Calcul du postionnement en [RTK](https://fr.wikipedia.org/wiki/Cin%C3%A9matique_temps_r%C3%A9el) par [RTKlib](http://www.rtklib.com/) pour une géolocalisation centimétrique

* [AgOpenGps](https://github.com/farmerbriantee/AgOpenGPS) si vous souhaitez fabriquer votre propre autoguidage sur tracteur

### 5.2.2 Update du récepteur F9P

Le récepteur F9P n'a pas toujours son [firmware](https://fr.wikipedia.org/wiki/Firmware) à jour quand on le reçois, il est important de suivre cette procédure pour la suite:

* [Install U-center](https://www.u-blox.com/en/product/u-center) (Windows seulement)

* [Update F9P firmware](https://drotek.gitbook.io/rtk-f9p-positioning-solutions/tutorials/updating-zed-f9p-firmware)

### 5.2.3 Connexion et paramétrage

#### Paramétrage des ports COM et branchelent de l'antenne GNSS

Il est necessaire d'installer un virtual port COM sur windows pour récupérer la trame NMEA corrigé sur ce dernier.

* télécharger [Null-modem emulator](https://sourceforge.net/projects/com0com/files/latest/download) et l'installer.

* Une fois insatller ouvrir le logiciel et vérifier les port ouvert, dans l'exemple **COM9** reçois les messages et **COM 10** diffuse le massage (NMEA)

![COM](./images/rover_w/1.jpg)

* Brancher l'antenne + recepteur F9P en USB

* Ouvrir ensuite le [gestionnaire de périphériques](https://support.microsoft.com/fr-fr/help/4026149/windows-open-device-manager) et vérifier les ports COM, dans l'exemple **COM9** et **COM10** comme precedemnet expliqué et **COM7** le recepteur F9P en USB.

![COM](./images/rover_w/2.jpg)

> Reperez bien ces 3 Ports COM, il est indispensable de bien les identifier pour la suite du paramétrage, dans l'exemple:
> * **COM7**: Entrée USB de l'antenne GNSS
> * **COM9**: Sortie NMEA de RTKlib
> * **COM10**: Entrée de AgOpenGPS ou de tout autre logiciel de géolocalisation

#### 


