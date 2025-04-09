---
id: 587d824a367417b2b2512c44
title: Перевірка ціни на ринку акцій
challengeType: 4
forumTopicId: 301572
dashedName: stock-price-checker
---

# --description--

Build a full stack JavaScript app that is functionally similar to this: <a href="https://stock-price-checker.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://stock-price-checker.freecodecamp.rocks/</a>.

Оскільки всі надійні API цін на акції вимагають API-ключа, ми створили обхідний шлях. Використайте <a href="https://stock-price-checker-proxy.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://stock-price-checker-proxy.freecodecamp.rocks/</a>, щоб отримати актуальну інформацію про ціни на акції без необхідності підписуватись на власний ключ.

Робота над цим проєктом передбачає написання коду за допомогою одного з наступних методів:

-   Clone <a href="https://github.com/freeCodeCamp/boilerplate-project-stockchecker/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete your project locally.
-   Use a site builder of your choice to complete the project. Be sure to incorporate all the files from our GitHub repo.

# --instructions--

1.  Set the `NODE_ENV` environment variable to `test`, without quotes
2.  Завершіть проєкт в `routes/api.js` або створивши обробник/контролер
3.  Ви додаватимете будь-які функції безпеки до `server.js`
4.  Ви створюватимете усі функціональні тести в `tests/2_functional-tests.js`

**Note** Privacy Considerations: Due to the requirement that only 1 like per IP should be accepted, you will have to save IP addresses. It is important to remain compliant with data privacy laws such as the General Data Protection Regulation. One option is to get permission to save the user's data, but it is much simpler to anonymize it. For this challenge, remember to anonymize IP addresses before saving them to the database. If you need ideas on how to do this, you may choose to hash the data, truncate it, or set part of the IP address to 0.

Напишіть наступні тести в `tests/2_functional-tests.js`:

-   Viewing one stock: GET request to `/api/stock-prices/`
-   Якщо Ви переглянули одну акцію й вона Вам сподобалась: запит GET в `/api/stock-prices/`
-   Якщо Ви переглянули ту ж саму акцію й обрали її знову: запит GET в `/api/stock-prices/`
-   Якщо Ви переглянули дві акції: запит GET в `/api/stock-prices/`
-   Якщо Ви переглянули дві акції та вони Вам сподобались: запит GET в `/api/stock-prices/`

# --hints--

Ви можете надати власний проєкт, а не URL-адресу прикладу.

```js
  assert(
    !/.*\/stock-price-checker\.freecodecamp\.rocks/.test(code)
  );
```

Ви маєте налаштувати політику безпеки вмісту так, щоб дозволити завантаження скриптів та CSS лише з вашого сервера.

```js
async () => {
  const data = await fetch(code + '/_api/app-info');
  const parsed = await data.json();
  assert.isTrue(
    parsed.headers['content-security-policy'].includes("script-src 'self'")
  );
  assert.isTrue(
    parsed.headers['content-security-policy'].includes("style-src 'self'")
  );
};
```

Ви можете надіслати запит `GET` до `/api/stock-prices`, передаючи символ акції NASDAQ в парметр запиту `stock`. Отриманий об'єкт міститиме властивість із назвою `stockData`.

```js
async () => {
  const data = await fetch(
    code + '/api/stock-prices?stock=GOOG'
  );
  const parsed = await data.json();
  assert.property(parsed, 'stockData');
};
```

Властивість `stockData` включає символ `акції` у вигляді строки, `ціну` та `вподобання` у вигляді чисел.

```js
async () => {
  const data = await fetch(
    code + '/api/stock-prices?stock=GOOG'
  );
  const parsed = await data.json();
  const ticker = parsed.stockData;
  assert.typeOf(ticker.price, 'number');
  assert.typeOf(ticker.likes, 'number');
  assert.typeOf(ticker.stock, 'string');
};
```

Ви також можете передати поле `like` як `true`, аби ваші вподобання було додано до акції(й). Приймається лише одне вподобання на IP.

```js

```

Якщо Ви передасте 2 акції, то отриманим значенням буде масив із інформацією про обидві акції. Замість `likes` буде показано `rel_likes` (різниця між уподобаннями на обох акціях) для обох об'єктів `stockData`.

```js
async () => {
  const data = await fetch(
    code + '/api/stock-prices?stock=GOOG&stock=MSFT'
  );
  const parsed = await data.json();
  const ticker = parsed.stockData;
  assert.typeOf(ticker, 'array');
  assert.property(ticker[0], 'rel_likes');
  assert.property(ticker[1], 'rel_likes');
};
```

Усі 5 функціональні тести завершені та успішно здані.

```js
async () => {
  const tests = await fetch(code + '/_api/get-tests');
  const parsed = await tests.json();
  assert.isTrue(parsed.length >= 5);
  parsed.forEach((test) => {
    assert.equal(test.state, 'passed');
  });
};
```

