---
id: 587d8254367417b2b2512c71
title: Elemente aus einer Menge in ES6 entfernen
challengeType: 1
forumTopicId: 301713
dashedName: remove-items-from-a-set-in-es6
---

# --description--

Let's practice removing items from an ES6 Set using the `delete` method.

Erstelle zunächst ein ES6-Set:

```js
var set = new Set([1,2,3]);
```

Entferne nun ein Element aus deinem Set mit der Methode `delete`.

```js
set.delete(1);
console.log([...set]) // should return [ 2, 3 ]
```

# --instructions--

Erstelle nun eine Menge mit den ganzen Zahlen 1, 2, 3, 4, & 5.

Entferne die Werte 2 und 5, und gib die Menge zurück.

# --hints--

Dein Set sollte die Werte 1, 3, & 4 enthalten

```js
assert(
  (function () {
    var test = checkSet();
    return test.has(1) && test.has(3) && test.has(4) && test.size === 3;
  })()
);
```

# --seed--

## --seed-contents--

```js
function checkSet(){
  // Only change code below this line
  var set = null;

  // Only change code above this line
  return set;   
}
```

# --solutions--

```js
function checkSet(){
var set = new Set([1,2,3,4,5]);
set.delete(2);
set.delete(5);
return set;}
```
