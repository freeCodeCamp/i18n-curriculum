---
id: 661e275a8602567c118451d7
title: Lição G de Aprenda arrays e laços
challengeType: 15
dashedName: learn-arrays-and-loops-lesson-g
---

# --description--

Agora que você sabe sobre as formas mais comuns de iterar sobre valores e arrays, existem algumas outras maneiras de iterar sobre arrays. Arrays possuem um método embutido chamado `map()`, que é usado para criar um array aplicando uma função a cada elemento do array original. O método `map()` não altera o array original. A sintaxe do método `map()` é a seguinte:

```javascript
const array = [1, 2, 3, 4, 5];

const newArray = array.map((arrayValue) => {
  return arrayValue * 2;
});

console.log(newArray); // Output: [2, 4, 6, 8, 10]
```

O método `map()` cria um array aplicando a função `(arrayValue) => { return arrayValue * 2;` para cada elemento do array original. Isso é particularmente útil quando você quer transformar os elementos de um array sem alterar o array original.

# --question--

## --text--

Qual será a saída do seguinte trecho de código em JavaScript?

```javascript
const numbers = [1, 2, 3, 4, 5];
const newNumbers = numbers.map((number) => {
  return number * 3;
});

console.log(newNumbers);
```

## --answers--

`[1, 2, 3, 4, 5]`

---

`[3, 6, 9, 12, 15]`

---

`[1, 3, 5, 7, 9]`

---

`[3, 6, 9, 12, 15, 18]`

## --video-solution--

2
