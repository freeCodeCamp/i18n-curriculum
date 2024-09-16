---
id: 6617aef05b87c334e7ae8016
title: Lição E de Aprenda funções básicas
challengeType: 15
dashedName: learn-function-basics-lesson-e
---

# --description--

Como você viu antes, funções podem retornar um valor usando a palavra-chave `return`. A palavra-chave `return` é usada para retornar um valor de uma função. Quando a palavra-chave `return` é usada, a função vai parar de executar e retornar o valor especificado após a palavra-chave `return`.

```js
function add(a, b) {
  return a + b
}

console.log(add(2, 3)); // Output: 5
```

O que acontece, porém, se a palavra-chave `return` for usada antes do fim da função? Para responder a essa pergunta, considere o exemplo a seguir:

```js
function add(a, b) {
  if(a > 2){
    return b;
  }

  return a + b;
}

console.log(add(3, 7)); // Output: 7
```

No exemplo acima, a função `add` tem uma instrução condicional que verifica se o valor de `a` é maior que `2`. Se a condição for atendida, a função retornará o valor de `b` e vai parar de executar. Se a condição não for atendida, a função retornará a soma de `a` e `b`.

# --question--

## --text--

Qual é o resultado do seguinte trecho de código?

```js
function add(a, b = 12) {
  if(b > 11){
    return b * 2;
  } else if(a > 3){
    return b;
  }

  return a + b;
}

console.log(add(3));
```

## --answers--

A saída é `24`.

---

A saída é `14`.

---

A saída é `15`.

---

A saída é `12`.

## --video-solution--

1
