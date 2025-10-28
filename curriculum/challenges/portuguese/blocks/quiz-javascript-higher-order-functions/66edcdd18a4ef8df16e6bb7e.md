---
id: 66edcdd18a4ef8df16e6bb7e
title: Questionário sobre funções de ordem superior em JavaScript
challengeType: 8
dashedName: quiz-javascript-higher-order-functions
---

# --description--

Para passar no quiz, você deve responder corretamente pelo menos 18 das 20 perguntas abaixo.

# --quizzes--

## --quiz--

### --question--

#### --text--

Qual das seguintes afirmações sobre funções de ordem superior em JavaScript NÃO é verdadeira?

#### --distractors--

Funções de ordem superior podem melhorar muito a legibilidade e a manutenibilidade do código ao permitir técnicas de programação funcional.

---

Funções de ordem superior como map, filter e reduce são ferramentas poderosas para manipulação de arrays, mas não são exclusivas da programação funcional.

---

Funções de ordem superior podem introduzir complexidade na compreensão do código, mas também podem levar a soluções mais expressivas e concisas.

#### --answer--

Todas as funções em JavaScript, incluindo aquelas que não recebem ou retornam outras funções, podem ser classificadas como funções de ordem superior.

### --question--

#### --text--

O que é uma factory function no contexto de higher order functions?

#### --distractors--

Uma função que cria novas variáveis.

---

Uma função que funciona apenas com strings.

---

Uma função que gera automaticamente comentários de código.

#### --answer--

Uma função que retorna uma nova função baseada em parâmetros específicos

### --question--

#### --text--

Após a execução do código, qual será o valor de `forEachRes` e `mapRes`?

```js
const numbers = [1, 1, 1, 1, 1];
let sum = 0;
const forEachRes = numbers.forEach(num => {
  return (sum += num);
});
const mapRes = numbers.map(num => {
  return (sum += num);
});
```

#### --distractors--

`forEachRes` está `undefined` e `mapRes` está `[1,2,3,4,5]`

---

`forEachRes` é `0` e `mapRes` é `[1,2,3,4,5]`

---

`forEachRes` é `5` e `mapRes` é `[1,2,3,4,5]`

#### --answer--

`forEachRes` está `undefined` e `mapRes` é `[6,7,8,9,10]`

### --question--

#### --text--

Qual é o resultado deste código?

```js
[, undefined, 'a', 'b', { 20: 5 }].sort();
```

#### --distractors--

Elementos não suportados para um array a ser ordenado, portanto erro.

---

Callback não fornecido, portanto erro.

---

```js
[empty, 'a', 'b', undefined, { '20': 5 }]
```

#### --answer--

```js
[{ '20': 5 }, 'a', 'b', undefined, empty]
```

### --question--

#### --text--

Qual das seguintes opções descreve uma função callback em JavaScript?

#### --distractors--

Uma função que é chamada imediatamente após a declaração.

---

Uma função que é invocada com um contexto específico.

---

Uma função que retorna outra função.

#### --answer--

Uma função passada como argumento para outra função, para ser executada pela lógica dessa função.

### --question--

#### --text--

Qual é o resultado de usar `reduce()` em um array?

#### --distractors--

Um booleano que indica se algum elemento atende a uma condição.

---

Um array com todos os elementos reduzidos pela função de callback especificada.

---

Um array de booleanos.

#### --answer--

Varia dependendo do valor inicial do acumulador e da função de callback.

### --question--

#### --text--

Como o método `sort()` se comporta se nenhuma função de comparação for fornecida na ordenação numérica?

#### --distractors--

Ele preenche os espaços vazios com `null`.

---

Ele retorna um array de caracteres especiais.

---

Ele ordena o array em ordem reversa.

#### --answer--

Ele ordena o array como strings com base nas unidades de código UTF-16.

### --question--

#### --text--

Qual é o propósito do método `some()` em JavaScript?

#### --distractors--

Para criar um novo array com os resultados de uma função aplicada a cada elemento.

---

Para iterar por um array sem produzir um resultado.

---

Para reduzir um array a um único valor com base em uma função de callback.

#### --answer--

Para determinar se algum elemento em um array passa em um teste especificado.

### --question--

#### --text--

Qual dos seguintes é um exemplo válido de encadeamento de métodos?

#### --distractors--

```js
Math.random();
```

---

```js
array.push(1).pop();
```

