# Les Protocoles Fondamentaux (The Core Protocols) [![Build Status](https://travis-ci.org/adericbourg/coreprotocols-fr.svg?branch=master)](https://travis-ci.org/adericbourg/coreprotocols-fr)

Les Protocoles Fondamentaux (orig. _The Core Protocols: A Guide to Greatness_) est un livre de Richard Kasperowski basé sur les travaux de Jim McCarthy et Michele McCarthy.

Ce dépôt contient la traduction française de ce livre. La version originale est disponible sur le dépôt [`rkasper/coreprotocols`](https://github.com/rkasper/coreprotocols).

## Construction du livre

Le livre est édité avec LaTeX. Vous pouvez en gérer une version lisible sous plusieurs formats :

* PDF, en exécutant `pdflatex -interaction=nonstopmode -halt-on-error document.tex` (deux fois pour générer la table des matières et les références)
* ePub, en exécutant `pandoc document.tex -o document.epub`

Un script automatisé vous permet de construire tous les formats de livre. Lancez `make` à la racine de ce dépôt. Vous devez disposer sur votre système :

* d'une [distribution LaTeX](https://www.latex-project.org/get/) ;
* de [pandoc](https://pandoc.org/).

Les fichers produits se trouvent dans le répertoire `_build`.
