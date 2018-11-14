# ![CI status](http://oi68.tinypic.com/ngf2uo.jpg)    
#  The Hacking Project
<br/>
<h2>Semaine 7 - :coffee: Thursday 15th November : :coffee:</h2>

<body>

<h1>Introduction</h1>

<h5>
 Step to follow:
 </h5>
<ol>
 <li>You can acess to our web-site through this link: <code>XXXXXX</code></li>
 <li>You can either to a test on local <code>http://localhost:3000/</code></li>

</ol>

```

TWITTER_API_KEY = "YOUR API KEY"
TWITTER_API_SECRET = "YOUR API SECRET"
TWITTER_ACCESS_TOKEN = "YOUR ACCESS TOKEN"
TWITTER_ACCESS_SECRET = "YOUR ACCES SECRET"

```

  <h2>Team</h2>

 <p>Hey guys ! We are The SaphyR Team made of : </p>
<ul>
<li>Julien aka Mothinx :soccer:<a href="https://github.com/mothinx"><code>clic</code></a><br/></li>
<li>Camilo aka Rumkox :sake:<a href="https://github.com/rumkox"><code>clic</code></a><br/></li>
<li>Christine aka Zybouric :beer:<a href="https://github.com/Zybouric"><code>clic</code></a><br/></li>
<li>Dan aka Gdanj :pizza:<a href="https://github.com/gdanj"><code>clic</code></a><br/></li>
<li>Asvinie aka Asvinie057 :curry:<a href="https://github.com/asvinie057"><code>clic</code></a><br/></li>
<li>Antoine aka Tonoutt  :bento:<a href="https://github.com/tonoutt"><code>clic</code></a><br/></li>
<li>Kathleen aka Funkykath :poultry_leg:<a href="https://github.com/Funkykath"><code>clic</code></a><br/></li>
</ul>
<p>
Thanks to our help you'll be able to make your business growing-up.
 </p>


<h2>Roadmap</h2>

```
ultimate_townhall
├── .gitignore
        (permet de cacher des fichiers)
├── .env
        (pas sur le répo GitHub, bien entendu :clin_d'œil:)
├── README.md
        (sert de description pour notre repo)
├── Gemfile
        (est un fichier que l’on créée dans lequel on liste les gems utilisés et leurs versions)
├── Gemfile.lock
        (est le fichier où Bundler enregistre les versions exactes installées.)
├── app.rb
├── db
│   └── temp.json
        (est un fichier type excel, mais en format texte)
└── lib
   ├── app
   │   ├── scrapper_exos.rb
        (sert à récupérer les adresses mails des différents départements)
   │   ├── mailer.rb
        (sert à récupérer le fichier .json, pour ensuite récupérer les données et les envoyer par mail)
   │   ├── townhalls_follower.rb
   │   └── townhalls_follower.rb
            (récupération des comptes twitter dans le fichier db et envoie d’un tweet de rappelle pour que la mairie check le mail)
   └── views
            aperçu du résultat
       ├── done.rb
       └── index.rb
```

<h3> How it works? </h3>

<h4> Un service Instagram </h4>

Tu verras mon p'tit mouss que le site dispose d'un service relié à l'API Instagram.
Il n'y avait pas de gems encore maintenues suite aux grosses restrictions d'accés aux données de la société. Nous avons donc utilisé la `gem httparty` pour les requêtes.
Ca te permet de revoir une authentification OAuth en action sur Rails.

 1. On fait une redirection vers les serveurs d'Instagram pour obtenir un token d'un utilisateur Instagram
 2. Avec ce token, on peut effectuer des requêtes de l'utilisateur sur l'API depuis notre application

<sub>Malheureusement, Instagram a restreint son API...</sub>
Avec notre application enregistrée que très peu sur Instagram, nous n'avons que les droits sandbox. On ne peut pas effectuer de recherche sous l'ID de l'utilisateur. Pour ca il faut se faire "approuved".
Tu pourras tout de même apprécier l'usage de 2 requêtes pour afficher :

 - Les infos publiques de l'utilisateur
 - Le nombre de medias, followers, following.

On aurait aimé pouvoir régulièrement consulter des tags , et envoyer aux comptes les utilisants un petit MP contenant l'url de notre site. L'authentification est montée, il n'y qu'à implémenter des requêtes.



<h5>Enjoy the game!</h5>

</body>

# TEAM SaphyR
