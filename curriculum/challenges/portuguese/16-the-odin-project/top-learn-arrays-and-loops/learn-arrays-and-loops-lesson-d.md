---
id: 661e27588602567c118451d4
title: Lição D de Aprenda arrays e laços
challengeType: 15
dashedName: learn-arrays-and-loops-lesson-d
---

# --description--

Entre os métodos mais complexos usados com arrays estão os métodos `splice()` e `slice()`. O método `splice()` altera o conteúdo de um array removendo ou substituindo um elemento no array. O método `slice()` retorna uma cópia rasa de uma porção de um array em um novo objeto de array selecionado de `begin` até `end` (não incluindo `end`). O array original não será modificado.

Por exemplo, para remover o segundo elemento do array `characters`, você pode usar o seguinte código:

```javascript
const characters = ['Harry', 'Ron', 'Hermione'];
characters.splice(1, 1);
console.log(characters); // Output: ['Harry', 'Hermione']
```

O elemento acima remove o segundo elemento do array `characters`. O método `splice()` recebe dois argumentos: o índice do elemento a ser removido e o número de elementos a remover.


Para criar um array com o segundo elemento do array `character`, você pode usar o seguinte código:

```javascript
const characters = ['Harry', 'Ron', 'Hermione'];
const newCharacters = characters.slice(1, 2);
console.log(newCharacters); // Output: ['Ron']
```

O código acima cria um array `newCharacters` com o segundo elemento do array `characters`. O método `slice()` recebe dois argumentos: o índice do elemento para iniciar o corte e o índice do elemento para terminar o corte (não incluído).

# --questions--

## --text--

Qual será a saída do seguinte trecho de código em JavaScript?


```javascript
const numbers = [10, 20, 30, 40, 50];
numbers.splice(3, 1);
const slicedNumbers = numbers.slice(2, 4);

console.log(numbers);
console.log(slicedNumbers);
```

## --answers--

Saída de `numbers`: `[10, 20, 30, 50]`. Saída de `slicedNumbers`: `[30, 50]`

---

Saída de `numbers`: `[10, 20, 30, 40]`. Saída de `slicedNumbers`: `[30, 40]`

---

Saída de `numbers`: `[10, 20, 50, 40]`. Saída de `slicedNumbers`: `[20, 50]`

---

Saída de `numbers`: `[10, 20, 30, 50, 40]`. Saída de `slicedNumbers`: `[30, 50]`

## --video-solution--

1
