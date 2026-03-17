---
id: adf08ec01beb4f99fc7a68f2
title: implementare un filtro per valori falsy
challengeType: 26
dashedName: implement-a-falsy-remover
---

# --description--

In questo laboratorio creerai una funzione che rimuove tutti i valori falsy da un array.

I valori falsy in JavaScript sono `false`, `null`, `0`, `""`, `undefined` e `NaN`.

**Obiettivo**: soddisfa le storie utente qui sotto e fai superare tutti i test per completare il laboratorio.

**Storie utente:**

1. Dovresti avere una funzione `bouncer` che prende un array come argomento.
1. La funzione `bouncer` dovrebbe restituire un nuovo array che contiene gli stessi elementi dell'array passato come argomento con gli elementi falsy rimossi.
1. La funzione `bouncer` non dovrebbe modificare l'array passato come argomento.

Suggerimento: prova a convertire ogni valore in un booleano.

# --hints--

Dovresti avere una funzione `bouncer`.

```js
assert.isFunction(bouncer);
```

`bouncer([7, "ate", "", false, 9])` dovrebbe restituire `[7, "ate", 9]`.

```js
assert.deepEqual(bouncer([7, 'ate', '', false, 9]), [7, 'ate', 9]);
```

`bouncer(["a", "b", "c"])` dovrebbe restituire `["a", "b", "c"]`.

```js
assert.deepEqual(bouncer(['a', 'b', 'c']), ['a', 'b', 'c']);
```

`bouncer([false, null, 0, NaN, undefined, ""])` dovrebbe restituire `[]`.

```js
assert.deepEqual(bouncer([false, null, 0, NaN, undefined, '']), []);
```

`bouncer([null, NaN, 1, 2, undefined])` dovrebbe restituire `[1, 2]`.

```js
assert.deepEqual(bouncer([null, NaN, 1, 2, undefined]), [1, 2]);
```

La funzione `bouncer` non dovrebbe modificare l'array passato come argomento.

```js
const arr = ['a', false, 0, 'Naomi'];
bouncer(arr);
assert.deepEqual(arr, ['a', false, 0, 'Naomi']);
```

`bouncer([])` dovrebbe restituire `[]`.  

```js  
assert.deepEqual(bouncer([]), []);  
```  

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function bouncer(arr) {
  return arr.filter(e => e);
}
```
