---
layout: default
title: Configuration du matériel
parent: Fabriquer un Rover RTK
nav_order: 2
has_children: true
---

## Configuration du récepteur GNSS F9P

#### Update du firmware de l'antenne

Dans un premier temps il est nécessaire de mettre à jour le [firmware](https://fr.wikipedia.org/wiki/Firmware) de votre module F9P

* [Install U-center](https://www.u-blox.com/en/product/u-center) (Windows seulement)

* [Update F9P firmware](https://drotek.gitbook.io/rtk-f9p-positioning-solutions/tutorials/updating-zed-f9p-firmware)

#### Injection des paramètres

L'injection permet de paramétrer le récepteur F9P pour une utilisation avec RTKlib et plus particulièrement RTKGPS+ sur Android

* Télécharger ce [fichier de configuration](https://raw.githubusercontent.com/jancelin/docs-centipedeRTK/master/assets/param_rtklib/F9P_rover_usb_uart1-34500b_5hz.txt)
* Ouvrir U-Center

![arduino](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/u-center.gif)

* Ouvrir la connection avec le recepteur F9P
* Aller dans **Tools** > **Receiver Configuration**
* Selectionner u-blox Generation 9
* Selectionner le fichier Précédement téléchargé
* Cliquer sur **Transfert file -> GNSS** et attendre que le transfert se réalise

Par mesure de prudence et s'assurer que la configuration est bien enregistrée:
* Cliquer sur **View** > **Configuration View**
* Cliquer sur **CFG (Configaration)**
* Cliquer sur **Send**
* Cliquer sur **Disconnect**
* Débrancher le récepteur

>Attention les données sortantes du recepteur sur l'USB et l'UART1 sont au format RAWX et SFRBX, pas en NMEA. 

## Configuration du module Bluetooth HC-05

Le module bluetooth HC-05 est livré avec des configurations d'origine (surtout la vitesse de transmission de données) qu'il faut modifier. Pour cela nous allons avoir besoin d'un arduino, de câbles jumpers pour connecter le HC-05 à l'arduino, d'un câble usb pour le relier au PC et enfin du programme Arduino à installer sur le pc afin de "discuter" avec le module bluetooth HC-05.

### Connection de l'arduino au module bluetooth HC-05

Connecter l'arduino au HC-05 avec les câbles: 

* VCC sur le 5Volt
* GND au GND
* RX pin 11
* TX pin 10
* EN pin 9

![arduino](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/arduino.jpg)

Connecter ensuite l'arduino au PC avec le cable USB

### Arduino

[Télécharger le programme arduino](https://www.arduino.cc/en/Main/Software) sur votre PC, l'installer, et lancer le programme.

![arduino](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/arduino.gif)

* Paramétrer le programme pour qu'il reconnaisse le matériel et la connexion:
  * Outils > Type de carte > Arduino Nano
  * Outils > Port > "choisir le port de connexion"
* Copier coller ce programme

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

* Appuyer sur la fêche en haut à gauche pour téléverser le programme dans l'arduino.
* Ouvrir le **Moniteur Serie** et régler les 2 menus déroulants sur:
  * **les deux, NL et CR**
  * **9600 baud**
* Ecrire la commande **AT** et appuyer sur **envoyer**: le moniteur doit renvoyer **OK**, cela veux dire que vous communiquer bien avec le module Bluetooth.
* Ecrire la commande **AT+UART=38400,1,0** et appuyer sur **envoyer**: le moniteur doit renvoyer **OK**, la vitesse de transmition à été modifié.
* Ecrire la commande **AT+NAME=CENTIPEDE** et appuyer sur **envoyer**: le moniteur doit renvoyer **OK**, le nom du module à été changé, vous pouvez vérifier sur un smartphone en faisant un scan bluetooth.

Le code PIN du bluetooth est par defaut **1234**, vous pouvez le modifier en renrant la commande **AT+PSWD=5678** + **envoyer** par exemple.

> plus d'informations sur les options de paramétrage [ici](https://retroetgeek.com/geek/arduino/configuration-du-module-hc-05-pour-arduino/)

Vous pouvez débrancher le module et passer à l'assemblage.













