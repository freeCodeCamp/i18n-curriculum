---
id: 65e97280484dd50f720e6fee
title: Lição I de Aprenda tipos de dados e condicionais
challengeType: 15
dashedName: learn-data-types-and-conditionals-lesson-i
---

# --description--

No último exemplo, você tinha duas escolhas `if` ou `else`. Como faria se quisesse ter mais de duas escolhas? Você poderia usar a instrução `else if` para adicionar mais condições ao nosso código. A instrução `else if` nos permite verificar várias condições e executar um bloco de código quando a primeira condição for verdadeira. Se a primeira condição for falsa, verificará a próxima condição e assim por diante. Se nenhuma das condições for verdadeira, o bloco `else` será executado.

Aqui está um exemplo da instrução `else if`:

```javascript
let x = 5;

if (x > 10) {
  console.log("x is greater than 10");
} else if (x > 5) {
  console.log("x is greater than 5");
} else {
  console.log("x is less than or equal to 5");
}
```

No exemplo, a variável `x` é comparada ao número `10` usando o operador `>`. Se `x` for maior que `10`, o primeiro bloco de código será executado. Caso contrário, a instrução `else if` verificará a próxima condição. Se `x` for maior que `5`, o segundo bloco de código será executado. Caso contrário, o bloco `else` será executado.

# --question--

## --text--

Qual será a saída do código a seguir?

```javascript
let x = 4;

if (x > 10) {
  console.log("x is greater than 10");
} else if (x > 5) {
  console.log("x is greater than 5");
} else {
  console.log("x is less than or equal to 5");
}
```

## --answers--

`x is less than or equal to 5`

---

`x is greater than 5`

---

`x is greater than 10`

## --video-solution--

1
