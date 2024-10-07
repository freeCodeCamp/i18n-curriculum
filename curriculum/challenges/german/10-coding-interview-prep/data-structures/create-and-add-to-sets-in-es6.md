---
id: 587d8254367417b2b2512c70
title: Erstellen und Hinzufügen zu Sets in ES6
challengeType: 1
forumTopicId: 301636
dashedName: create-and-add-to-sets-in-es6
---

# --description--

Now that you have worked through ES5, you are going to perform something similar in ES6. This will be considerably easier. ES6 contains a built-in data structure `Set` so many of the operations you wrote by hand are now included for you. Let's take a look:

Um ein neues leeres Set zu erstellen:

```js
var set = new Set();
```

Du kannst ein Set mit einem Wert erstellen:

```js
var set = new Set(1);
```

Du kannst ein Set mit einem Array erstellen:

```js
var set = new Set([1, 2, 3]);
```

Sobald du ein Set erstellt hast, kannst du die gewünschten Werte mit der Methode `add` hinzufügen:

```js
var set = new Set([1, 2, 3]);
set.add([4, 5, 6]);
```

Zur Erinnerung: Ein Set ist eine Datenstruktur, die keine doppelten Werte enthalten kann:

```js
var set = new Set([1, 2, 3, 1, 2, 3]);
// set contains [1, 2, 3] only
```

# --instructions--

Für diese Übung gibst du ein Set mit den folgenden Werten zurück: `1, 2, 3, 'Taco', 'Cat', 'Awesome'`

# --hints--

Dein `Set` sollte nur die Werte `1, 2, 3, Taco, Cat, Awesome` enthalten.

```js
assert(
  (function () {
    var test = checkSet();
    return (
      test.size == 6 &&
      test.has(1) &&
      test.has(2) &&
      test.has(3) &&
      test.has('Taco') &&
      test.has('Cat') &&
      test.has('Awesome')
    );
  })()
);
```

# --seed--

## --seed-contents--

```js
function checkSet() {
  var set = new Set([1, 2, 3, 3, 2, 1, 2, 3, 1]);
  // Only change code below this line

  // Only change code above this line
  console.log(Array.from(set));
  return set;
}

checkSet();
```

# --solutions--

```js
function checkSet(){var set = new Set([1,2,3,'Taco','Cat','Awesome']);
return set;}
```
