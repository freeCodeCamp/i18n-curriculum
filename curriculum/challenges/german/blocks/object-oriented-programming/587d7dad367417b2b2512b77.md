---
id: 587d7dad367417b2b2512b77
title: Definiere eine Konstruktorfunktion
challengeType: 1
forumTopicId: 16804
dashedName: define-a-constructor-function
---

# --description--

<dfn>Constructors</dfn> are functions that create new objects. They define properties and behaviors that will belong to the new object. Think of them as a blueprint for the creation of new objects.

Hier ist ein Beispiel für einen Konstruktor:

```js
function Bird() {
  this.name = "Albert";
  this.color = "blue";
  this.numLegs = 2;
}
```

Dieser Konstruktor definiert ein Objekt `Bird` mit den Eigenschaften `name`, `color` und `numLegs`, die jeweils auf Albert, blue und 2 gesetzt sind. Konstruktoren folgen ein paar Konventionen:

<ul><li>Constructors are defined with a capitalized name to distinguish them from other functions that are not <code>constructors</code>.</li><li>Konstruktoren verwenden das Schlüsselwort <code>this</code>, um Eigenschaften des Objekts zu setzen, das sie erzeugen werden. Innerhalb des Konstruktors verweist <code>this</code> auf das neue Objekt, das erstellt wird.</li><li>Konstruktoren definieren Eigenschaften und Verhaltensweisen, anstatt einen Wert zurückzugeben, wie es andere Funktionen können.</li></ul>

# --instructions--

Erstelle einen Konstruktor, `Dog`, mit den Eigenschaften `name`, `color` und `numLegs`, die jeweils auf einen String, einen String und eine Zahl gesetzt werden.

# --hints--

`Dog` sollte eine Eigenschaft `name` besitzen, die auf einen String gesetzt ist.

```js
assert(typeof new Dog().name === 'string');
```

`Dog` sollte eine Eigenschaft `color` besitzen, die auf einen String gesetzt ist.

```js
assert(typeof new Dog().color === 'string');
```

`Dog` sollte eine Eigenschaft `numLegs` besitzen, die auf eine Zahl gesetzt ist.

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
