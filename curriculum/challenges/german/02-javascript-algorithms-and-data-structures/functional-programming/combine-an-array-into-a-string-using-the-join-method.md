---
id: 587d7daa367417b2b2512b6c
title: Ein Array mit der join-Methode zu einem String kombinieren
challengeType: 1
forumTopicId: 18221
dashedName: combine-an-array-into-a-string-using-the-join-method
---

# --description--

The `join` method is used to join the elements of an array together to create a string. It takes an argument for the delimiter that is used to separate the array elements in the string.

Hier ist ein Beispiel:

```js
const arr = ["Hello", "World"];
const str = arr.join(" ");
```

`str` sollte einen Wert des Strings `Hello World` haben.
# --instructions--

Benutze (unter anderem) die `join` Methode innerhalb der `sentensify` Funktion, um aus den Wörtern im String `str` einen Satz zu bilden. Die Funktion sollte einen String zurückgeben. Zum Beispiel würde `I-like-Star-Wars` in `I like Star Wars` konvertiert werden. Verwende bei dieser Herausforderung nicht die `replace` Methode.

# --hints--

Dein Code sollte die `join` Methode verwenden.

```js
assert(__helpers.removeJSComments(code).match(/\.join/g));
```

Dein Code sollte nicht die `replace` Methode verwenden.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?replace/g));
```

`sentensify("May-the-force-be-with-you")` sollte einen String zurückgeben.

```js
assert(typeof sentensify('May-the-force-be-with-you') === 'string');
```

`sentensify("May-the-force-be-with-you")` sollte den String `May the force be with you` zurückgeben.

```js
assert(sentensify('May-the-force-be-with-you') === 'May the force be with you');
```

`sentensify("The.force.is.strong.with.this.one")` sollte den String `The force is strong with this one` zurückgeben.

```js
assert(
  sentensify('The.force.is.strong.with.this.one') ===
    'The force is strong with this one'
);
```

`sentensify("There,has,been,an,awakening")` sollte den String `There has been an awakening` zurückgegeben.

```js
assert(
  sentensify('There,has,been,an,awakening') === 'There has been an awakening'
);
```

# --seed--

## --seed-contents--

```js
function sentensify(str) {
  // Only change code below this line


  // Only change code above this line
}

sentensify("May-the-force-be-with-you");
```

# --solutions--

```js
function sentensify(str) {
  return str.split(/\W/).join(' ');
}
```
