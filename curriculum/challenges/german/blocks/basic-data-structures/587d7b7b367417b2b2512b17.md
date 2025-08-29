---
id: 587d7b7b367417b2b2512b17
title: Kombiniere Arrays mit dem Spread-Operator
challengeType: 1
forumTopicId: 301156
dashedName: combine-arrays-with-the-spread-operator
---

# --description--

Another huge advantage of the <dfn>spread</dfn> operator is the ability to combine arrays, or to insert all the elements of one array into another, at any index. With more traditional syntaxes, we can concatenate arrays, but this only allows us to combine arrays at the end of one, and at the start of another. Spread syntax makes the following operation extremely simple:

```js
let thisArray = ['sage', 'rosemary', 'parsley', 'thyme'];

let thatArray = ['basil', 'cilantro', ...thisArray, 'coriander'];
```

`thatArray` würde den Wert `['basil', 'cilantro', 'sage', 'rosemary', 'parsley', 'thyme', 'coriander']` besitzen.

Mit der Spreadsyntax haben wir gerade eine Operation durchgeführt, die bei Verwendung herkömmlicher Methoden komplexer und ausführlicher gewesen wäre.

# --instructions--

Wir haben eine Funktion `spreadOut` definiert, welche die Variable `sentence` zurückgibt. Verändere die Funktion mit dem <dfn>spread</dfn>-Operator so, dass es den Array `['learning', 'to', 'code', 'is', 'fun']` zurückgibt.

# --hints--

`spreadOut` sollte `["learning", "to", "code", "is", "fun"]` zurückgeben

```js
assert.deepEqual(spreadOut(), ['learning', 'to', 'code', 'is', 'fun']);
```

Die Funktion `spreadOut` sollte die Spread-Syntax verwenden

```js
assert.notStrictEqual(spreadOut.toString().search(/[...]/), -1);
```

# --seed--

## --seed-contents--

```js
function spreadOut() {
  let fragment = ['to', 'code'];
  let sentence; // Change this line
  return sentence;
}

console.log(spreadOut());
```

# --solutions--

```js
function spreadOut() {
  let fragment = ['to', 'code'];
  let sentence = ['learning', ...fragment, 'is', 'fun'];
  return sentence;
}
```
