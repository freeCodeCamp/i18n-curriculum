---
id: 587d78b2367417b2b2512b10
title: Entferne Elemente mit Hilfe der splice() - Methode
challengeType: 1
forumTopicId: 301166
dashedName: remove-items-using-splice
---

# --description--

Ok, so we've learned how to remove elements from the beginning and end of arrays using `shift()` and `pop()`, but what if we want to remove an element from somewhere in the middle? Or remove more than one element at once? Well, that's where `splice()` comes in. `splice()` allows us to do just that: **remove any number of consecutive elements** from anywhere in an array.

`splice()` kann bis zu drei Parameter aufgreifen, aber vorerst fokussieren wir uns nur auf die ersten beiden. Die ersten beiden Parameter von `splice()` sind ganze Zahlen, die Indizes oder Positionen der Elemente im Array darstellen, die von `splice()` aufgerufen werden. Und denke daran, Arrays sind *null-indiziert*. Um das erste Element eines Arrays auszugeben, müssen wir `0` verwenden. Der erste Parameter von `splice()` stellt den Index des Arrays dar, aus dem Elemente entfernt werden sollen, während der zweite Parameter die Anzahl der zu löschenden Elemente angibt. Hier ein Beispiel:

```js
let array = ['today', 'was', 'not', 'so', 'great'];

array.splice(2, 2);
```

Hier entfernen wir 2 Elemente, beginnend mit dem dritten Element (bei Index 2). `array` hätte den Wert `['today', 'was', 'great']`.

`splice()` verändert nicht nur das Array, auf das es sich bezieht, sondern gibt auch ein neues Array aus, das den Wert des entfernten Elements enthält:

```js
let array = ['I', 'am', 'feeling', 'really', 'happy'];

let newArray = array.splice(3, 2);
```

`newArray` hat den Wert `['really', 'happy']`.

# --instructions--

Wir haben das neue Array `arr` erstellt. Verwende `splice()`, um Elemente aus `arr` zu entfernen, sodass es nur Elemente enthält, deren Summe den Wert `10` ergibt.

# --hints--

Du sollst nicht die ursprüngliche Codezeile `const arr = [2, 4, 5, 1, 7, 5, 2, 1];` ändern.

```js
assert(
  __helpers.removeWhiteSpace(__helpers.removeJSComments(code)).match(/constarr=\[2,4,5,1,7,5,2,1\];?/)
);
```

`arr` soll nur Elemente enthalten, deren Summe `10` ergibt.

```js
assert.strictEqual(
  arr.reduce((a, b) => a + b),
  10
);
```

Ihr Code sollte die Methode `splice()` auf `arr` anwenden.

```js
assert(__helpers.removeWhiteSpace(__helpers.removeJSComments(code)).match(/arr\.splice\(/));
```

Splice soll nur Elemente aus `arr` entfernen, aber keine zusätzlichen Elemente zu `arr` hinzufügen.

```js
assert(
  !__helpers.removeWhiteSpace(__helpers.removeJSComments(code)).match(/arr\.splice\(\d+,\d+,\d+.*\)/g)
);
```

# --seed--

## --seed-contents--

```js
const arr = [2, 4, 5, 1, 7, 5, 2, 1];
// Only change code below this line

// Only change code above this line
console.log(arr);
```

# --solutions--

```js
const arr = [2, 4, 5, 1, 7, 5, 2, 1];
arr.splice(1, 4);
```
