# BREILSASS (IPW - CTR)


## Instructions d'installation (pré-requis)

* Installer les gems nécessaires :

```
bundle install
```

* Réinitialiser la base de données (avec création de 50 utilisateurs dont 1 admin) :

```
rails db:migrate:reset
rails db:seed
rails db:migrate
```


## Instructions d'utilisation

* Pour les tests unitaires :

```
rails test
```

* Pour lancer sur un serveur local :

```
rails server
```


## Équipe CTR

* **ESTEOULLE Thomas** *(TPS)*
* **PINCEMIN Renan** *(TPS)*
* **SCHNELL Camille** *(ENSIIE)*
