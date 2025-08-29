---
id: 587d824a367417b2b2512c44
title: Controllo del prezzo delle azioni
challengeType: 4
forumTopicId: 301572
dashedName: stock-price-checker
---

# --description--

Build a full stack JavaScript app that is functionally similar to this: <a href="https://stock-price-checker.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://stock-price-checker.freecodecamp.rocks/</a>.

Poiché tutte le API di stock price affidabili richiedono una chiave API, abbiamo costruito una soluzione alternativa. Usa <a href="https://stock-price-checker-proxy.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://stock-price-checker-proxy.freecodecamp.rocks/</a> per ottenere informazioni aggiornate sul prezzo delle azioni senza doverti iscrivere per ottenere la tua chiave.

Lavorare su questo progetto ti porterà a scrivere il tuo codice utilizzando uno dei seguenti metodi:

-   Clone <a href="https://github.com/freeCodeCamp/boilerplate-project-stockchecker/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete your project locally.
-   Use a site builder of your choice to complete the project. Be sure to incorporate all the files from our GitHub repo.

# --instructions--

1.  Set the `NODE_ENV` environment variable to `test`, without quotes
2.  Completa il progetto in `routes/api.js` o creando un handler/controller
3.  Aggiungerai tutte le funzionalità di sicurezza a `server.js`
4.  Creerai tutti i test funzionali in `tests/2_functional-tests.js`

**Note** Privacy Considerations: Due to the requirement that only 1 like per IP should be accepted, you will have to save IP addresses. It is important to remain compliant with data privacy laws such as the General Data Protection Regulation. One option is to get permission to save the user's data, but it is much simpler to anonymize it. For this challenge, remember to anonymize IP addresses before saving them to the database. If you need ideas on how to do this, you may choose to hash the data, truncate it, or set part of the IP address to 0.

Scrivi i seguenti test in `tests/2_functional-tests.js`:

-   Viewing one stock: GET request to `/api/stock-prices/`
-   Visualizzazione di un'azione e aggiunta del like: richiesta GET a `/api/stock-prices/`
-   Visualizzazione della stesse azione e nuovo like: richiesta GET a `/api/stock-prices/`
-   Visualizzazione di due azioni: richiesta GET a `/api/stock-prices/`
-   Visualizzazione di due azioni e aggiunta del like: richiesta GET a `/api/stock-prices/`

# --hints--

Puoi fornire il tuo progetto e non l'URL di esempio.

```js
  assert(
    !/.*\/stock-price-checker\.freecodecamp\.rocks/.test(code)
  );
```

Dovresti impostare i criteri di sicurezza dei contenuti per consentire il caricamento di script e CSS solo dal tuo server.

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

Puoi inviare una richiesta `GET` a `/api/stock-prices`, passando un simbolo azionario NASDAQ a un parametro di query `stock` (azione). L'oggetto restituito conterrà una proprietà denominata `stockData`.

```js
async () => {
  const data = await fetch(
    code + '/api/stock-prices?stock=GOOG'
  );
  const parsed = await data.json();
  assert.property(parsed, 'stockData');
};
```

La proprietà `stockData` include il simbolo `stock` come stringa, il prezzo `price` come numero e i `likes` come numero.

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

Puoi anche passare un campo `like` come `true` (booleano) per avere il tuo like aggiunto alle azioni. Dovrebbe essere accettato solo un like per IP.

```js

```

Se passi 2 azioni, il valore restituito sarà un array con informazioni su entrambe le azioni. Invece di `likes`, mostrerà `rel_likes` (la differenza tra i like delle azioni) per entrambi gli oggetti `stockData`.

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

Tutti i 5 test funzionali sono completi e superati.

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

