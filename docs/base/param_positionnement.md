---
layout: default
title: Paramétrage du positionnement dans la base
parent: Fabriquer une base RTK
nav_order: 5
---

## Modifier la valeur de la position dans la base RTK

* Revenir dans votre interface **http://basegnss.local** ou l'IP de votre Raspberry Pi
* Aller dans l'onglet **Settings** > **Main Service** > **Base Coordinates** et changer la position par celle calculée précédemment. exemple : **```47.0600276632 -1.3504949994 84.9147```**
![base gnss](/assets/images/basegnss/base_coordinates.png)
    
    Lorsque vous aurez enregistré ce paramètre en cliquant sur le bouton **Save**, la position exacte sera représentée par la cible visible sur la carte (Onglet 'Status')

    ![base gnss](/assets/images/basegnss/basegnss_coord_check.png)
    
    Si vous constatez que la position de la cible n'est pas du tout au bon endroit, alors vérifiez que vous n'avez pas inversé la latitude et la longitude, ou bien laissé un '-' devant une des coordonnées. Un écart de quelques mètres entre les 2 positions est normal.
* Vérifiez que vous avez bien activé le **Ntrip service** et que ses options sont bien renseignées, si vous effectuez une modification ne pas oublier d'appuyer sur **Save**.


![base gnss](/assets/images/basegnss/basegnss_position.png)

* [Déclarer maintenant votre Base sur le Réseau Centipède](Declaration){: .btn }
