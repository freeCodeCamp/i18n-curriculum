---
id: 56592a60ddddeae28f7aa8e1
title: Acessar arrays multidimensionais com índices
challengeType: 1
forumTopicId: 16159
dashedName: access-multi-dimensional-arrays-with-indexes
---

# --description--

One way to think of a <dfn>multi-dimensional</dfn> array, is as an *array of arrays*. When you use brackets to access your array, the first set of brackets refers to the entries in the outermost (the first level) array, and each additional pair of brackets refers to the next level of entries inside.

**Exemplo**

```js
const arr = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [[10, 11, 12], 13, 14]
];

const subarray = arr[3];
const nestedSubarray = arr[3][0];
const element = arr[3][0][1];
```

Neste exemplo, `subarray` tem o valor de `[[10, 11, 12], 13, 14]`, `nestedSubarray` tem o valor de `[10, 11, 12]` e `element` tem o valor de `11` .

**Observação:** não deve haver nenhum espaço entre o nome do array e os colchetes como `array [0][0]` e até mesmo `array [0] [0]` não é permitido. Embora JavaScript é capaz de processar isso corretamente, isso pode causar confusão em outros programadores lendo o seu código.

# --instructions--

Utilizando notação de colchetes, selecione um elemento de `myArray` de forma que `myData` seja igual a `8`.

# --hints--

`myData` deve ser igual a `8`.

```js
assert(myData === 8);
```

Você deve usar notação de colchetes para ler o valor correto de `myArray`.

```js
assert(/myData=myArray\[2\]\[1\]/.test(__helpers.removeWhiteSpace(__helpers.removeJSComments(code))));
```

# --seed--

## --after-user-code--

```js
if(typeof myArray !== "undefined"){(function(){return "myData: " + myData + " myArray: " + JSON.stringify(myArray);})();}
```

## --seed-contents--

```js
const myArray = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [[10, 11, 12], 13, 14],
];

const myData = myArray[0][0];
```

# --solutions--

```js
const myArray = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [[10, 11, 12], 13, 14]];
const myData = myArray[2][1];
```
