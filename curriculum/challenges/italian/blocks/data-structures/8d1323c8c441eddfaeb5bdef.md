---
id: 8d1323c8c441eddfaeb5bdef
title: Creare una classe set
challengeType: 1
forumTopicId: 301632
dashedName: create-a-set-class
---

# --description--

In questo esercizio creeremo una classe chiamata `Set` per emulare una struttura dati astratta chiamata "set". Un set è simile a un array, ma non può contenere valori duplicati. L'uso tipico di un set è semplicemente verificare la presenza di un elemento. Possiamo vedere come funziona l'oggetto ES6 `Set` nell'esempio qui sotto:

```js
const set1 = new Set([1, 2, 3, 5, 5, 2, 0]);
console.log(set1);
// output: {1, 2, 3, 5, 0}
console.log(set1.has(1));
// output: true
console.log(set1.has(6));
// output: false
```

Per prima cosa, creeremo un metodo add che aggiunge un valore alla nostra collezione set purché il valore non esista già nel set. Poi creeremo un metodo remove che rimuove un valore dalla collezione set se esiste già. Infine, creeremo un metodo size che restituisce il numero di elementi all'interno della collezione set.

# --instructions--

Crea un metodo `add` che aggiunge un valore unico alla collezione set e restituisce `true` se il valore è stato aggiunto con successo e `false` altrimenti.

Crea un metodo `remove` che accetta un valore e verifica se esiste nel set. Se esiste, questo metodo dovrebbe rimuoverlo dalla collezione set e restituire `true`. Altrimenti, dovrebbe restituire `false`. Crea un metodo `size` che restituisce la dimensione della collezione set.

# --hints--

La tua classe `Set` dovrebbe avere un metodo `add`.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.add === 'function';
  })()
);
```

Il tuo metodo `add` non dovrebbe aggiungere valori duplicati.

```js
assert(
  (function () {
    var test = new Set();
    test.add('a');
    test.add('b');
    test.add('a');
    var vals = test.values();
    return vals[0] === 'a' && vals[1] === 'b' && vals.length === 2;
  })()
);
```

Il tuo metodo `add` dovrebbe restituire `true` quando un valore è stato aggiunto con successo.

```js
assert(
  (function () {
    var test = new Set();
    var result = test.add('a');
    return result != undefined && result === true;
  })()
);
```

Il tuo metodo `add` dovrebbe restituire `false` quando viene aggiunto un valore duplicato.

```js
assert(
  (function () {
    var test = new Set();
    test.add('a');
    var result = test.add('a');
    return result != undefined && result === false;
  })()
);
```

La tua classe `Set` dovrebbe avere un metodo `remove`.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.remove === 'function';
  })()
);
```

Il tuo metodo `remove` dovrebbe rimuovere solo gli elementi presenti nel set.

```js
assert.deepEqual(
  (function () {
    var test = new Set();
    test.add('a');
    test.add('b');
    test.remove('c');
    return test.values();
  })(),
  ['a', 'b']
);
```

Il tuo metodo `remove` dovrebbe rimuovere l'elemento dato dal set.

```js
assert(
  (function () {
    var test = new Set();
    test.add('a');
    test.add('b');
    test.remove('a');
    var vals = test.values();
    return vals[0] === 'b' && vals.length === 1;
  })()
);
```

La tua classe `Set` dovrebbe avere un metodo `size`.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.size === 'function';
  })()
);
```

Il metodo `size` dovrebbe restituire il numero di elementi nella collezione.

```js
assert(
  (function () {
    var test = new Set();
    test.add('a');
    test.add('b');
    test.remove('a');
    return test.size() === 1;
  })()
);
```

# --seed--

## --seed-contents--

```js
class Set {
  constructor() {
    // Dictionary will hold the items of our set
    this.dictionary = {};
    this.length = 0;
  }

  // This method will check for the presence of an element and return true or false
  has(element) {
    return this.dictionary[element] !== undefined;
  }

  // This method will return all the values in the set
  values() {
    return Object.values(this.dictionary);
  }

  // Only change code below this line
  
  // Only change code above this line
}
```

# --solutions--

```js
class Set {
  constructor() {
    this.dictionary = {};
    this.length = 0;
  }

  has(element) {
    return this.dictionary[element] !== undefined;
  }

  values() {
    return Object.values(this.dictionary);
  }

  add(element) {
    if (!this.has(element)) {
      this.dictionary[element] = element;
      this.length++;
      return true;
    }

    return false;
  }

  remove(element) {
    if (this.has(element)) {
      delete this.dictionary[element];
      this.length--;
      return true;
    }

    return false;
  }

  size() {
    return this.length;
  }
}
```
