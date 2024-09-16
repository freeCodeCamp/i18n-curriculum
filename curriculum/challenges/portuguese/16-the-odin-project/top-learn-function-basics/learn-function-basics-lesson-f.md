---
id: 6617aef85b87c334e7ae8017
title: Lição F de Aprenda funções básicas
challengeType: 15
dashedName: learn-function-basics-lesson-f
---

# --description--

As arrow functions são uma forma mais moderna de se escrever funções em JavaScript. Elas fornecem uma sintaxe mais compacta em comparação com expressões de função tradicionais. As arrow functions são definidas usando a sintaxe `=>`.

```js
const add = (a, b) => {
  return a + b;
}
```

No exemplo acima, a arrow function `add` recebe dois parâmetros `a` e `b` e retorna a sua soma. A palavra-chave `return` é usada para retornar o resultado da operação de adição.

Se a arrow function tem apenas uma expressão, as chaves `{}` e a palavra-chave `return` podem ser omitidas. A expressão será retornada implicitamente.

```js
const add = (a, b) => a + b;
```

No exemplo acima, a função de seta `add` recebe dois parâmetros `a` e `b` e retorna a sua soma. A palavra-chave `return` e as chaves `{}` foram omitidos e o resultado da operação de adição é implicitamente retornado.

# --question--

## --text--

O que torna as arrow functions diferentes das expressões de função tradicionais em JavaScript?

## --answers--

Elas não podem retornar valores.

---

Elas não podem receber parâmetros.

---

Elas têm uma sintaxe mais compacta em comparação com expressões de função tradicionais.

---

Elas requerem o uso da palavra-chave `function`.

## --video-solution--

3
