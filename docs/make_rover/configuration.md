---
layout: default
title: Configuration des matériels GNSS et BT
parent: Fabriquer un Rover RTK
nav_order: 3
has_children: true
---

## Configuration du récepteur GNSS F9P

#### Update du firmware de l'antenne

Dans un premier temps il est nécessaire de mettre à jour le [firmware](https://fr.wikipedia.org/wiki/Firmware) de votre module F9P.

* [Install U-center](https://content.u-blox.com/sites/default/files/2022-04/u-center-v22.02_0.zip) (Windows seulement)

* Update F9P firmware :
  * Télécharger le fichier de mise à jour 1.13 ou 1.32 (https://www.u-blox.com/en/product/zed-f9p-module?file_category=Firmware%2520Update).
    * [1.13](https://content.u-blox.com/sites/default/files/UBX_F9_100_HPG130.aa1ce2137147f95bbde5532f1b495848.bin)
    * [1.32](https://content.u-blox.com/sites/default/files/2022-05/UBX_F9_100_HPG132.df73486d99374142f3aabf79b7178f48.bin)
  * Connecter en USB le récepteur F9P au PC
  * Ouvrir U-center en mode administrateur (click droit **Executer en mode administrateur**)
  * Connecter le récepteur (bouton en haut à gauche) au bon port COM
![firmware](https://gblobscdn.gitbook.com/assets%2F-LYSZeu4HjB-NrVI4riL%2F-LYbICDde_PqBQRMcCsl%2F-LYbIddBqnC-aXKJ1bxh%2FSans-titre-1.png?alt=media&token=240244db-09d5-40e8-9735-869651b9198e)
  * Vérifier que le récepteur est bien connecté
![firmware](https://gblobscdn.gitbook.com/assets%2F-LYSZeu4HjB-NrVI4riL%2F-LYbGvHfj8nIN6gywxBz%2F-LYbHSKTiJZ0j0qAf-5e%2Ficon_blink.png?alt=media&token=0f35cbc4-ce5a-4d3b-90f4-ecadc5a36821)
  * Cliquer sur **Tools** > **Firmware update...**
    * Choisir le .bin précédemment téléchargé dans **Firmware image**
    * Cocher **Use this baudrate for update** et choisir 9600
    * Décocher les 4 autres ( Enter safeboot, ...)
  * Cliquer sur **GO** (en bas à gauche de la fenêtre)
![firmware](https://gblobscdn.gitbook.com/assets%2F-LYSZeu4HjB-NrVI4riL%2F-LZ5-tu1J0X8sog9Xvkf%2F-LZ527USiWMS3Pjo5SXY%2Fstep4.png?alt=media&token=2e76981e-8874-4151-9c48-f5fa07cdcd69)
  * Attendre la fin de la procédure de mise à jour
![firmware](https://gblobscdn.gitbook.com/assets%2F-LYSZeu4HjB-NrVI4riL%2F-LZ52KPCRzypMK4cqtQW%2F-LZ52Z_bl9GHQP8dz7By%2Fstep6.png?alt=media&token=f8f7240b-79b4-4856-87ea-26e12c1aac36)


#### Injection des paramètres

L'injection permet de paramétrer le récepteur F9P pour une utilisation avec RTKlib et plus particulièrement RTKGPS+ sur Android

* Télécharger/créer le fichier de configuration: 
 * avec Firmware 1.13: [F9P_HPG1-13_Rover_USB_UART1-115200Bd_FREQ-800ms_GPS-GLO-GAL-BEI_Lefebure-SWMaps-RTKGP+.txt](/assets/param_rtklib/F9P_HPG1-13_Rover_USB_UART1-115200Bd_FREQ-800ms_GPS-GLO-GAL-BEI_Lefebure-SWMaps-RTKGP%2B.txt)
 * avec Firmware 1.32: [F9P_HPG1-32_Rover_USB_UART1-115200Bd_FREQ-800ms_GPS-GLO-GAL-BEI_Lefebure-SWMaps-RTKGP+.txt](/assets/param_rtklib/F9P_HPG1-32_Rover_USB_UART1-115200Bd_FREQ-800ms_GPS-GLO-GAL-BEI_Lefebure-SWMaps-RTKGP%2B.txt)

![arduino](/assets/images/montage_rover/u-center.gif)

* Aller dans **Tools** > **Receiver Configuration**
* Sélectionner u-blox Generation 9
* Sélectionner le fichier précédemment téléchargé
* Cliquer sur **Transfert file -> GNSS** et attendre que le transfert se réalise

Par mesure de prudence, s'assurer que la configuration est bien enregistrée :
* Cliquer sur **View** > **Configuration View**
* Cliquer sur **CFG (Configaration)**
* Cliquer sur **Send**
* Cliquer sur **Disconnect**
* Débrancher le récepteur

>Attention ! Les données en sortie du récepteur sur l'USB et l'UART1 sont au format RAWX, SFRBX (UBX) et en NMEA. Il est possible d'injecter du RTCM3 sur ces ports pour utiliser le moteur interne RTK de la F9P ou bien utiliser RTKlib grâce à la sortie de données UBX

**À partir d'ici votre récepteur est entièrement fonctionnel en USB**

## Ajouter un module Bluetooth

Le module bluetooth HC-05 est livré avec les configurations d'origine qu'il est nécessaire de modifier (notamment la vitesse de transmission de données).

Il est possible de le configurer directement avec un [câble série version FTDI](https://docs.centipede.fr/docs/make_rover/configuration.html#ajouter-un-module-bluetooth-hc-05-version-ftdi) ou avec un [arduino nano](https://docs.centipede.fr/docs/make_rover/configuration.html#ajouter-un-module-bluetooth-hc-05-version-arduino-nano):

## Ajouter un module Bluetooth HC-05: version FTDI

Le module bluetooth HC-05 est livré avec les configurations d'origine qu'il est nécessaire de modifier (notamment la vitesse de transmission de données).

Nous allons avoir besoin de câbles jumpers pour connecter le HC-05 à l'arduino, d'un câble USB pour le relier au PC et enfin d'un FTDI qui fait l'intermédiaire entre le câble USB et le module BT. Vérifier que le bouton poussoir du FTDI est bien en mode '5V'.

|Matériel|Prix HT|
|--------|----|
|[FTDI + câbles Femelle-Femelle](https://www.amazon.fr/FT232RL-Serial-Arduino-C%C3%A2ble-Modulo/dp/B075XK737D/ref=sr_1_10?keywords=Ftdi+Usb&qid=1652798495&sr=8-10)|5€|
|[câble USB A > USB mini-B](https://fr.rs-online.com/web/p/cables-usb/1862803/)|2.6€|

### Connexion du FTDI au module bluetooth HC-05

Connecter le FTDI au HC-05 avec les 4 câbles:

* **HC-05  <->  FTDI**
* VCC  <->  5V _(cable Violet sur la photo)_
* GND  <->  GND _(cable Vert sur la photo)_
* TX  <->  RX _(cable Blanc sur la photo)_
* RX  <->  TX _(cable Gris sur la photo)_

![FTDI](/assets/images/montage_rover/FTDI.jpg)

Connecter ensuite le FDTI au PC avec le câble USB tout en appuyant sur le bouton du module bluetooth. Si la fréquence de clignotement est environ 3sec, le module est bien prêt à être configuré. S'il clignote plusieurs fois par secondes, il n'est pas en mode 'configuration' : il faut déconnecter et reconnecter.

### Paramétrage du module HC-05 avec le logiciel Arduino

[Télécharger le programme Arduino](https://www.arduino.cc/en/Main/Software) sur votre PC, l'installer et lancer le programme.

* Appuyer sur la flèche en haut à gauche pour téléverser le programme dans l'arduino.
* Ouvrir le **Moniteur Série** (loupe en haut à droite de la fenêtre) et régler les 2 menus déroulants sur :
  * **les deux, NL et CR**
  * **9600 bauds**
* Écrire la commande **AT** et appuyer sur **envoyer** : le moniteur doit renvoyer **OK**, cela veut dire que vous communiquez bien avec le module Bluetooth.
* Écrire la commande **AT+UART=115200,1,0** et appuyer sur **envoyer** : le moniteur doit renvoyer **OK**, la vitesse de transmission a été modifiée.
* Écrire la commande **AT+NAME=CENTIPEDE** et appuyer sur **envoyer** : le moniteur doit renvoyer **OK**, le nom du module a été changé ( vous pouvez vérifier sur un smartphone en faisant un scan bluetooth).

Le code PIN du bluetooth est **1234** par défaut, vous pouvez le modifier en entrant la commande **AT+PSWD="5678"** + **envoyer** (dans cet exemple le code sera 5678).

> Plus d'informations sur les options de paramétrage [ici](https://retroetgeek.com/geek/arduino/configuration-du-module-hc-05-pour-arduino/)

## Ajouter un module Bluetooth HC-05: version arduino nano

Nous allons avoir besoin de câbles jumpers pour connecter le HC-05 à l'arduino, d'un câble USB pour le relier au PC et enfin du programme Arduino installé sur le PC afin de "discuter" avec le module bluetooth HC-05.

|Matériel|Prix HT|
|--------|----|
|[arduino nano](https://fr.rs-online.com/web/p/arduino/6961667)|13€|
|[câbles jumpers femelles](https://fr.rs-online.com/web/p/kit-de-cables-dupont/7916450/)|3€|
|[câble USB A > USB mini-B](https://fr.rs-online.com/web/p/cables-usb/1862803/)|2.6€|



Connecter l'arduino au HC-05 avec les câbles:

* VCC sur le 5 Volts
* GND au GND
* RX pin 11
* TX pin 10
* EN pin 9

![arduino](/assets/images/montage_rover/arduino.jpg)

Connecter ensuite l'arduino au PC avec le câble USB tout en appuyant sur le bouton du module bluetooth. Si la fréquence de clignotement est environ 3sec, le module est bien prêt à être configuré. S'il clignote plusieurs fois par secondes, il n'est pas en mode 'configuration'.

### Paramétrage du module HC-05 avec le logiciel Arduino

[Télécharger le programme Arduino](https://www.arduino.cc/en/Main/Software) sur votre PC, l'installer et lancer le programme.

![arduino](/assets/images/montage_rover/arduino.gif)

* Paramétrer le programme pour qu'il reconnaisse le matériel et la connexion :
  * Outils > Type de carte > Arduino Nano
  * Outils > Port > "choisir le port de connexion"
* Copier-coller le code ci-dessous :

```
#include <SoftwareSerial.h>

SoftwareSerial mySerial(10, 11); // RX, TX

void setup() {
  Serial.begin(9600);
  pinMode(9,OUTPUT); digitalWrite(9,HIGH);
  Serial.println("Enter AT commands:");
  mySerial.begin(38400);
}

void loop()
{
  if (mySerial.available())
  Serial.write(mySerial.read());

  if (Serial.available())
  mySerial.write(Serial.read());
}
```

* Appuyer sur la flèche en haut à gauche pour téléverser le programme dans l'arduino.
* Ouvrir le **Moniteur Série** (loupe en haut à droite de la fenêtre) et régler les 2 menus déroulants sur :
  * **les deux, NL et CR**
  * **9600 bauds**
* Écrire la commande **AT** et appuyer sur **envoyer** : le moniteur doit renvoyer **OK**, cela veut dire que vous communiquez bien avec le module Bluetooth.
* Écrire la commande **AT+UART=115200,1,0** et appuyer sur **envoyer** : le moniteur doit renvoyer **OK**, la vitesse de transmission a été modifiée.
* Écrire la commande **AT+NAME=CENTIPEDE** et appuyer sur **envoyer** : le moniteur doit renvoyer **OK**, le nom du module a été changé ( vous pouvez vérifier sur un smartphone en faisant un scan bluetooth).

Le code PIN du bluetooth est **1234** par défaut, vous pouvez le modifier en entrant la commande **AT+PSWD=5678** + **envoyer** (dans cet exemple le code sera 5678).

> Plus d'informations sur les options de paramétrage [ici](https://retroetgeek.com/geek/arduino/configuration-du-module-hc-05-pour-arduino/)

Une fois cette étape terminée, vous pouvez débrancher le module et passer à l'assemblage.
