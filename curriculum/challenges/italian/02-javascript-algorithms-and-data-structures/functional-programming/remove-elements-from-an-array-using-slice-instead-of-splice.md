---
id: 9d7123c8c441eeafaeb5bdef
title: Rimuovere gli elementi da un array usando slice invece di splice
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

A common pattern while working with arrays is when you want to remove items and keep the rest of the array. JavaScript offers the `splice` method for this, which takes arguments for the index of where to start removing items, then the number of items to remove. If the second argument is not provided, the default is to remove items through the end. However, the `splice` method mutates the original array it is called on. Ecco un esempio:

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

Qui `splice` restituisce la stringa `London` e la elimina dall'array delle città. `cities` avrà il valore `["Chicago", "Delhi", "Islamabad", "Berlin"]`.

Come abbiamo visto nell'ultima sfida, il metodo `slice` non muta l'array originale, ma ne restituisce uno nuovo che può essere salvato in una variabile. Ricorda che il metodo `slice` richiede due argomenti per gli indici di inizio e fine (non inclusiva) della "fetta" (slice), e restituisce quegli elementi in un nuovo array. Usando il metodo `slice` invece di `splice` si evita qualsiasi effetto collaterale di mutazione dell'array.

# --instructions--

Riscrivi la funzione `nonMutatingSplice` usando `slice` invece di `splice`. Questo dovrebbe limitare l'array `cities` fornito a una lunghezza di 3, e restituire un nuovo array contenente solo i primi tre elementi.

Non mutare l'array originale fornito alla funzione.

# --hints--

Il tuo codice dovrebbe utilizzare il metodo `slice`.

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

Il tuo codice non dovrebbe usare il metodo `splice`.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

Non dovresti mutare l'array originale passato alla funzione.

```js
assert.deepEqual(_inputCities, ["Chicago", "Delhi", "Islamabad", "London", "Berlin"]);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])` dovrebbe restituire `["Chicago", "Delhi", "Islamabad"]`.

```js
assert.deepEqual(nonMutatingSplice(_inputCities), ["Chicago", "Delhi", "Islamabad"]);
```

# --seed--

## --seed-contents--

```js
function nonMutatingSplice(cities) {

  return cities.splice(3);
}
```

## --after-user-code--

```js
const _inputCities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
```

# --solutions--

```js
function nonMutatingSplice(cities) {
  return cities.slice(0,3);
}
```
