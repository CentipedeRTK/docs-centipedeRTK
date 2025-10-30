---
layout: default
title: Matériels Agricoles
parent: Centipède & Matériels propriétaires
nav_order: 1
---

### Compatibilité des systèmes d’autoguidage avec Centipède-RTK

Ce travail de compatibilité a été réalisé par la chaire AgroTIC de SupAgro avec un groupe d’agriculteurs testeurs. Le tableau présente un extrait d’une liste non exhaustive des tests de compatibilité réalisés avec le réseau Centipède-RTK par les utilisateurs travaillant sur la culture de la vigne. Il recense les systèmes d’autoguidage ayant fonctionné dans différentes configurations. La Chambre d’agriculture de la Somme a également fait ce travail avec des utilisateurs travaillant sur des cultures industrielles.

## [Tableau de compatibilité des consoles agricoles](https://docs.google.com/spreadsheets/d/1esAuBDgaHBoh1Rt-au8_zdiMD-ZjMgYSSE-TdeE1UIk/edit?gid=0#gid=0)

## Exemples de connexion au caster Centipede avec du Matériel Agricole
 - ## [John Deere](#john-deere-1)
 - ## [Case IH](#case-ih-1)
 - ## [Fendt](#fendt-1)

___
### John Deere

| Antenne John Deere Star Fire SF3000 | Antenne John Deere Star Fire SF6000 |
|:-:|:-:|
| ![SF3000-ModemRTK](/assets/images/consoles_tracteurs/SF3000-ModemRTK.jpg)| _TODO: photo a inserer_ |
| _SF3000, support Deluxe, Modem RTK mobile 4G LTE_ | _SF6000, Modem RTK mobile 4G LTE_ |

**<span style="color: red">!! ATTENTION AVEC LES BASES TRIPLE FRÉQUENCE !!</span>** => [Incompatibilité](/docs/incompatible/)

Ce wiki a été réalisé essentiellement avec un command center 4, une antenne SF3000 en version 2.80S, entre mars 2021 (prises de vues photo) et decembre 2021 (finalisation de la rédaction avant parution en V1.0). Voir tableau de versions et bases documentaires en bas de page.

### **1)Pré-requis**
L'antenne Starfire (3000 ou 6000) devra être munie d'un modem JD "Mobile RTK Modem 4G LTE". 
Pour monter le modem sur l'antenne, suivre ce document: (lien vers la doc de montage du modem: DOC3 en bas de page)
- insertion de la carte SIM et préparation du modem: pages 7 et 8
- assemblage du modem avec une SF6000: pages 9 et 10
- assemblage du modem avec une SF3000 (habillage Deluxe): pages 11 et 12

Conditions requises pour RTK mobile John Deere extrait p30-1: (voir DOC2 en bas de page)
- GreenStar™ 3 ou console de 4e génération avec activation AutoTrac™
- L'un des récepteurs StarFire™ suivants:
        -  Récepteur StarFire™ 3000 avec activation SF2 Ready, activation RTK Ready et licence d'accès Mobile RTK John Deere
        -  Récepteur StarFire™ 6000 avec activation SF3 Ready, activation RTK Ready et licence d'accès Mobile RTK John Deere
- Modem Mobile RTK 4G LTE de John Deere
- Fournisseur de réseau cellulaire (fournisseur tiers: Orange etc...)
- Fournisseur de données de correction RTK (fournisseur tiers: Centipede par exemple)

Le modem doit être préalablement configuré (via un cable ethernet) pour fonctionner soit avec une SF3000, soit avec une SF6000 (voir p60-B1 a 60-B7 de DOC2) <_TODO: partie a préciser_> 

### **2) Vérifier mes licences**
Accéder à l'écran de configuration de l'antenne (voir page 30_2 de DOC2), puis sur l'onglet **Activations**

![SF3000-Principal-Activations](/assets/images/consoles_tracteurs/SF3000-Principal-Activations.jpg)
_Onglet Activation d'une SF3000 sur CommandCenter 4_
Pour que centipede fonctionne, il vous faudra les même licences que ci dessus:  SF1, SF2 ou SF3 Ready, RTK ainsi qu'une licence M-RTK  d'un an ou de 5 ans

