---
layout: default
title: Rover RTK V6
parent: Fabriquer un Rover RTK
nav_order: 1
has_children: true
---

> En cours de développement/rédaction

<img src="/assets/images/montage_rover/v6_esp32.jpg" width="250">

### Matériel:

![ESP32](https://docs.espressif.com/projects/esp-idf/en/v4.4.4/esp32/_images/esp32-devkitC-v4-pinout.png)

```mermaid
graph TD;
    ESP32-->pin16_RX;
    pin16_RX-->UART1_TR;
    UART1_Tx-->GNSS;
    ESP32-->pin17_TX;
    pin17_TX-->UART1_RX;
    UART1_RX-->GNSS;
```

### Personnaliser son rover :

* Un rover Bluetooth : [esp32--android-BT](https://github.com/jancelin/rover-gnss/blob/master/unit_tests/8-BT/README.md){:target="_blank"}
* Un rover Bluetooth/UDP/serial avec NtripClient intégré: [esp32-wifi-ntrip](https://github.com/jancelin/rover-gnss/blob/master/unit_tests/3b-GNSS_RTK/README.md){:target="_blank"}

![rover V6](/assets/images/montage_rover/v6_esp32_1.jpg)

### Récepteurs GNSS compatibles:
