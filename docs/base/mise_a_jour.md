---
layout: default
title: Mise à jour
parent: Fabriquer une base RTK
nav_order: 7
---
## Mise à jour de RTKBase

De temps en temps, des mises à jour de RTKBase sont proposées, avec à la clef des améliorations, des nouvelles fonctionnalités, ou des corrections. Dans la plupart des cas, il suffit d'accéder à l'onglet <span style="color:#007BFF">**SETTINGS**</span>, cliquer sur le bouton **Check Update**, et valider la mise à jour s'il y en a une de disponible.

![base gnss](/assets/images/basegnss/update_1.png)

Si vous n'avez pas fait de mise à jour depuis longtemps, il peut être nécessaire de faire plusieurs fois cette procédure pour rattraper le retard.

## En cas de mise à jour refusée (Your Os is too old)

Pas de panique !
Ce message indique que le système d'exploitation qui fait fonctionner RTKBase est une version trop ancienne, et qu'il faut lui aussi le mettre à jour. Pour celà, le plus simple est de :

* Sauvegarder les paramètres de votre base, à l'aide du bouton **Backup**, puis éteignez-la en cliquant sur le bouton **Shutdown**.
* Sortir la carte micro SD de la base
* Suivre les étapes 2 à 6 de la page [Installation](Installation).
* Restaurer vos paramètres avec le bouton **Restore**, et en sélectionnant le fichier de sauvegarde créé précédemment.

![base gnss](/assets/images/basegnss/backup_restore_1.png)

Réactivez les services dont vous avez besoin, en général **Main service** et **Ntrip A service**.

Et voilà ! votre base utilise désormait la toute dernière version de RTKBase ainsi que la version la plus récente du système d'exploitation.
