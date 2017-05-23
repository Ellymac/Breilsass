# BREILSASS (IPW - CTR)


## Instructions d'installation (pré-requis)

* Récupérer le dépôt Git :
```
git clone https://github.com/Ellymac/Breilsass.git
```

* Installer les gems nécessaires :

```
bundle install
```

* Créer la base de données (avec 50 utilisateurs dont 1 admin) :

```
rails db:create
```

* Créer un fichier contenant les identifiants Gmail :
```
cd config/initializers/
touch app_env_vars.rb
```
et mettre ceci dans ce fichier
```
ENV['MAILER_EMAIL'] = 'votre_adresse@gmail.com'
ENV['MAILER_PASSWORD'] = 'votre_mot_de_passe'
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


Pour la gestion des utilisateurs, nous nous sommes aidés de l'ouvrage *Ruby on Rails Tutorial (Rails 5)* de Michael Hartl.
