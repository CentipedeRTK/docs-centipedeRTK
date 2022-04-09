---
layout: default
title: Activation du wifi
parent: Installation logiciel
grand_parent: Fabriquer une base RTK
nav_order: 7
---

## Activation du wifi

**Il n'est pas conseillé de faire fonctionner RTKBASE avec une connexion wifi, préférer une connexion ethernet filaire, si votre base est loin de votre réseau vous pouvez passer par des solutions comme le POE ou le CPL**

* Avoir flashé la carte SD avec l'image rtkbase.
* Enlever puis remettre la carte SD dans le PC pour monter et afficher les partitions dans un explorateur de fichier.
* Éditez ```/boot/wpa_supplicant.conf``` avec un éditeur de texte.
* Modifier cette section en modifiant **MY_WIFI_HOTSPOT** avec le nom de votre connexion wifi et les ******** avec votre mot de passe wifi.

```

network={
    ssid="MY_WIFI_HOTSPOT"
    psk="*******"
}
```

* Démonter la carte SD > l'insérer dans le RaspberryPi > et mettre sous tension
