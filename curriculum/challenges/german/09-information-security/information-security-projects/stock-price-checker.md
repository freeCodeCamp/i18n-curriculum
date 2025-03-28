---
id: 587d824a367417b2b2512c44
title: Aktienpreisprüfer
challengeType: 4
forumTopicId: 301572
dashedName: stock-price-checker
---

# --description--

Build a full stack JavaScript app that is functionally similar to this: <a href="https://stock-price-checker.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://stock-price-checker.freecodecamp.rocks/</a>.

Da alle zuverlässigen Aktienpreis-APIs einen API-Schlüssel benötigen, haben wir eine Umgehungslösung entwickelt. Benutze <a href="https://stock-price-checker-proxy.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://stock-price-checker-proxy.freecodecamp.rocks/</a> um aktuelle Informationen zum Aktienkurs zu erhalten, ohne sich selbst anmelden zu müssen.

Bei der Arbeit an diesem Projekt musst du deinen Code mit einer der folgenden Methoden schreiben:

-   Clone <a href="https://github.com/freeCodeCamp/boilerplate-project-stockchecker/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete your project locally.
-   Use <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-project-stockchecker/" target="_blank" rel="noopener noreferrer nofollow">our Gitpod starter project</a> to complete your project. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.
-   Use a site builder of your choice to complete the project. Be sure to incorporate all the files from our GitHub repo.

# --instructions--

1.  Set the `NODE_ENV` environment variable to `test`, without quotes
2.  Schließe das Projekt in `routes/api.js` oder durch das Erstellen von Handler/Controller ab
3.  Füge alle Sicherheitsfunktionen zu `server.js` hinzu
4.  Du wirst alle funktionalen Tests in `tests/2_functional-tests.js` erstellen

**Note** Privacy Considerations: Due to the requirement that only 1 like per IP should be accepted, you will have to save IP addresses. It is important to remain compliant with data privacy laws such as the General Data Protection Regulation. One option is to get permission to save the user's data, but it is much simpler to anonymize it. For this challenge, remember to anonymize IP addresses before saving them to the database. If you need ideas on how to do this, you may choose to hash the data, truncate it, or set part of the IP address to 0.

Schreibe die folgenden Tests in `tests/2_functional-tests.js`:

-   Viewing one stock: GET request to `/api/stock-prices/`
-   Eine Aktie mit "Like" anzeigen: GET Befehl an `/api/stock-prices/` senden
-   Diesselbe Aktie nochmal anzeigen und liken: GET Befehl an `/api/stock-prices/` senden
-   Zwei Aktien anzeigen: GET Befehl an `/api/stock-prices/` senden
-   Zwei Aktien mit "Like" anzeigen: GET Befehl an `/api/stock-prices/` senden

# --hints--

Du kannst dein eigenes Projekt und nicht die Beispiel-URL angeben.

```js
  assert(
    !/.*\/stock-price-checker\.freecodecamp\.rocks/.test(code)
  );
```

You should set the content security policies to only allow loading of scripts and CSS from your server.

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

You can send a `GET` request to `/api/stock-prices`, passing a NASDAQ stock symbol to a `stock` query parameter. The returned object will contain a property named `stockData`.

```js
async () => {
  const data = await fetch(
    code + '/api/stock-prices?stock=GOOG'
  );
  const parsed = await data.json();
  assert.property(parsed, 'stockData');
};
```

The `stockData` property includes the `stock` symbol as a string, the `price` as a number, and `likes` as a number.

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

You can also pass along a `like` field as `true` (boolean) to have your like added to the stock(s). Only 1 like per IP should be accepted.

```js

```

If you pass along 2 stocks, the returned value will be an array with information about both stocks. Instead of `likes`, it will display `rel_likes` (the difference between the likes on both stocks) for both `stockData` objects.

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

All 5 functional tests are complete and passing.

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

