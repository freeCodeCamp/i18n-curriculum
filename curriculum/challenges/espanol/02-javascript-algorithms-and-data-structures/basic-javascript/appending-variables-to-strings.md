---
id: 56533eb9ac21ba0edf2244ed
title: Agrega variables a cadenas
challengeType: 1
videoUrl: 'https://scrimba.com/c/cbQmZfa'
forumTopicId: 16656
dashedName: appending-variables-to-strings
---

# --description--

Just as we can build a string over multiple lines out of string <dfn>literals</dfn>, we can also append variables to a string using the plus equals (`+=`) operator.

Ejemplo:

```js
const anAdjective = "awesome!";
let ourStr = "freeCodeCamp is ";
ourStr += anAdjective;
```

`ourStr` tendrá el valor de `freeCodeCamp is awesome!`.

# --instructions--

Establece `someAdjective` a una cadena de al menos 3 caracteres y añádelo a `myStr` usando el operador `+=`.

# --hints--

`someAdjective` debe ser establecido a una cadena de al menos 3 caracteres.

```js
assert(typeof someAdjective !== 'undefined' && someAdjective.length > 2);
```

Debes añadir `someAdjective` a `myStr` usando el operador `+=`.

```js
assert(__helpers.removeJSComments(code).match(/myStr\s*\+=\s*someAdjective\s*/).length > 0);
```

# --seed--

## --after-user-code--

```js
(function(){
  var output = [];
  if(typeof someAdjective === 'string') {
    output.push('someAdjective = "' + someAdjective + '"');
  } else {
    output.push('someAdjective is not a string');
  }
  if(typeof myStr === 'string') {
    output.push('myStr = "' + myStr + '"');
  } else {
    output.push('myStr is not a string');
  }
  return output.join('\n');
})();
```

## --seed-contents--

```js
// Change code below this line
const someAdjective = "";
let myStr = "Learning to code is ";
```

# --solutions--

```js
const someAdjective = "neat";
let myStr = "Learning to code is ";
myStr += someAdjective;
```
