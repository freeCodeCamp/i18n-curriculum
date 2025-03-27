---
id: 587d7fa7367417b2b2512bc5
title: Працюйте з динамічними даними в D3
challengeType: 6
forumTopicId: 301498
dashedName: work-with-dynamic-data-in-d3
---

# --description--

The last two challenges cover the basics of displaying data dynamically with D3 using the `data()` and `enter()` methods. These methods take a data set and, together with the `append()` method, create a new DOM element for each entry in the data set.

У попередньому завданні ви створили новий елемент `h2` для кожного елемента масиву `dataset`, але всі вони містили однаковий текст `New Title`. Причина в тому, що ви не використали дані, пов’язані з кожним з елементів `h2`.

Метод D3 `text()` може приймати рядок або зворотний виклик як аргумент:

```js
selection.text(d => d);
```

У прикладі вище параметр `d` посилається на один запис у наборі даних, до якого прив’язується вибірка.

Використовуючи поточний приклад як контекст, перший елемент `h2` прив’язаний до 12, другий елемент `h2` прив’язаний до 31, третій елемент `h2` прив’язаний до 22 і так далі.

# --instructions--

Змініть метод `text()`, щоб кожен елемент `h2` виводив відповідне значення з масиву `dataset` з одним пробілом та рядком `USD`. Наприклад, першим заголовком має бути `12 USD`.

# --hints--

Перший елемент `h2` повинен містити текст `12 USD`.

```js
assert.strictEqual(document.querySelectorAll('h2')[0]?.textContent, '12 USD');
```

Другий елемент `h2` повинен містити текст `31 USD`.

```js
assert.strictEqual(document.querySelectorAll('h2')[1]?.textContent, '31 USD');
```

Третій елемент `h2` повинен містити текст `22 USD`.

```js
assert.strictEqual(document.querySelectorAll('h2')[2]?.textContent, '22 USD');
```

Четвертий елемент `h2` повинен містити текст `17 USD`.

```js
assert.strictEqual(document.querySelectorAll('h2')[3]?.textContent, '17 USD');
```

П’ятий елемент `h2` повинен містити текст `25 USD`.

```js
assert.strictEqual(document.querySelectorAll('h2')[4]?.textContent, '25 USD');
```

Шостий елемент `h2` повинен містити текст `18 USD`.

```js
assert.strictEqual(document.querySelectorAll('h2')[5]?.textContent, '18 USD');
```

Сьомий елемент `h2` повинен містити текст `29 USD`.

```js
assert.strictEqual(document.querySelectorAll('h2')[6]?.textContent, '29 USD');
```

Восьмий елемент `h2` повинен містити текст `14 USD`.

```js
assert.strictEqual(document.querySelectorAll('h2')[7]?.textContent, '14 USD');
```

Дев’ятий елемент `h2` повинен містити текст `9 USD`.

```js
assert.strictEqual(document.querySelectorAll('h2')[8]?.textContent, '9 USD');
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select('body')
      .selectAll('h2')
      .data(dataset)
      .enter()
      .append('h2')
      // Add your code below this line

      .text('New Title');

    // Add your code above this line
  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select('body')
      .selectAll('h2')
      .data(dataset)
      .enter()
      .append('h2')
      .text(d => `${d} USD`);
  </script>
</body>
```
