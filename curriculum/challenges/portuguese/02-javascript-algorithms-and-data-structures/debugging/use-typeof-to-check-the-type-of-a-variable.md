---
id: 587d7b84367417b2b2512b34
title: Usar typeof para verificar o tipo da variável
challengeType: 1
forumTopicId: 18374
dashedName: use-typeof-to-check-the-type-of-a-variable
---

# --description--

You can use `typeof` to check the data structure, or type, of a variable. This is useful in debugging when working with multiple data types. If you think you're adding two numbers, but one is actually a string, the results can be unexpected. Type errors can lurk in calculations or function calls. Be careful especially when you're accessing and working with external data in the form of a JavaScript Object Notation (JSON) object.

Aqui está alguns exemplos usando `typeof`:

```js
console.log(typeof "");
console.log(typeof 0);
console.log(typeof []);
console.log(typeof {});
```

Em ordem, o console exibirá as strings `string`, `number`, `object` e `object`.

JavaScript reconhece sete tipos de dados primitivos (imutáveis): `Boolean`, `Null`, `Undefined`, `Number`, `String`, `Symbol` (novo na ES6) e `BigInt` (novo na ES2020), além de um tipo para itens mutáveis: `Object`. Note que em JavaScript, arrays são tecnicamente um tipo de objeto.

# --instructions--

Adicione duas instruções `console.log()` para verificar o `typeof` de cada uma das duas variáveis `seven` e `three` no código.

# --hints--

O código deve usar `typeof` em duas instruções `console.log()` para verificar o tipo das variáveis.

```js
assert(__helpers.removeJSComments(code).match(/console\.log\s*\(typeof[\( ].*\)?\)/g).length == 2);
```

O código deve usar `typeof` para verificar o tipo da variável `seven`.

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]seven\)?/g));
```

O código deve usar `typeof` para verificar o tipo da variável `three`.

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]three\)?/g));
```

# --seed--

## --seed-contents--

```js
let seven = 7;
let three = "3";
console.log(seven + three);
// Only change code below this line
```

# --solutions--

```js
let seven = 7;let three = "3";console.log(typeof seven);
console.log(typeof three);
```
