---
id: acda2fb1324d9b0fa741e6b5
title: Confirma el final
challengeType: 1
forumTopicId: 16006
dashedName: confirm-the-ending
---

# --description--

Evalúa si una cadena (primer argumento, `str`) termina con la cadena de destino dada (segundo argumento, `target`).

This challenge _can_ be solved with the `.endsWith()` method, which was introduced in ES2015. Pero para el propósito de este desafío, nos gustaría que usaras uno de los métodos de subcadena JavaScript en su lugar.

# --hints--

`confirmEnding("Bastian", "n")` debe devolver `true`.

```js
assert.isTrue(confirmEnding('Bastian', 'n'));
```

`confirmEnding("Congratulation", "on")` debe devolver `true`.

```js
assert.isTrue(confirmEnding('Congratulation', 'on'));
```

`confirmEnding("Connor", "n")` debe devolver `false`.

```js
assert.isFalse(confirmEnding('Connor', 'n'));
```

`confirmEnding("Walking on water and developing software from a specification are easy if both are frozen", "specification")` debe devolver `false`.

```js
assert.isFalse(
  confirmEnding(
    'Walking on water and developing software from a specification are easy if both are frozen',
    'specification'
  )
);
```

`confirmEnding("He has to give me a new name", "name")` debe devolver `true`.

```js
assert.isTrue(confirmEnding('He has to give me a new name', 'name'));
```

`confirmEnding("Open sesame", "same")` debe devolver `true`.

```js
assert.isTrue(confirmEnding('Open sesame', 'same'));
```

`confirmEnding("Open sesame", "sage")` debe devolver `false`.

```js
assert.isFalse(confirmEnding('Open sesame', 'sage'));
```

`confirmEnding("Open sesame", "game")` debe devolver `false`.

```js
assert.isFalse(confirmEnding('Open sesame', 'game'));
```

`confirmEnding("If you want to save our world, you must hurry. We dont know how much longer we can withstand the nothing", "mountain")` should return `false`.

```js
assert.isFalse(
  confirmEnding(
    'If you want to save our world, you must hurry. We dont know how much longer we can withstand the nothing',
    'mountain'
  )
);
```

`confirmEnding("Abstraction", "action")` debe devolver `true`.

```js
assert.isTrue(confirmEnding('Abstraction', 'action'));
```

Tu código no debe usar el método incorporado `.endsWith()` para resolver el desafío.

```js
assert.notMatch(__helpers.removeJSComments(code), /\.endsWith\(.*?\)\s*?;?/);
assert.notMatch(__helpers.removeJSComments(code), /\['endsWith'\]/);
```

# --seed--

## --seed-contents--

```js
function confirmEnding(str, target) {
  return str;
}

confirmEnding('Bastian', 'n');
```

# --solutions--

```js
function confirmEnding(str, target) {
  return str.substring(str.length - target.length) === target;
}

confirmEnding('Bastian', 'n');
```
