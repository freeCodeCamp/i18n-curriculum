---
id: 6617a1fce90de1b3fd10bd4e
title: Lição B de Aprenda funções básicas
challengeType: 15
dashedName: learn-function-basics-lesson-b
---

# --description--

```js
function favoriteAnimal(animal) {
  return animal + " is my favorite animal!"
}

console.log(favoriteAnimal('Goat'));
```

Ao colocar `animal` dentro dos parênteses da função `favoriteAnimal()`, você está dizendo ao JavaScript que enviará algum valor para a função `favoriteAnimal`. Isso significa que animal é apenas um marcador de posição para algum valor futuro. Qual, no entanto, é o valor você está enviando?

A última linha, `favoriteAnimal('Goat')`, é onde você está chamando sua função `favoriteAnimal` e passando o valor `'Goat'` dentro dessa função. Aqui, `'Goat'` é seu argumento. Você está dizendo à função `favoriteAnimal`, "Por favor, envie `'Goat'` para a função `favoriteAnimal` e use `'Goat'` onde quer que o marcador de posição `'animal'` esteja." Por causa da flexibilidade que o uso de um parâmetro proporciona, você pode declarar qualquer animal como seu favorito.

Aqui está um diagrama para ajudar você a visualizar como os parâmetros são passados para uma função e como os valores são retornados dela.

<img src="https://cdn.statically.io/gh/TheOdinProject/curriculum/c53dd9a12f0c9afde0d9229f82a176170f12e120/foundations/javascript_basics/function_basics/imgs/00.png" alt="Uma descrição de uma função com setas explicando que os valores entre os parênteses da função são chamados de parâmetros e que os valores emitidos quando a função é usada são chamados de argumentos" style="width:95%;height:auto;" />

Observe que ao chamar `favoriteAnimal()` dentro de `console.log()` com o argumento `'Goat'`, você obtém o valor de retorno da função, a string `"Goat is my favorite animal!"`, impresso no console. Você está passando uma chamada de função `favoriteAnimal('Goat')` como um argumento em uma chamada de função diferente - `log()`.

# --question--

## --text--

Se você mudar o argumento de `'Goat'` para `'Elephant'` na chamada da função `favoriteAnimal('Goat')`, o que `console.log(favoriteAnimal('Elephant'))` imprimiria no console?

## --answers--

`"Goat is my favorite animal!"`

---

A função retornará um erro porque `"Elephant"` não é um argumento reconhecido.

---

`"Elephant is my favorite animal!"`

---

`"Kangaroo is my favorite animal!"`

## --video-solution--

3
