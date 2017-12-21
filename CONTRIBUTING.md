# Contribution

Avant toute chose, merci d'envisager de contribuer à cette traduction. Ce sont des gens comme vous qui permettent d'atteindre l'excellence.

## Édition du livre

### Obtention des sources

Pour proposer des modifications sur ce livre, vous devez disposer d'un [compte Github](https://github.com/join) et avoir intallé [Git sur votre machine](https://git-scm.com/).
Vous devez ensuite « forker » ce dépôt. Pour ce faire, cliquez sur le bouton `Fork` en haut à droite de cette page.

Une copie de ce dépôt est alors disponible dans votre espace personnel. Vous pouvez le rappatrier sur votre machine en utilisant l'URL proposée sur _votre_ copie de ce dépôt.
Pour l'obtenir, cliquez sur le bouton *Clone or download*. Vous obtenez une adresse de la forme `git@github.com:<votre nom d'utilisateur>/coreprotocols-fr.git`.

> *Attention :* si l'adresse commence par `https`, c'est probablement que vous n'êtes pas connecté sur Github. Connectez-vous et recommencez l'opération.

Depuis une console, dans le répertoire de votre choix, utilisez cette URL précédée de `git clone`.

Exemple :

```shell
git clone git@github.com:adericbourg/coreprotocols-fr.git
```

Les sources de ce livre sont alors disponibles sur votre machine dans le répertoire `coreprotocols-fr` situé dans le répertoire depuis lequel vous avez executé la commande `git clone`.

### Mise à jour les sources

Cette traduction évolue indépendamment de votre propre copie. Il est donc nécessaire de vous synchroniser avant de proposer une nouvelle modification.

#### La première fois

Renseignez le dépôt de référence :

```shell
git remote add upstream https://github.com/adericbourg/coreprotocols-fr.git
```

#### À chaque fois (y compris la première)

Récupérez la dernière version du dépôt de référence :

```shell
git fetch upstream
```

Fusionnez son contenu dans votre dépôt et mettez à jour également votre dépôt publique :

```shell
git rebase upstream/master
git push origin master:master
```

Vous êtes libres d'utiliser des _feature branches_. Cet aspect n'est pas traité pour simplifier la documentation.

### Proposition d'une modification

Éditez les fichiers en local comme vous l'auriez fait avec n'importe quel fichier.

> Il est inutile de modifier le contenu du répertoire `_build` : son contenu ne sera pas sauvegardé.

Depuis le répertoire `coreprotocols-fr`, _commitez_ les fichiers que vous avez modifié :

```shell
git add .
git commit
```

Cela ouvre un éditeur de texte qui vous propose de décrire la modification que vous avez faite. Sauvegardez cette description et quittez l'éditeur.

Publiez ensuite cette modification sur votre copie publique du dépôt :

```shell
git push origin master:master
```

Depuis votre _fork_ sur Github, créez une _pull-request_. Pour cela, remarquez le bandeau qui est apparu au-dessus de la liste des fichiers :

> This branch is 1 commit ahead of adericbourg:master.

Sur ce bandeau, cliquez sur *Pull request* et vérifiez vos changements.

Utilisez les paramètres suivants :

* *Base fork* : _adericbourg/coreprotocols-fr_
* *Base* : _master_
* *Head fork* : le nom de _votre_ dépôt
* *Compare* : la branche sur laquelle vous avez travaillé (si vous suivez cette documentation à la lettre : _master_)

Cliquez alors sur le bouton *Create pull request*. Ajoutez des commentaires si vous le jugez nécessaire et cliquez à nouveau sur *Create pull request*.

Attendez maintenant que quelqu'un la relise et la valide.

## Construction du livre

Le livre est édité avec LaTeX. Vous pouvez en gérer une version lisible sous plusieurs formats :

* PDF, en exécutant `pdflatex -interaction=nonstopmode -halt-on-error document.tex` (deux fois pour générer la table des matières et les références)
* ePub, en exécutant `pandoc document.tex -o document.epub`

Un script automatisé vous permet de construire tous les formats de livre. Lancez `make` à la racine de ce dépôt. Vous devez disposer sur votre système :

* d'une [distribution LaTeX](https://www.latex-project.org/get/) ;
* de [pandoc](https://pandoc.org/).

Les fichers produits se trouvent dans le répertoire `_build`.