---
layout: default
title: Récepteur tri-fréquences Mosaic X5
parent: Rover RTK V6
nav_order: 1
---

## Liste

Voici la liste des éléments nécessaires à la mise en place d'un rover GNSS [Septentrio Mosaic X5](https://www.septentrio.com/en/products/gnss-receivers/gnss-receiver-modules/mosaic-x5) triple-fréquences:

<img src="https://www.septentrio.com/sites/default/files/products/product/mosaic-X5_650x650.png" width="200">

|Matériel|Prix HT|
|--------|----|
| [simpleRTK3B Pro](https://www.ardusimple.com/product/simplertk3b-x5/){:target="_blank"} ou [Linnet Mosaic-X5](https://www.systork.io/en/product/linnet-mosaic-x5/){:target="_blank"} |~550€|
|[Budget Survey Tripleband GNSS Antenna](https://www.ardusimple.com/product/budget-survey-tripleband-gnss-antenna-ip66/){:target="_blank"} ou [BT-800S](https://store.beitian.com/products/beitian-high-gain-high-precision-gnss-antenna-provide-stability-and-reliability-gnss-signal-for-positioning-applications-bt-800s?_pos=1&_sid=bcd57f6d3&_ss=r&variant=44374047490335){:target="_blank"}|~100€|


* Connecter le récepteur GNSS en USB à un PC, attendre 1 min le temps qu'il démarre.
* Se rendre à l'adresse http://192.168.3.1 pour accéder à l'interface Septentrio afin de paramétrer le récepteur.

![mosaic X5](/assets/images/mosaic_x5/x5-dashboard.png)

## Paramétrage par fichier:

[param file X5](/assets/param_files/mosaic_x5/mosaic-X5_nmea_full_5hz_460800.txt), "CTRL S" pour sauvegarder sur votre PC.

![mosaic X5](/assets/images/mosaic_x5/x5-sauvegarde.png)

##Paramétrage manuel:

### Activation sortie NMEA

![mosaic X5](/assets/images/mosaic_x5/x5-baudrate.png)
![mosaic X5](/assets/images/mosaic_x5/x5-newstream.png)
![mosaic X5](/assets/images/mosaic_x5/x5-newstreamç_serial.png)
![mosaic X5](/assets/images/mosaic_x5/x5-newstream_portcom.png)
![mosaic X5](/assets/images/mosaic_x5/x5-newstream_nmea.png)
![mosaic X5](/assets/images/mosaic_x5/x5-newstream_nmeaOK.png)

### Paramétrage satellites:

![mosaic X5](/assets/images/mosaic_x5/x5-expertPanel.png)
![mosaic X5](/assets/images/mosaic_x5/x5-expertPanel_signalTracking.png)

### Sauvegarde

![mosaic X5](/assets/images/mosaic_x5/x5-sauvegrade.png)
