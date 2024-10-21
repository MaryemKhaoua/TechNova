# Contexte du projet
TechNova souhaite moderniser la gestion de ses utilisateurs, qui repose actuellement sur un système obsolète à base de feuilles de calcul

​

et de documents papier. La gestion manuelle devient inefficace et sujette aux erreurs. L'objectif est de développer un système moderne en

​

utilisant le Spring Framework, avec une architecture modulaire, scalable et intuitive pour gérer les utilisateurs.

​

## Objectifs :

​

Création de l'entité Utilisateur :

​

Chaque utilisateur doit avoir un ID unique, son nom, prénom, une pièce d'identification, sa nationalité, la date d'inscription, et la date d'expiration de son compte.

​

Configuration Spring :

​

L'entité Utilisateur doit être configurée comme un bean Spring dans un fichier de configuration basé sur XML.

​

Mise en place de deux portées différentes : singleton (pour un utilisateur unique tout au long du cycle de vie de l'application) et prototype (pour créer une nouvelle instance à chaque requête).

​

Injection de Dépendances :

​

Implémenter les méthodes pour ajouter, mettre à jour, et récupérer des utilisateurs.

​

Utiliser les trois types d’injections de dépendances Spring : Injection par constructeur, Injection par setter, Injection par interface.

​

Spring Data :

​

Configurer la source de données dans Spring (base de données relationnelle).

​

Utiliser Spring Data JPA pour la persistance des données des utilisateurs. La configuration doit être faite via XML.

​

Spring MVC :

​

Configurer la couche de présentation (interface utilisateur) en utilisant Spring MVC.

​

Les utilisateurs doivent pouvoir interagir avec le système via une interface web pour ajouter, modifier, et visualiser les informations.
