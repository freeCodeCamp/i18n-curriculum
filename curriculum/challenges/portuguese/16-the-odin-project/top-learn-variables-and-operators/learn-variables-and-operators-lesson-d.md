---
id: 65e1985e500d930ce8ed90a7
title: Lição D de Aprenda variáveis e operadores
challengeType: 15
dashedName: learn-variables-and-operators-lesson-d
---

# --description--

Existem duas limitações nos nomes de variáveis em JavaScript:

1. O nome deve conter apenas letras, dígitos ou os símbolos `$` e `_`.
1. O primeiro caractere não deve ser um dígito.

Exemplos de nomes válidos:

```js
let userName;
let test123;
```

Uma coisa interessante: o símbolo de cifrão, `'$'`, e o sublinhado, `'_'`, também podem ser usados em nomes. They are regular symbols, just like letters, without any special meaning.

These names are valid:

```js
let $ = 1; // declared a variable with the name "$"
let _ = 2; // and now a variable with the name "_"

console.log($ + _); // 3
```

Examples of incorrect variable names:

```js
let 1a; // cannot start with a digit

let my-name; // hyphens '-' aren't allowed in the name
```

# --question--

## --text--

Which of the following is a valid JavaScript variable name?

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
