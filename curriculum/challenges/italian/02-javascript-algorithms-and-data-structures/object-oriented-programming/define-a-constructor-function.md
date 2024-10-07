---
id: 587d7dad367417b2b2512b77
title: Definire una funzione costruttore
challengeType: 1
forumTopicId: 16804
dashedName: define-a-constructor-function
---

# --description--

<dfn>Constructors</dfn> are functions that create new objects. They define properties and behaviors that will belong to the new object. Think of them as a blueprint for the creation of new objects.

Ecco un esempio di costruttore:

```js
function Bird() {
  this.name = "Albert";
  this.color = "blue";
  this.numLegs = 2;
}
```

Questo costruttore definisce un oggetto `Bird` con proprietà `name`, `color`, e `numLegs` impostati rispettivamente su Albert, blue e 2. I costruttori seguono alcune convenzioni:

<ul><li>Constructors are defined with a capitalized name to distinguish them from other functions that are not <code>constructors</code>.</li><li>I costruttori usano la parola chiave <code>this</code> per impostare le proprietà dell'oggetto che creeranno. All'interno del costruttore, <code>this</code> si riferisce al nuovo oggetto che creerà.</li><li>I costruttori definiscono proprietà e comportamenti invece di restituire un valore come fanno le normali funzioni.</li></ul>

# --instructions--

Crea un costruttore, `Dog`, con le proprietà `name`, `color`, e `numLegs` impostate rispettivamente su una stringa, una stringa, e un numero.

# --hints--

`Dog` dovrebbe avere una proprietà `name` impostata su una stringa.

```js
assert(typeof new Dog().name === 'string');
```

`Dog` dovrebbe avere una proprietà `color` impostata su una stringa.

```js
assert(typeof new Dog().color === 'string');
```

`Dog` dovrebbe avere una proprietà `numLegs` impostata su un numero.

```js
assert(typeof new Dog().numLegs === 'number');
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function Dog (name, color, numLegs) {
  this.name = 'name';
  this.color = 'color';
  this.numLegs = 4;
}
```
