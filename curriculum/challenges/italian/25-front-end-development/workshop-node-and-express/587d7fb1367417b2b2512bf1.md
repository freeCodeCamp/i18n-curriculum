---
id: 587d7fb1367417b2b2512bf1
title: Servire un JSON su una rotta specifica
challengeType: 2
forumTopicId: 301517
dashedName: serve-json-on-a-specific-route
---

# --description--

While an HTML server serves HTML, an API serves data. A <dfn>REST</dfn> (REpresentational State Transfer) API allows data exchange in a simple way, without the need for clients to know any detail about the server. The client only needs to know where the resource is (the URL), and the action it wants to perform on it (the verb). The GET verb is used when you are fetching some information, without modifying anything. These days, the preferred data format for moving information around the web is JSON. Simply put, JSON is a convenient way to represent a JavaScript object as a string, so it can be easily transmitted.

Creiamo una semplice API creando una rotta (route) che risponda con JSON al percorso `/json`. Puoi farlo come al solito, con il metodo `app.get()`. All'interno del gestore della rotta, usa il metodo `res.json()`, passandogli un oggetto come argomento. Questo metodo chiude il ciclo richiesta-risposta, restituendo i dati. Dietro le quinte, converte un oggetto JavaScript valido in una stringa, poi imposta le intestazioni appropriate per dire al tuo browser che stai servendo JSON, e restituisce i dati. Un oggetto valido ha la solita struttura `{key: data}`. `data` può essere un numero, una stringa, un oggetto annidato o un array. `data` può anche essere una variabile o il risultato di una chiamata di funzione, nel qual caso sarà valutato prima di essere convertito in una stringa.

# --instructions--

Servi l'oggetto `{"message": "Hello json"}` come risposta, in formato JSON, alle richieste GET per il percorso `/json`. Quindi punta il tuo browser a `your-app-url/json`, dovresti vedere il messaggio sullo schermo.

# --hints--

L'endpoint `/json` dovrebbe servire l'oggetto JSON `{"message": "Hello json"}`

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/json').then(
    (data) => {
      assert.equal(
        data.message,
        'Hello json',
        "The '/json' endpoint does not serve the right data"
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

