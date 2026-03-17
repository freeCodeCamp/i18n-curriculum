---
id: 9d7123c8c441eeafaeb5bdef
title: Rimuovere elementi da un array usando slice invece di splice
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

Un pattern comune quando si lavora con gli array è quando vuoi rimuovere elementi e mantenere il resto dell'array. JavaScript offre il metodo `splice` per questo, che prende argomenti per l'indice da cui iniziare a rimuovere gli elementi, poi il numero di elementi da rimuovere. Se il secondo argomento non viene fornito, il valore predefinito è rimuovere gli elementi fino alla fine. Tuttavia, il metodo `splice` modifica l'array originale su cui viene chiamato. Ecco un esempio:

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

Qui `splice` restituisce la stringa `London` e la elimina dall'array cities. `cities` avrà il valore `["Chicago", "Delhi", "Islamabad", "Berlin"]`.

Come abbiamo visto nell'ultima sfida, il metodo `slice` non modifica l'array originale, ma restituisce un nuovo array che può essere salvato in una variabile. Ricorda che il metodo `slice` prende due argomenti per gli indici di inizio e fine del taglio (la fine non è inclusa), e restituisce quegli elementi in un nuovo array. Usare il metodo `slice` invece di `splice` aiuta a evitare effetti collaterali che modificano l'array.

# --instructions--

Riscrivi la funzione `nonMutatingSplice` usando `slice` invece di `splice`. Dovrebbe limitare l'array `cities` fornito a una lunghezza di 3, e restituire un nuovo array con solo i primi tre elementi.

Non modificare l'array originale passato alla funzione.

# --hints--

Il tuo codice dovrebbe usare il metodo `slice`.

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

Il tuo codice non dovrebbe usare il metodo `splice`.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

Non dovresti modificare l'array originale passato alla funzione.

```js
assert(
  (function () {
    const _inputCities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
    nonMutatingSplice(_inputCities);
    return (
      JSON.stringify(_inputCities) ===
      JSON.stringify(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])
    );
  })()
);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])` dovrebbe restituire `["Chicago", "Delhi", "Islamabad"]`.

```js
assert.deepEqual(
  nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"]),
  ["Chicago", "Delhi", "Islamabad"]
);
```

# --seed--

## --seed-contents--

```js
function nonMutatingSplice(cities) {

  return cities.splice(3);
}
```

# --solutions--

```js
function nonMutatingSplice(cities) {
  return cities.slice(0,3);
}
```
