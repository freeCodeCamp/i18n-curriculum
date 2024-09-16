---
id: 65e1a2ea500d930ce8ed90a9
title: Lição F de Aprenda variáveis e operadores
challengeType: 15
dashedName: learn-variables-and-operators-lesson-f
---

# --description--

Vamos conhecer os recursos dos operadores de JavaScript que vão além da aritmética escolar.

Normalmente, o operador de soma, `+`, soma números.

Porém, se o binário `+` for aplicado a strings, ele as mescla (concatena):

```js
let s = "my" + "string";
console.log(s); // mystring
```

Observe que se qualquer dos operandos for uma string, o outro também é convertido para string.

Por exemplo:

```js
console.log(1 + '2'); // '12'
console.log('1' + 2); // '12'
```

Não importa se o primeiro operando é uma string ou o segundo.

Aqui está um exemplo mais complexo:

```js
console.log(2 + 2 + '1') // "41" and not "221"
```

Aqui, os operadores funcionam um após o outro. O primeiro `+` soma dois números, então ele retorna `4`, em seguida o próximo `+` adiciona a string `1` a ele, resultando em `4 + '1' = '41'`.

```js
console.log('1' + 2 + 2) // "122" and not "14"
```

Aqui, o primeiro `+` concatena a string e o número, então ele retorna `'12'`, em seguida o próximo `+` adiciona `2` a ele, então é como `'12' + 2 = '122'`.

O binário `+` é o único operador que suporta strings dessa forma. Outros operadores aritméticos funcionam apenas com números e sempre convertem seus operandos em números.

Aqui está a demonstração para subtração e divisão:

```js
console.log( 6 - '2' ); // 4, converts '2' to a number
console.log( '6' / '2' ); // 3, converts both operands to numbers
```

# --question--

## --text--
Considerando o comportamento do operador `+` com tipos de dados mistos em JavaScript, qual será a saída do seguinte trecho de código?

```js
console.log('3' + 2 - 1);
```

## --answers--

`31`, porque o operador `+` concatena a string e o número antes da subtração.

---

`32`, porque `+` concatena a string e o número antes da subtração.

---

`4`, porque todos os operandos são convertidos para números primeiro.

---

`321`, porque o operador `-` não é suportado com strings.

## --video-solution--

1