### **3) Configurer ma carte SIM et le port série m-RTK**
Accéder à la page StarFire RTK Mobile depuis la page de l'antenne en appuyant sur le bouton suivant depuis l'ecran de l'antenne:
| Antenne John Deere Star Fire SF3000 | Antenne John Deere Star Fire SF6000 |
|:-:|:-:|
|![SF3000-Acces SF RTK Mobile-reduit](/assets/images/consoles_tracteurs/SF3000-Acces_SF_RTK_Mobile-reduit.jpg)|![SF6000-Acces SF RTK Mobile-reduit](/assets/images/consoles_tracteurs/SF6000-Acces_SF_RTK_Mobile-reduit.jpg)|
|_icône pour accéder à la page RTK Mobile sur une SF3000_|_icône pour accéder à la page RTK Mobile sur une SF6000_|

![SF3000-StarFire RTK mobile](/assets/images/consoles_tracteurs/SF3000-StarFire_RTK_mobile.jpg)
_Page StarFire RTK Mobile d'une SF3000 sur un Command Center 4_

Pour configurer le port série M-RTK, Appuyer sur **Paramètres série et Message NMEA: Config**

![SF3000-SF RTK Mobile - Config NMEA](/assets/images/consoles_tracteurs/SF3000-SF_RTK_Mobile-Config_NMEA.jpg)
_configuration du port série / NMEA d'un modem JD LTE_
les paramètres RS232 RTK sont **19200/8/N/1**
les messages NMEA sont Freq sortie: **5** et GGA **coché**
les limites d'age de connexion sont Age Max **15s** et Temps init min **5**

 **Annuler** ou **Confirmer** selon votre souhait:

| Annuler  | Confirmer|
|---|---|
|![SF3000-SF RTK Mobile - Annuler](/assets/images/consoles_tracteurs/SF3000-SF_RTK_Mobile-Annuler.jpg) | ![SF3000-SF RTK Mobile - Validation](/assets/images/consoles_tracteurs/SF3000-SFRTKMobile-Validation.jpg) |

Pour configurer la carte SIM, Appuyer sur **Modem et Reseau: Config**

![SF3000-SF RTK Mobile - Passerelle](/assets/images/consoles_tracteurs/SF3000-SF_RTK_Mobile-Passerelle.jpg)
_configuration de la carte SIM, pour une carte SIM Orange vendue avec une AirBox_

Pour exploiter les fonctions avancées (creation d'un profil, ...), référez vous aux pages page 60A-1 et 60A-2 de DOC2.
Si vous faites des essais avec une antenne déjà configurée pour un autre founisseur de correction RTK que centipede ou un autre fournisseur d'accès (changement de carte SIM), créez un nouveau profil, utilisez les fonctions de récupération des paramètres modem pour pouvoir conserver vos réglages initiaux (_TODO: tuto à completer sur cette opération_)
Les **Paramètres passerelle** dépendent du fournisseur d'accès et de la carte SIM.
Quelques exemples de paramètres pour les fournisseurs d'accès rencontrés:

| Fournisseur d'accès  | Type d'abonnement    | APN | ID Utilisateur| Mot de Passe|
|---|---|---|---|---|
| Orange | Forfait Let's Go 10Go |  orange.fr | orange | orange |
| _TODO_  | _Completer ce tableau_ |  xxx | xxxx| xxxxx|

Pour passer à la configuration des paramètres de correction (RTK), appuyer sur **Page suivante**. Sinon **Annuler** ou **Confirmer** selon votre souhait:

| Annuler  | Page précédente | Page suivante | Confirmer|
|---|---|---|---|
|![SF3000-SF RTK Mobile - Annuler](/assets/images/consoles_tracteurs/SF3000-SF_RTK_MobileAnnuler.jpg) | ![SF3000-SF RTK Mobile - Page precedente](/assets/images/consoles_tracteurs/SF3000-SF_RTK_MobilePagePrecedente.jpg) |![SF3000-SF RTK Mobile - Page suivante](/assets/images/consoles_tracteurs/SF3000-SF_RTK_MobilePageSuivante.jpg) | ![SF3000-SF RTK Mobile - Validation](/assets/images/consoles_tracteurs/SF3000-SF_RTK_MobileValidation.jpg) |

### **4) Configurer centipede**

Pour afficher cet écran, suivre les instruction du 3)Configurer ma carte SIM, et appuyer sur **Page suivante**.

