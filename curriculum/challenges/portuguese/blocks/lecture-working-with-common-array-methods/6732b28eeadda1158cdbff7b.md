---
id: 6732b28eeadda1158cdbff7b
title: Como Você Pode Verificar se um Array Contém um Valor Específico?
challengeType: 19
dashedName: how-can-you-check-if-an-array-contains-a-certain-value
---

# --interactive--

Em JavaScript, o método `includes()` é uma maneira simples e eficiente de verificar se um array contém um valor específico. Este método retorna um valor booleano: `true` se o array contiver o elemento especificado e `false` caso contrário. 

O método `includes()` é particularmente útil quando você precisa verificar rapidamente a presença de um elemento em um array sem precisar saber sua posição exata. Vamos começar com um exemplo de como usar o método `includes()`:

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange", "mango"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("grape"));  // false
```

:::

Neste exemplo, temos um array de frutas. Usamos o método `includes()` para verificar se `banana` está no array. Ele retorna `true` porque `banana` está realmente presente. Em seguida, verificamos `grape`, que retorna `false` porque não está no array.

O método `includes()` diferencia maiúsculas de minúsculas ao lidar com strings. Isso significa que `Banana` com B maiúsculo e `banana` com todas as letras minúsculas são considerados valores diferentes. Aqui está um exemplo que ilustra isso:

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("Banana")); // false
```

:::

Neste caso, `banana` (tudo em minúsculas) é encontrado no array, mas `Banana` (com a primeira letra maiúscula) não é, então a segunda chamada de `includes()` retorna `false`.

O método `includes()` também pode aceitar um segundo parâmetro opcional que especifica a posição no array para iniciar a busca. Isso é útil se você quiser verificar a presença de um elemento em uma parte específica do array. Aqui está como você pode usar esse recurso:

:::interactive_editor

```js
let numbers = [10, 20, 30, 40, 50, 30, 60];
console.log(numbers.includes(30, 3)); // true
console.log(numbers.includes(30, 4)); // true
```

:::

Para o primeiro `console.log`, estamos procurando o número `30` começando no índice `3`. Neste caso, há um número `30` que aparece após o índice `3`, então o método `includes()` retorna `true`. 

O mesmo vale para o segundo `console.log`. Estamos procurando o número `30` começando no índice `4`. Como o número `30` aparece depois desse índice, então ele retornará `true`. 

Vale notar que `includes()` usa a comparação de igualdade estrita (`===`), o que significa que ele pode distinguir entre tipos diferentes. Por exemplo:

:::interactive_editor

```js
let mixedArray = [1, "2", 3, "4", 5];
console.log(mixedArray.includes(2));  // false
console.log(mixedArray.includes("2")); // true
```

:::

Neste caso, o número `2` e a string `"2"` são considerados tipos de dados diferentes. Então, o primeiro `console.log` retornará `false` enquanto o segundo `console.log` retornará `true`.

O método `includes()` é uma ferramenta poderosa para verificar a presença de elementos em arrays. É simples de usar, eficiente e pode salvar você de escrever loops ou condições mais complexas para buscar em arrays. Quer você esteja trabalhando com strings, números ou tipos de dados mistos, `includes()` oferece uma maneira simples de verificar se um valor existe no seu array.

# --questions--

## --text--

Como será a saída do seguinte código?

```js
let arr = [1, 2, 3, 4, 5];
console.log(arr.includes(3, 3));
```

## --answers--

`true`

### --feedback--

The second parameter of ``includes()`` specifies the starting position for the search.

---

`false`

---

`undefined`

### --feedback--

The second parameter of ``includes()`` specifies the starting position for the search.

---

Isso gerará um erro.

### --feedback--

The second parameter of ``includes()`` specifies the starting position for the search.

## --video-solution--

2

## --text--

Como será a saída do seguinte código?

```js
let arr = ["a", "b", "c", "d", "e"];
console.log(arr.includes("C"));
```

## --answers--

`true`

### --feedback--

Remember that ``includes()`` is case-sensitive when dealing with strings.

---

`false`

---

`undefined`

### --feedback--

Remember that ``includes()`` is case-sensitive when dealing with strings.

---

Isso gerará um erro.

### --feedback--

Remember that ``includes()`` is case-sensitive when dealing with strings.

## --video-solution--

2

## --text--

Como será a saída do seguinte código?

```js
let arr = [1, "2", 3, "4", 5];
console.log(arr.includes("3"));
```

## --answers--

`true`

### --feedback--

The ``includes()`` method uses strict equality (`===`) for comparison.

---

`false`

---

`undefined`

### --feedback--

The ``includes()`` method uses strict equality (`===`) for comparison.

---

Isso gerará um erro.

### --feedback--

The ``includes()`` method uses strict equality (`===`) for comparison.

## --video-solution--

2
