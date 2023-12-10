# Découverte Digitale des Saveurs Asiatiques de Paris - Platform RiceGuide

## 1. Auteurs

- Tuan Hung NGUYEN (M2 THYP) - 21006891
- Jiaqi Ai (M2 MTI)

## 2. Introduction

L'objectif de ce projet est de promouvoir la véritable cuisine asiatique à Paris via une plateforme interactive. Cette plateforme offrira un système dédié à la gastronomie asiatique de Paris, couvrant une variété de cuisines asiatiques telles que chinoise, vietnamienne, thaïlandaise, japonaise, coréenne, et plus. Elle permettra aux utilisateurs de filtrer les restaurants en fonction de leurs préférences gustatives et fournira des annotations pour les restaurants les plus authentiques. En plus des informations de base telles que l'adresse, les notes, les photos, elle inclura également le coût moyen par personne, les sites web des restaurants et leurs coordonnées. Son mécanisme d'évaluation est unique : les utilisateurs n'ont pas besoin de noter le restaurant, mais ont plutôt deux options : recommander ou ne pas recommander.

## 3. Répartition des Tâches

- Tuan Hung : Responsable de la majorité des tâches de développement (codage, création de la base de données, déploiement).
- Jiaqi : Responsable de la partie conception, de la collecte de données sur les restaurants et des tests de l'application.

## 4. Rétroplanning

Vous pouvez consulter notre rétroplanning à l'adresse suivante : [Gantt Chart](https://docs.google.com/spreadsheets/d/1Smf0AGayYaKLLXAY-mYy6bWEJUkBLgUWZ6znTZX_G3g/edit?usp=sharing)

## 5. Maquette de la Base de Données

a. ![Diagramme de la Base de Données](https://github.com/gnuh96/TourismeHypermedias/blob/master/src/assets/svg/SQL%20Diagram.svg)

b. [Script sql](https://github.com/gnuh96/TourismeHypermedias/blob/master/omk/bdd/omk.sql)

## 6. Modélisation sémantique de la BDD

a. [Vocabulaire du projet](https://github.com/gnuh96/TourismeHypermedias/blob/master/bdd/vocab.ttl)

b. [Ressource templates de l’application](https://github.com/gnuh96/TourismeHypermedias/tree/master/bdd/rt)

## 7. Dessins, brouillons, ou tests de l’interface graphique

[Dessins de l’interface graphique](https://www.figma.com/file/bumM9HJ1ksmESBlTSkAdIx/CusineTHYP?type=design&node-id=0%3A1&mode=design&t=WRH0K6uTpD6LlS3F-1)

## 8. Tests de fonctionnalités : issues github

- [Issue #2](https://github.com/gnuh96/TourismeHypermedias/issues/2)
- [Issue #3](https://github.com/gnuh96/TourismeHypermedias/issues/3)

## 9. Retour d’expérience ou réflexion personnelle.

a. Tuan Hung NGUYEN 

Ce projet représente une opportunité exceptionnelle pour traverser toutes les étapes de la création d'une application en équipe. Il est important de souligner que la recherche d'une idée, la collecte de données, et la gestion de projet sont autant de facettes cruciales de ce processus. En tant que Développeur Web Fullstack, cette expérience revêt une signification particulière pour moi, notamment parce que ma collègue ne possède pas de compétences informatiques. Cela m'a permis de développer la capacité de travailler avec des clients qui ne sont pas familiers avec l'informatique, nécessitant une communication claire pour expliquer les fonctionnalités et les procédures de test, entre autres. Il m'obligeant à adapter mon langage technique pour le rendre accessible. De plus, j'ai eu l'occasion de me familiariser avec de nouvelles technologies telles qu'OmekaS, MongoDb, et Docker. Cette expérience s'est avérée extrêmement bénéfique, non seulement pour mon travail actuel en entreprise, mais aussi en perspective pour mon avenir professionnel.

b. Jiaqi

## 10. Structure du projet

- Branche dev_versionOmekaS : le branche qui va connecter avec le back Omeka
- Branche master : le branche qui va connecter avec le back NodeJs
- ./riceGuide-back : Serveur NodeJs avec MongoDB, qui est déployé dans Docker avec docker-compose

## 11. Prototype fonctionnel

## Autre

- Présentation : (https://github.com/gnuh96/TourismeHypermedias/blob/master/src/assets/Hypermedia.pdf)
