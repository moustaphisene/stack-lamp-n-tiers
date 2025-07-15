# Architecture du Site Web de TDSI-UCAD
Ce dépôt contient l'ensemble des éléments nécessaires au fonctionnement du site web de TDSI de test.
L'architecture technique repose sur une stack LAMP (Linux, Apache, MySQL, PHP) déployée selon un modèle d'architecture 3-tiers, offrant ainsi une séparation claire des responsabilités et une scalabilité optimale.

# Architecture 3-tiers
Notre solution technique s'articule autour de trois couches distinctes, chacune hébergée sur une machine dédiée :

    1. Couche de Présentation (Front-end)
       Technologies : Apache 2.4, PHP 8.0
       Rôle : Cette couche gère l'interface utilisateur et l'exécution du code applicatif
       Contenu : La branche master du dépôt contient l'intégralité du code source PHP nécessaire au fonctionnement du site
       Fonctionnement : Le serveur Apache interprète les requêtes HTTP et exécute le code PHP pour générer les pages dynamiques
       2. Couche de Données (Back-end)
          Technologie : MySQL 8.0
          Rôle : Gestion centralisée de toutes les données du système
          Contenu : Les scripts SQL nécessaires à la création et à la configuration de la base de données sont disponibles dans la branche sql du dépôt
          Fonctionnement : Ce serveur dédié assure la persistance des données et répond aux requêtes SQL provenant de la couche applicative
       3. Couche Réseau
          Technologie : Bind9 (DNS) et DHCP
          Rôle : Gestion des services réseau et résolution des noms de domaine et attribution automatique des addresses IPs aux PCs client.
          Fonctionnement : Ce serveur assure la traduction des noms de domaine en adresses IP et gère la configuration réseau nécessaire au bon fonctionnement de l'ensemble du système
          Prérequis de Déploiement
# Pour un fonctionnement optimal, l'architecture nécessite :

    Trois machines distinctes (physiques ou virtuelles) pour héberger chaque couche
    Une configuration réseau appropriée permettant la communication sécurisée entre les différentes couches
    Une synchronisation parfaite entre les différentes versions des composants (branches master et sql)

# Avantages de cette Architecture
Cette architecture 3-tiers avec stack LAMP offre plusieurs avantages :

    Scalabilité : Chaque couche peut être dimensionnée indépendamment selon les besoins
    Sécurité : Isolation des composants critiques (notamment la base de données)
    Maintenabilité : Séparation claire des responsabilités entre les différentes couches
    Performance : Optimisation des ressources pour chaque type de traitement

Pour toute question relative au déploiement ou à la configuration de cette architecture, veuillez consulter la documentation technique détaillée disponible dans le dépôt.
