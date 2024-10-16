---
id: 587d7b7b367417b2b2512b13
title: Kopiere ein Array mit dem Spread-Operator
challengeType: 1
forumTopicId: 301157
dashedName: copy-an-array-with-the-spread-operator
---

# --description--

While `slice()` allows us to be selective about what elements of an array to copy, among several other useful tasks, ES6's new <dfn>spread operator</dfn> allows us to easily copy *all* of an array's elements, in order, with a simple and highly readable syntax. The spread syntax simply looks like this: `...`

In der Praxis können wir den Spread-Operator nutzen, um einen Array wie folgt zu kopieren:

```js
let thisArray = [true, true, undefined, false, null];
let thatArray = [...thisArray];
```

`thatArray` entspricht `[true, true, undefined, false, null]`. `thisArray` bleibt unverändert und `thatArray` enthält die gleichen Elemente wie `thisArray`.

# --instructions--

Wir haben eine Funktion `copyMachine` definiert, welche `arr` (ein Array) und `num` (eine Nummer) als Argumente benötigt. Die Funktion sollte einen neuen Array zurückgeben, der aus `num` Kopien von `arr` besteht. Wir haben die meiste Arbeit für dich getan, jedoch funktioniert es noch nicht ganz richtig. Verändere die Funktion, indem du Spread-Syntax verwendest, sodass es richtig funktioniert (Tipp: eine andere Methode, die wir bereits behandelt haben, könnte hier nützlich sein!).

# --hints--

`copyMachine([true, false, true], 2)` sollte `[[true, false, true], [true, false, true]]` zurückgeben

```js
assert.deepEqual(copyMachine([true, false, true], 2), [
  [true, false, true],
  [true, false, true]
]);
```

`copyMachine([1, 2, 3], 5)` sollte `[[1, 2, 3], [1, 2, 3], [1, 2, 3], [1, 2, 3], [1, 2, 3]]` zurückgeben

```js
assert.deepEqual(copyMachine([1, 2, 3], 5), [
  [1, 2, 3],
  [1, 2, 3],
  [1, 2, 3],
  [1, 2, 3],
  [1, 2, 3]
]);
```

`copyMachine([true, true, null], 1)` sollte `[[true, true, null]]` zurückgeben

```js
assert.deepEqual(copyMachine([true, true, null], 1), [[true, true, null]]);
```

`copyMachine(["it works"], 3)` sollte `[["it works"], ["it works"], ["it works"]]` zurückgeben

```js
assert.deepEqual(copyMachine(['it works'], 3), [
  ['it works'],
  ['it works'],
  ['it works']
]);
```

Die Funktion `copyMachine` sollte den `spread operator` mit einem Array `arr` verwenden

```js
assert(__helpers.removeJSComments(__helpers.removeJSComments(code)).match(/\.\.\.\s*arr/));
```

# --seed--

## --seed-contents--

```js
function copyMachine(arr, num) {
  let newArr = [];
  while (num >= 1) {
    // Only change code below this line

    // Only change code above this line
    num--;
  }
  return newArr;
}

console.log(copyMachine([true, false, true], 2));
```

# --solutions--

```js
function copyMachine(arr,num){
    let newArr=[];
    while(num >=1){
    newArr.push([...arr]);
    num--;
    }
    return newArr;
}
console.log(copyMachine([true, false, true], 2));
```
