---
id: 6551eebe6cbb2e6cadf9b468
title: Paso 2
challengeType: 20
dashedName: step-2
---

# --description--

Las variables pueden almacenar valores de distintos tipos de datos. Acabas de asignar un valor entero, pero si deseas representar texto, debes asignar una cadena de caracteres. Las cadenas son secuencias de caracteres encerradas entre comillas simples o dobles, pero no puedes comenzar una cadena con comillas simples y terminarla con comillas dobles, o viceversa:

```py
string_1 = "I am a string"
string_2 = 'I am also a string'
string_3 = 'This is not valid"
```

Elimina tu variable `number` y su valor. Luego, declara otra variable llamada `text` y asigna la cadena `'Hello World'` a esta variable.

# --hints--

No Debes tener `number = 5` en tu código.

```js
const commentless_code = __helpers.python.removeComments(code);
assert.isFalse(/number\s*=\s*5/.test(commentless_code))
```

Debes declarar una variable llamada `text`. Presta atención para colocar el nombre de la variable al principio de la línea.

```js
assert.match(code, /^text\s*=/m)
```

Debes asignar la cadena `'Hello World'` a tu variable `text`. Recuerde utilizar comillas individuales o dobles para encerrar la cadena y prestar atención a la mayúscula.

```js
assert.match(code, /^text\s*=\s*("|')Hello World\1\s*(#.*)?$/m)
```

El código contiene una sintaxis no válida y/o indentación inválida.

```js
({test: () => assert(true) })
```

# --seed--

## --seed-contents--

```py
--fcc-editable-region--
number = 5
--fcc-editable-region--
```
