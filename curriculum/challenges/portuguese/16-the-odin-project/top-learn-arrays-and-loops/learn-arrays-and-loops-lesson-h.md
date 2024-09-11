---
id: 661e275a8602567c118451d8
title: Lição H de Aprenda arrays e laços
challengeType: 15
dashedName: learn-arrays-and-loops-lesson-h
---

# --description--

Um outro método útil de array é o método `filter()`. O método `filter()` cria um novo array com todos os elementos que passam no teste implementado pela função fornecida. A sintaxe do método `filter()` é a seguinte:

```javascript
const numbers = [2, 5, 6, 1, 9, -1]

const newNumbers = numbers.filter((number) => {
  return number > 2;
});

console.log(newNumbers); // Output: [5, 6, 9]
```

O método `filter()` cria um array com todos os elementos que são maiores que 2. O método `filter()` não altera o array original.

# --question--

## --text--

Como será a saída do seguinte trecho de código em JavaScript?

```javascript
const strings = ['apple', 'banana', 'cherry', 'orange', 'kiwi', 'mango'];
const newStrings = strings.filter((string) => {
  return string.length > 5;
});

console.log(newStrings);
```

## --answers--

`['apple', 'banana', 'cherry', 'orange', 'kiwi', 'mango']`

---

`['apple', 'banana', 'cherry', 'orange', 'kiwi']`

---

`['banana, 'cherry', 'orange']`

---

`['apple', 'banana', 'cherry', 'orange', 'kiwi']`


## --video-solution--

3
