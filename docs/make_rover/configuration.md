---
layout: default
title: Configuration du matériel
parent: Fabriquer un Rover RTK
nav_order: 2
has_children: true
---

## Configuration du récepteur GNSS F9P

#### Update du firmware de l'antenne

Dans un premier temps il est nécessaire de mettre à jour le [firmware](https://fr.wikipedia.org/wiki/Firmware) de votre module F9P.

* [Install U-center](https://www.u-blox.com/en/product/u-center) (Windows seulement)

* [Update F9P firmware](https://drotek.gitbook.io/rtk-f9p-positioning-solutions/tutorials/updating-zed-f9p-firmware)

#### Injection des paramètres

L'injection permet de paramétrer le récepteur F9P pour une utilisation avec RTKlib et plus particulièrement RTKGPS+ sur Android

* Télécharger le [fichier de configuration](https://raw.githubusercontent.com/jancelin/docs-centipedeRTK/master/assets/param_rtklib/F9P_rover_usb_uart1-34500b_5hz.txt)
* Ouvrir U-Center

![arduino](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/u-center.gif)

* Ouvrir la connexion avec le recepteur F9P
* Aller dans **Tools** > **Receiver Configuration**
* Sélectionner u-blox Generation 9
* Sélectionner le fichier précédement téléchargé
* Cliquer sur **Transfert file -> GNSS** et attendre que le transfert se réalise

Par mesure de prudence, s'assurer que la configuration est bien enregistrée :
* Cliquer sur **View** > **Configuration View**
* Cliquer sur **CFG (Configaration)**
* Cliquer sur **Send**
* Cliquer sur **Disconnect**
* Débrancher le récepteur

>Attention ! Les données en sortie du récepteur sur l'USB et l'UART1 sont au format RAWX et SFRBX, pas en NMEA. 

## Configuration du module bluetooth HC-05

Le module bluetooth HC-05 est livré avec les configurations d'origine qu'il est nécessaire de modifier (notamment la vitesse de transmission de données). Pour cela nous allons avoir besoin de câbles jumpers pour connecter le HC-05 à l'arduino, d'un câble USB pour le relier au PC et enfin du programme Arduino installé sur le PC afin de "discuter" avec le module bluetooth HC-05.

### Connexion de l'arduino au module bluetooth HC-05

Connecter l'arduino au HC-05 avec les câbles: 

* VCC sur le 5Volt
* GND au GND
* RX pin 11
* TX pin 10
* EN pin 9

![arduino](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/arduino.jpg)

Connecter ensuite l'arduino au PC avec le câble USB.

### Arduino

[Télécharger le programme Arduino](https://www.arduino.cc/en/Main/Software) sur votre PC, l'installer et lancer le programme.

![arduino](https://jancelin.github.io/docs-centipedeRTK/assets/images/montage_rover/arduino.gif)

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
* Ouvrir le **Moniteur Serie** et régler les 2 menus déroulants sur :
  * **les deux, NL et CR**
  * **9600 baud**
* Écrire la commande **AT** et appuyer sur **envoyer** : le moniteur doit renvoyer **OK**, cela veut dire que vous communiquez bien avec le module Bluetooth.
* Écrire la commande **AT+UART=38400,1,0** et appuyer sur **envoyer** : le moniteur doit renvoyer **OK**, la vitesse de transmition a été modifiée.
* Écrire la commande **AT+NAME=CENTIPEDE** et appuyer sur **envoyer** : le moniteur doit renvoyer **OK**, le nom du module a été changé ( vous pouvez vérifier sur un smartphone en faisant un scan bluetooth).

Le code PIN du bluetooth est **1234** par défaut, vous pouvez le modifier en entrant la commande **AT+PSWD=5678** + **envoyer** (dans cet exemple le code sera 5678).

> Plus d'informations sur les options de paramétrage [ici](https://retroetgeek.com/geek/arduino/configuration-du-module-hc-05-pour-arduino/)

Une fois cette étape terminée, vous pouvez débrancher le module et passer à l'assemblage.


