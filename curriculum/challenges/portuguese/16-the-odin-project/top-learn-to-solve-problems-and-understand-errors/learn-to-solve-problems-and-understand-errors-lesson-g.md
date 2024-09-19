---
id: 66581a7eb1eb228115949300
title: Lição G de Aprenda a resolver problemas e a entender erros
challengeType: 15
dashedName: learn-to-solve-problems-and-understand-errors-lesson-g
---

# --description--

Digamos que você tem duas strings que gostaria de combinar para criar uma mensagem, como abaixo:

```js
const str1 = "Hello";
const str2 = "World!";
const message = str1.push(str2);
```

<img src="https://cdn.statically.io/gh/TheOdinProject/curriculum/4ed59981b4ce2c60b5b83bf7415d3127b61821f5/foundations/javascript_basics/understanding_errors/imgs/03.png" style="width:100%" alt="um exemplo de um erro de tipo no console do desenvolvedor do Chrome" />

Aqui, você receberá um `TypeError` com uma mensagem afirmando `str1.push is not a function`. Essa é uma mensagem de erro comum que confunde os aprendizes porque você pode saber que `.push()` é certamente uma função (por exemplo, se você já a usou para adicionar itens a arrays antes).

Essa é a chave – `.push()` não é um método de String; é um método de Array. Portanto, não é uma "função" que você pode encontrar como um método de String. Se você mudar `.push()` para `.concat()`, um método de String adequado, nosso código funciona como planejado!

Uma boa observação a se ter em mente quando confrontado com um `TypeError` é considerar o tipo de dados ao qual você está tentando aplicar um método ou operação. Você provavelmente descobrirá que não é o que você pensa ou que a operação ou método não é compatível com esse tipo.

# --questions--

## --text--

Por que o seguinte código em JavaScript resulta em um `TypeError`?

```js
const str1 = "Hello";
const str2 = "World!";
const message = str1.push(str2);
```

## --answers--

O método `.push()` só pode ser usado em objetos, não em strings.

---

O método `.push()` não está disponível para strings porque é um método de arrays.

---

O método `.push()` está escrito incorretamente e deveria ser .pusch().

---

O `TypeError` é resultado de um erro de sintaxe no código em JavaScript.

## --video-solution--

2
