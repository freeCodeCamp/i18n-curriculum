---
id: 587d8254367417b2b2512c70
title: Criar e adicionar a conjuntos na ES6
challengeType: 1
forumTopicId: 301636
dashedName: create-and-add-to-sets-in-es6
---

# --description--

Now that you have worked through ES5, you are going to perform something similar in ES6. This will be considerably easier. ES6 contains a built-in data structure `Set` so many of the operations you wrote by hand are now included for you. Let's take a look:

Para criar um novo conjunto vazio:

```js
var set = new Set();
```

Você pode criar um conjunto com um valor:

```js
var set = new Set(1);
```

Você pode criar um conjunto com um array:

```js
var set = new Set([1, 2, 3]);
```

Depois de criar um conjunto, você pode adicionar os valores que deseja usando o método `add`:

```js
var set = new Set([1, 2, 3]);
set.add([4, 5, 6]);
```

É importante lembrar que um conjunto é uma estrutura de dados que não pode conter valores duplicados:

```js
var set = new Set([1, 2, 3, 1, 2, 3]);
// set contains [1, 2, 3] only
```

# --instructions--

Para este exercício, retorne um conjunto com os seguintes valores: `1, 2, 3, 'Taco', 'Cat', 'Awesome'`

# --hints--

O `Set` deve conter apenas os valores `1, 2, 3, Taco, Cat, Awesome`.

```js
assert(
  (function () {
    var test = checkSet();
    return (
      test.size == 6 &&
      test.has(1) &&
      test.has(2) &&
      test.has(3) &&
      test.has('Taco') &&
      test.has('Cat') &&
      test.has('Awesome')
    );
  })()
);
```

# --seed--

## --seed-contents--

```js
function checkSet() {
  var set = new Set([1, 2, 3, 3, 2, 1, 2, 3, 1]);
  // Only change code below this line

  // Only change code above this line
  console.log(Array.from(set));
  return set;
}

checkSet();
```

# --solutions--

```js
function checkSet(){var set = new Set([1,2,3,'Taco','Cat','Awesome']);
return set;}
```
