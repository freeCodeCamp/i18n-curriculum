---
id: 587d7b7b367417b2b2512b17
title: Об’єднання масивів за допомогою оператора розширення
challengeType: 1
forumTopicId: 301156
dashedName: combine-arrays-with-the-spread-operator
---

# --description--

Another huge advantage of the <dfn>spread</dfn> operator is the ability to combine arrays, or to insert all the elements of one array into another, at any index. With more traditional syntaxes, we can concatenate arrays, but this only allows us to combine arrays at the end of one, and at the start of another. Spread syntax makes the following operation extremely simple:

```js
let thisArray = ['sage', 'rosemary', 'parsley', 'thyme'];

let thatArray = ['basil', 'cilantro', ...thisArray, 'coriander'];
```

`thatArray` матиме значення `['basil', 'cilantro', 'sage', 'rosemary', 'parsley', 'thyme', 'coriander']`.

Використовуючи синтаксис розширення, ми щойно виконали операцію, яка була б складнішою і детальнішою, якби ми використовували традиційні методи.

# --instructions--

Ми визначили функцію `spreadOut`, яка повертає змінну `sentence`. Змініть функцію, використовуючи оператор <dfn>розширення</dfn>, щоб вона повернула масив `['learning', 'to', 'code', 'is', 'fun']`.

# --hints--

`spreadOut` має повернути `["learning", "to", "code", "is", "fun"]`

```js
assert.deepEqual(spreadOut(), ['learning', 'to', 'code', 'is', 'fun']);
```

Функція `spreadOut` має використовувати синтаксис розширення

```js
assert.notStrictEqual(spreadOut.toString().search(/[...]/), -1);
```

# --seed--

## --seed-contents--

```js
function spreadOut() {
  let fragment = ['to', 'code'];
  let sentence; // Change this line
  return sentence;
}

console.log(spreadOut());
```

# --solutions--

```js
function spreadOut() {
  let fragment = ['to', 'code'];
  let sentence = ['learning', ...fragment, 'is', 'fun'];
  return sentence;
}
```