---

```js
console.log('Hello');
```

#### --answer--

```js
str.toLowerCase().trim().replace(' ', '_');
```

### --question--

#### --text--

Qual é a saída do seguinte código?

```js
let numbers = [2, 4, 8, 10];

numbers.forEach(function(number) {
    console.log(number % 2);
});
```

#### --distractors--

`2 4 8 10`

---

`null null null null`

---

`1 2 4 5`

#### --answer--

`0 0 0 0`

### --question--

#### --text--

Qual dos seguintes é um benefício do encadeamento de métodos?

#### --distractors--

Ele otimiza inerentemente o desempenho reduzindo o tempo de execução das funções.

---

Ele elimina a necessidade de variáveis temporárias, mas pode aumentar o uso de memória em alguns casos.

---

Ele permite que o tratamento de erros e a depuração sejam mais diretos.

#### --answer--

Ele promove uma sintaxe simplificada e um código mais legível ao permitir múltiplas operações em uma única expressão.

### --question--

#### --text--

Como você pode ordenar um array de objetos por uma propriedade específica usando o método `sort`?

#### --distractors--

O método `sort` não pode ordenar objetos.

---

Use o método `reverse` após a ordenação.

---

Converta os objetos em strings e ordene-os.

#### --answer--

Use uma função de comparação que compare os valores das propriedades.

### --question--

#### --text--

No encadeamento de métodos, qual é uma prática comum para melhorar a clareza e a depuração?

#### --distractors--

Use menos métodos na cadeia.

---

Evite encadear métodos que retornam apenas valores primitivos.

---

Use apenas métodos embutidos.

#### --answer--

Divida cadeias longas em múltiplas etapas.

### --question--

#### --text--

Qual é uma desvantagem potencial de usar encadeamento de métodos excessivamente no seu código?

#### --distractors--

Isso faz o código rodar mais devagar.

---

Ele previne o uso de comentários.

---

Isso aumenta o tamanho do arquivo.

#### --answer--

Pode tornar o código mais difícil de depurar.

### --question--

#### --text--

Qual método você usaria para determinar se todos os elementos em um array são strings?

#### --distractors--

`some()`

---

`everyInstance()`

---

`filter()`

#### --answer--

`every()`

### --question--

#### --text--

Qual será o valor de `originalArray` depois que o seguinte código for executado?

```js
const originalArray = [{ id: 1 }, { id: 2 }, { id: 3 }];
const filteredArray = originalArray.filter(item => item.id > 1);
filteredArray[0].id = 4;
```

#### --distractors--

`[{ id: 1 }, { id: 2 }, { id: 3 }]`

---

`[{ id: 1 }]`

---

`[{ id: 4 }, { id: 2 }, { id: 3 }]`

#### --answer--

`[{ id: 1 }, { id: 4 }, { id: 3 }]`
### --question--

#### --text--

Qual será o valor de `shortWords` depois que o seguinte código for executado?

```js
const words = ['apple', 'banana', 'pear', 'kiwi'];
const shortWords = words.filter(word => word.length <= 5);
```

#### --distractors--

`[]`

---

`['pear', 'kiwi']`

---

`['apple', 'banana']`

#### --answer--

`['apple', 'pear', 'kiwi']`

### --question--

#### --text--

Qual é o propósito de fornecer um valor inicial como argumento para o método `reduce()`?

#### --distractors--

Para definir o tamanho do array.

---

Para limitar o número de iterações.

---

Para especificar o tipo de retorno da função.

#### --answer--

Para definir o valor inicial para o acumulador.

### --question--

#### --text--

O método `map` pode ser usado em objetos que não sejam arrays?

#### --distractors--

Sim, pode ser usado em qualquer objeto.

---

Sim, mas apenas em objetos com propriedades numéricas.

---

Depende da versão do JavaScript.

#### --answer--

Não, ele é especificamente projetado para arrays.

### --question--

#### --text--

Qual é o propósito principal do método `map` em JavaScript?

#### --distractors--

Para ordenar um array e retornar um novo array mantendo a ordem original. 

---

Para filtrar elementos de um array e remover ou adicionar elementos com base em uma condição.

---

Para encontrar um elemento específico em um array e retornar seu índice junto com o elemento.

#### --answer--

Para criar um novo array contendo os resultados da chamada de uma função fornecida em cada elemento do array inicial.
