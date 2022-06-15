# Test technique Fullstack - Lakaa

***

Le projet avait pour but de développer une mini-application de reporting de
collecte de denrées alimentaires pour un responsable de magasin.

Pour y arriver, il fallait utiliser deux technologies :

    - VueJS ou React pour le front
    - Rails pour l'API

Ici, j'ai utilisé du VueJS.

***

# Comment lancer l'application

Etape 1:

    Cloner ou télécharger le projet à l'adresse suivante selon votre technologie :
        - HTML : gitlab.cri.epita.fr/tom.frenois/test-adoba.git
        - SSH : git@gitlab.cri.epita.fr:tom.frenois/test-adoba.git

    Attention : Comme il s'agit du gitlab sous le domaine de l'EPITA si vous avez des
    difficultées à le télécharger, il sera aussi disponible sur le github suivant :
        - HTML : https://github.com/AkaMirai9/test-fullstack-lakaa
        - SSH : git@github.com:AkaMirai9/test-fullstack-lakaa.git

Etape 2:

    Vérifier les versions de vos technologies :
        Pour ce projet, j'ai uiliser :
            - Rails 7.0.3
            - @vue/cli 5.0.4
            - Yarn 1.22.19

Assurez-vous d'avoir une version compatible.

Etape 3:

    Lancer le serveur de l'API :
        -> Sous Linux :
            - cd test-adoba/adoba-back
            - rails db:seed
            - rails s

Etape 4:

    Lancer le serveur front :
        -> Sous Linux :
            - cd test-adoba/adoba-back
            - yarn install
            - yarn serve

Etape 5:

    Depuis votre navigateur, entrez l'url:
        - http://localhost:8080/

***

# Explications des choix techniques et des difficultées rencontrées

La première partie de ce projet a été de concevoir l'API en rails langage qui
m'était jusque là inconnu.

J'ai beaucoup réfléchis à la manière de représenter la base de données et finalement 
j'ai opté pour les modèles suivants :

    -> Un objet Collecte ayant comme attribut :
        - assos : Le nom de l'association avec qui la collecte a été faite
        - date : Le jour de la collecte

    -> Un Objet Attribut ayant comme attribut :
        - name : Le nom de l'attribut (Ex : Poids, Lieux de la collecte, etc.)
        - desc : Une courte description de l'attribut
        - datas : La valeur de l'attribut (Ex : Le poids en kilo, l'adresse, etc.)
        - collecteid : L'id de la collecte à laquelle l'attribut est rattaché

Je suis conscient qu'il y avait une autre manière de faire à l'aide des références et des 
notions de relations telles que has_many ou belong_to, mais je n'arrivais pas bien 
à manipuler ces outils et voulant faire un code qui fonctionne, j'ai décidé d'opter 
pourcette structure quitte à y revenir plus tard pour quelques améliorations.

Concernant la partie front, j'ai opté pour une page d'accueil contenant toute les collectes
avec le nom de l'association et la date de la collecte.

Sur cette page, on trouve aussi un formulaire qui nous permet d'ajouter des collectes en 
renseignant le nom de l'association et la date de la collecte.

Chacune des collectes est cliquable grâce à la balise router-view qui nous mène à une view 
de la collecte et de chacun des attributs qui lui sont liés.

Je me suis dit qu'il fallait la possibilité d'ajouter séparément les attributs à chaque 
collectes car je me suis dit que certains attributs pouvaient ne pas être partagés par 
toutes les collectes.

***

# Voies d'améliorations

Je pense que par endroits certaines parties de mon code pourraient être remplacé par
des views comme par exemples dans les fichiers CollecteList.vue ou CollecteView.vue.

Aussi, je pense qu'il serait pas mal d'ajouter à la page d'accueil une fonction de filtre
entre les collectes, selon la date ou les grouper par association.

Aussi avoir un outil permettant de réunir les attributs en commun des collectes pour avoir
par exemple des statistiques sur le poids moyen des collectes.

On peut aussi imaginer un découpage dans les collectes pour voir celles passées et celles à
venir




