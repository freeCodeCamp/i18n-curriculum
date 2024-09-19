---
id: 6617aee05b87c334e7ae8014
title: Lição C de Aprenda funções básicas
challengeType: 15
dashedName: learn-function-basics-lesson-c
---

# --description--

Uma variável declarada dentro de uma função é visível apenas dentro de uma função. Isso é chamado de escopo da variável. Esse escopo em particular é chamado de escopo local. Variáveis declaradas fora de uma função são chamadas variáveis globais e são visíveis em todo o programa. Por exemplo, o código a seguir mostrará um erro:

```js
function myFunction() {
  let x = 10;
}

console.log(x);
```

A variável `x` é declarada dentro da função `myFunction` e não é visível fora da função. O código mostrará um `ReferenceError` porque `x` não está definido.

Se você declarar uma variável fora de uma função, ela é chamada de variável global e é visível em todo o programa. Por exemplo, o código a seguir funcionará:

```js
let x = 10;

function myFunction() {
  console.log(x);
}

myFunction();
```

Se uma variável com o mesmo nome for declarada dentro da função, ela anulará a variável externa dentro da função.

# --questions--

## --text--

Qual será a saída do seguinte código?

```js
let x = 10;

function myFunction() {
  let x = 20;
  console.log(x);
}
```

## --answers--

10

---

20


## --video-solution--

2
