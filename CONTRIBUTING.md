# Contribution

Avant toute chose, merci d'envisager de contribuer à cette traduction. Ce sont des gens comme vous qui permettent d'atteindre l'excellence.

## Construction du livre

Le livre est édité avec LaTeX. Vous pouvez en gérer une version lisible sous plusieurs formats :

* PDF, en exécutant `pdflatex -interaction=nonstopmode -halt-on-error document.tex` (deux fois pour générer la table des matières et les références)
* ePub, en exécutant `pandoc document.tex -o document.epub`

Un script automatisé vous permet de construire tous les formats de livre. Lancez `make` à la racine de ce dépôt. Vous devez disposer sur votre système :

* d'une [distribution LaTeX](https://www.latex-project.org/get/) ;
* de [pandoc](https://pandoc.org/).

Les fichers produits se trouvent dans le répertoire `_build`.