![SF3000-SF RTK Mobile - PAra Donnee correction](/assets/images/consoles_tracteurs/SF3000-SF_RTK_Mobile-PAraDonneeCorrection.jpg)
_configuration sur la base SIM80 du caster centipede_

Les données à rentrer sur cet écran sont:
IP/URL: **crtk.net**
Port: **2101**
Pt de montage: choisissez la base la plus proche/la plus adaptée a votre situation géographique en **MAJUSCULES** 
Explorer cette carte pour trouver la base la plus proche: https://map.centipede-rtk.org/index.php/view/map?repository=cent&project=centipede

pour rentrer ID utilisateur et mot de passe, appuyer sur **Modifier Infos Connexion**

ID utilisateur: **centipede**
mot de passe: **centipede**
noubliez pas d'appuyer sur le bouton **"Confirmer"** jusqu'a revenir à l'écran "StarFire RTK Mobile"
 
pour plus de précision, vous référer a la page 60A-3 de DOC2

### **5) Est ce que ca marche?**
L'image ci dessous montre en antenne en fonctionnement:
Le "Mode Position" doit etre **M-RTK 3D**.
L'état du modem doit être **Branché**.
L'âge des corrections doit être de 2 secondes ou moins.
Le chiffre des données recues doit défiler de plusieurs ko par secondes (j'ai constaté une consommation d'un peu plus de 2 Mo par heure)) 
![SF3000-StarFire RTK mobile](/assets/images/consoles_tracteurs/SF3000-StarFire_RTKmobile.jpg)


Documents de référence :

 - DOC1: PFP12907_John_Deere_Mobile_RTK_FR.pdf :John Deere RTK Mobile, Guide de référence [PFP12907_John_Deere_Mobile_RTK_FR.pdf](https://github.com/jancelin/centipede/files/7530133/PFP12907_John_Deere_Mobile_RTK_FR.pdf)
 - DOC2: OMPFP21126.pdf : Modem Mobile RTK 4G LTE de John Deere, livret d'entretien, Edition F1 (French) [OMPFP21126.pdf](https://github.com/jancelin/centipede/files/7530139/OMPFP21126.pdf)
 - DOC3: PFP22140_28.pdf: Modem Mobile RTK 4G LTE de John Deere, notice de montage, 21JUN21 (French) [PFP22140_28.pdf](https://github.com/jancelin/centipede/files/7530147/PFP22140_28.pdf)

| Version | Date  | Auteur | Modifications effectuées |
|---|---|---|---|
| V0.1 | 02/12/2021 | AgroGeek (SB) | typo et ajout du tableau de version et modifs a la version initiale |
| V0.2 | 03/12/2021 | AgroGeek (SB) | ajout du 3) Configurer le port série de l'antenne |
| V0.3 | 03/12/2021 | AgroGeek (SB) | ajout dans le 4) de la config sur port série M-RTK et version de l'antenne en entete  |
| V0.4 | 03/12/2021 | AgroGeek (SB) | retrait du 3) Configurer le port série de l'antenne |

| Version | Date | Auteur | Modifications a faire |
|---|---|---|---|
| V0.1 | 02/12/2021 | AgroGeek (SB) | Photo d'une SF6000 en Intro |
| V0.1 | 02/12/2021 | AgroGeek (SB) | Configuration du Modem pour SF3000 ou SF 6000|
| V0.1 | 02/12/2021 | AgroGeek (SB) | remplacer les mots DOC2 et DOC3 par des liens|
| V0.1 | 02/12/2021 | AgroGeek (SB) | Configuration de la carte SIM: Tuto pour créer de nouveaux jeux de données de configuration|
| V0.1 | 02/12/2021 | AgroGeek (SB) | Completer le tableau de fournisseur d'accès|


### Case IH

* Console Afs 700 pro débloquée RTK
* Antenne Trimble AG_372 
* Modem Sierra GX450

![Case IH](/assets/images/consoles_tracteurs/caseIH_1.jpg)

![Case IH](/assets/images/consoles_tracteurs/caseIH_2.jpg)

![Case IH](/assets/images/consoles_tracteurs/caseIH_3.jpg)

### Fendt

![Fendt](/assets/images/consoles_tracteurs/fendt_1.jpg)

![Fendt](/assets/images/consoles_tracteurs/fendt_2.jpg)





