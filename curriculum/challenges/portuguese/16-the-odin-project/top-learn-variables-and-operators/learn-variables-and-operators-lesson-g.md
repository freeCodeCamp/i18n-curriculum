---
id: 65e1aaf8500d930ce8ed90aa
title: Lição G de Aprenda variáveis e operadores
challengeType: 15
dashedName: learn-variables-and-operators-lesson-g
---

# --description--

O sinal de mais `+` existe em duas formas: a forma binária que você usou no último desafio e a forma unária.

O sinal de mais unário ou, em outras palavras, o operador de mais `+` aplicado a um único valor, não faz nada com números. Se o operando, no entanto, não for um número, o mais unário o converte em um número.

Por exemplo:

```js
// No effect on numbers
let x = 1;
console.log( +x ); // 1

let y = -2;
console.log( +y ); // -2

// Converts non-numbers
console.log( +true ); // 1
console.log( +"" );   //
```

A necessidade de converter strings em números surge com muita frequência. Por exemplo, se você está obtendo valores de campos de formulário HTML, eles geralmente são strings. O que você faria se quisesse somá-los?

O sinal de mais binário os adicionaria como strings:

```js
let apples = "2";
let oranges = "3";

alert( apples + oranges ); // "23", the binary plus concatenates strings
```

Se você quiser tratá-los como números, você precisa convertê-los e depois somá-los:

```js
let apples = "2";
let oranges = "3";

// both values converted to numbers before the binary plus
alert( +apples + +oranges ); // 5

// the longer variant
// alert( Number(apples) + Number(oranges) ); // 5
```

Do ponto de vista de um matemático, a abundância de sinais de mais pode parecer estranha. Do ponto de vista de um programador, no entanto, não há nada de especial: os mais unários são aplicados primeiro, convertem strings em números e o mais binário os soma.

Por que os mais unários são aplicados aos valores antes dos binários? Como você verá, isso é por causa de sua _maior_ precedência.

# --questions--

## --text--
Dada a explicação dos operadores `+` unário e binário em JavaScript, como você pode somar corretamente os valores de string `'2'` e `'3'` como números usando o `+` unário?

## --answers--

`console.log('2' + '3'); // Outputs: '23'`

---

`console.log(+2 + +3); // Outputs: 5`

---

`console.log(+'2' + +'3'); // Outputs: 5`

---

`console.log(Number('2') + Number('3')); // Outputs: '23'`


## --video-solution--

3
