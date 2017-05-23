# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  User.create!(username:  "admin",
  email: "breilsass@gmail.com",
  password:              "admins",
  password_confirmation: "admins",
  admin:     true,
  activated: true,
  activated_at: Time.zone.now)

  User.create!(username:  "Camille",
  email: "camille@elsass.bzh",
  password:              "12345678",
  password_confirmation: "12345678",
  admin:     true,
  activated: true,
  activated_at: Time.zone.now)

  User.create!(username:  "Thomas",
  email: "estouille@elsass.bzh",
  password:              "abcdef",
  password_confirmation: "abcdef",
  admin:     true,
  activated: true,
  activated_at: Time.zone.now)

  User.create!(username:  "Renan",
  email: "renan@elsass.bzh",
  password:              "a1b2c3",
  password_confirmation: "a1b2c3",
  admin:     true,
  activated: true,
  activated_at: Time.zone.now)

  Article.create!(title: "La flammekueche", content:"<p>Alors amis bretons, l'odeur du feu d'une cheminée vous attire ? Vous auriez bien envie de manger une flammekueche non ?</p>
  <p>Allez-y, laissez-vous tenter par ce met délicieux mais gare à vous ! Jamais, au grand jamais ne prononcez ce mot.</p>
  <p>Tarte flambée, voilà comment vous devez l'appeler si vous ne voulez pas vous ramasser un coup par un Alsacien fervant de sa langue.</p>", image: "flammekueche.jpg", user_id: 1)

  Article.create!(title: "Les galettes et les crêpes", content:"<p>Si je dis \"Bretagne\", je sais que la première chose à laquelle vous pensez ce sont les galettes et les crêpes. L'odeur de la pâte et l'arôme de celles-ci !</p>
  <p>Par contre, soyez vigilants sur les mots que vous employez : les Bretons sont gentils sauf quand on se trompe dans leur vocabulaire !!!</p>
  <p>Salé = galette, sucré = crêpe ! Notez bien ça quelque part avant d'y aller. Certains ont seulement été refusés d'un restaurant, mais sachez que d'autres ont fini en kouign amann !</p>", image: "galette.jpg", user_id: 1)

  Article.create!(title: "L'Alsace oui !! La langue euhhhhhh...", content:"<p>Je pourrais vous faire peur directement avec des mots proches de l'allemand, je vous imagine déja partir en courant ! Donc commençons sobrement.</p>
  <p>Si votre boss vous dit: \"Vous avez libre mercredi\", chanceux que vous êtes, il vous laisse votre mercredi.</p>
  <p>Allons un peu plus loin avec des mots plus breto... barbares bien sûr :</p>
  <p>- salut bissame ('bissomeuh') = salut tout le monde</p>
  <p>- un schtück = un morceau</p>
  <p>- un schlouk = une gorgée</p>
  <p>- des schlapps/schloppeuh = des chaussons</p>
  <p>- hopla = ouf (onomatopée de soulagement)</p>
  <p>- a guete ('goueteuh') = bon appétit ! Ce à quoi on répond \"a bessere\".</p>
  <p>- jetzt geht's los, là c'est plus dure de comprendre ! Bon allez ça veut dire \"let's go!\".</p>
  <p>Je vous laisse profiter d'une liste plutôt immense d'expressions avec leur signification (en français ouf) et même la prononciation pour les plus motivés d'entre vous ! <a href=\"http://www.orthal.fr/expressions.php\"><em>Expressions Alsaciennes</em></a></p>
  <p></p>
  <p>Ouf j'ai failli oublier le plus important ! Il faut <b>impérativement</b> finir toutes ses phrases par \"Allez Racing !\".</p>
  <p>Je pense qu'on est bon, vous voilà paré pour visiter l'Alsace.</p>", image: "homer.jpg", user_id: 1)

  Article.create!(title: "Est-ce que tu sais parler breton ?", content:"<p>Vous êtes prêts ?</p>
  <p>- Bin alors, t'as pu acheter de la liche pour qu'on puisse aller en riboule ce soir ?</p>
  <p>- Gast ! Faut que j'bouge mon derch après il va faire frisquette !</p>
  <p>Alors, on fait moins le malin l'ami Alsacien ?! Les compères Bretons ont aussi des expressions et pas des moindres.</p>
  <p>Bon je traduis : \"Bin alors, t'as pu acheter de l'alcool pour la soirée ?\"</p>
  <p>\"Put*** ! Faut que je me bouge le c** après il va faire froid !\"</p>
  <p>Il y a encore pleins d'expressions :</p>
  <p>- un gouel (un goinfre)</p>
  <p>- une cuche (une queue de cheval)</p>
  <p>- un pekno (un cassos)</p>
  <p>- baraguiner (parler sans se faire comprendre)</p>
  <p>Mais je vous laisse le \"plaisir\" d'affronter ces expressions lorsque vous croiserez la route d'un breton !</p>", image: "alaise.jpg", user_id: 1)

  Article.create!(title: "Parlons peu, parlons c... musique !", content:"<p>La Bretagne, région où se trouve les plus grands danseurs de petit doigt !</p>
  <p>Ils ont quand même un avantage, leurs musiques entrainantes ne peuvent que vous faire danser ! Par exemple :</p>
  <p><iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/iJPI1ohI_q8?rel=0&amp;controls=0\" frameborder=\"0\" allowfullscreen></iframe></p>
  <p>Mais les Alsaciens aussi ont de quoi se défendre ! Comme ce qui suit :</p>
  <p><iframe center width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/u_QnyaIUWEs?rel=0&amp;controls=0\" frameborder=\"0\" allowfullscreen></iframe></p>
  <p>À part le fait que ce soit en alsacien et avec un nom imprononçable, c'est quand même entraînant non ?</p>
  <p>Alors, une préférence ?</p>", image: "", user_id: 1)

  46.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@elsass.bzh"
    password = "password"
    User.create!(username:  name,
                 email: email,
                 password:              password,
                 password_confirmation: password,
                 admin: false,
                 activated: true,
                 activated_at: Time.zone.now)
  end

  Comment.create!(body: "Je suis d'accord ! Je préfère prononcer 'tarte flambée'", user_id: 4, article_id: 1)
  Comment.create!(body: "Chez moi on dit crêpe salée ! C'est grave ?", user_id: 3, article_id: 2)
  Comment.create!(body: "C'est très grave !!", user_id: 4, article_id: 2)
  Comment.create!(body: "Perso je m'en fous tant que ça se mange ;)", user_id: 2, article_id: 2)
  Comment.create!(body: "Chez moi on dit 'ça tire' quand il y a du courant d'air", user_id: 2, article_id: 3)
  Comment.create!(body: "Super site ! On en apprend tous les jours !", user_id: 14, article_id: 4)
  Comment.create!(body: "Dr Hans im Schnòckeloch hät àlles, wàs er will !", user_id: 8, article_id: 5)
  Comment.create!(body: "Oh nan je l'ai en tête !", user_id: 22, article_id: 5)
  Comment.create!(body: "J'entends le loup, le renard et la belette !", user_id: 4, article_id: 5)
