---
id: 587d7fb2367417b2b2512bf6
title: Ottenere l'input del parametro query dal client
challengeType: 2
forumTopicId: 301512
dashedName: get-query-parameter-input-from-the-client
---

# --description--

Another common way to get input from the client is by encoding the data after the route path, using a query string. The query string is delimited by a question mark (?), and includes field=value couples. Each couple is separated by an ampersand (&). Express can parse the data from the query string, and populate the object `req.query`. Some characters, like the percent (%), cannot be in URLs and have to be encoded in a different format before you can send them. If you use the API from JavaScript, you can use specific methods to encode/decode these characters.

<blockquote>route_path: '/library'<br>actual_request_URL: '/library?userId=546&#x26;bookId=6754' <br>req.query: {userId: '546', bookId: '6754'}</blockquote>

# --instructions--

Costruisci un endpoint API, montato su `GET /name`. Rispondi con un documento JSON, usando la struttura `{ name: 'firstname lastname'}`. I parametri del nome e del cognome devono essere codificati in una stringa di query, ad esempio `?first=firstname&last=lastname`.

**Nota:** Nel seguente esercizio riceverai i dati da una richiesta POST, allo stesso percorso `/name`. Se vuoi, puoi usare il metodo `app.route(path).get(handler).post(handler)`. Questa sintassi consente di concatenare diversi gestori di verbi sullo stesso percorso. Puoi risparmiare un po' di digitazione, e avere un codice più pulito.

# --hints--

Test 1 : il tuo endpoint API dovrebbe rispondere con `{ "name": "Mick Jagger" }` quando l'endpoint `/name` è chiamato con `?first=Mick&last=Jagger`

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/name?first=Mick&last=Jagger').then(
    (data) => {
      assert.equal(
        data.name,
        'Mick Jagger',
        'Test 1: "GET /name" route does not behave as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Test 2 : il tuo endpoint API dovrebbe rispondere con `{ "name": "Keith Richards" }` quando l'endpoint `/name` è chiamato con `?first=Keith&last=Richards`

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/name?last=Richards&first=Keith').then(
    (data) => {
      assert.equal(
        data.name,
        'Keith Richards',
        'Test 2: "GET /name" route does not behave as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

