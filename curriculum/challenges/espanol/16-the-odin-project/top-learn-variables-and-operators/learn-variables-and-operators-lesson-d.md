---
id: 65e1985e500d930ce8ed90a7
title: Aprende variables y operadores lección D
challengeType: 15
dashedName: learn-variables-and-operators-lesson-d
---

# --description--

Hay dos limitaciones en los nombres de variables en JavaScript:

1. El nombre debe contener solo letras, dígitos, o los símbolos `$` y `_`.
1. El primer carácter no debe ser un dígito.

Ejemplos de nombres válidos:

```js
let userName;
let test123;
```

Lo que es interesante: el signo de dólar `'$'` y el subrayar `'_'` también pueden ser usados en nombres. Son símbolos regulares, al igual que las letras, sin ningún significado especial.

Estos nombres son válidos:

```js
let $ = 1; // declared a variable with the name "$"
let _ = 2; // and now a variable with the name "_"

console.log($ + _); // 3
```

Ejemplos de nombres de variables incorrectos:

```js
let 1a; // cannot start with a digit

let my-name; // hyphens '-' aren't allowed in the name
```

# --preguntas----preguntas--

## --text--

¿Cuál de los siguientes es un nombre de variable JavaScript válido?

## --answers--

`let 2things;`

---

`let my-name;`

---

`let var!;`

---

`let $myVar;`


## --video-solution--

4
