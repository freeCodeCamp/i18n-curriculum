---
id: 66edcdd18a4ef8df16e6bb7e
title: Quiz sulle funzioni di ordine superiore in JavaScript
challengeType: 8
dashedName: quiz-javascript-higher-order-functions
---

# --description--

Per superare il quiz, devi rispondere correttamente ad almeno 18 delle 20 domande seguenti.

# --quizzes--

## --quiz--

### --question--

#### --text--

Quale delle seguenti affermazioni sulle funzioni di ordine superiore in JavaScript NON è vera?

#### --distractors--

Le funzioni di ordine superiore possono migliorare notevolmente la leggibilità e la manutenibilità del codice permettendo tecniche di programmazione funzionale.

---

Le funzioni di ordine superiore come map, filter e reduce sono strumenti potenti per la manipolazione degli array, ma non sono uniche della programmazione funzionale.

---

Le funzioni di ordine superiore possono introdurre complessità nella comprensione del codice, ma possono anche portare a soluzioni più espressive e concise.

#### --answer--

Tutte le funzioni in JavaScript, incluse quelle che non prendono o restituiscono altre funzioni, possono essere classificate come funzioni di ordine superiore.

### --question--

#### --text--

Cos’è una factory function nel contesto delle funzioni di ordine superiore?

#### --distractors--

Una funzione che crea nuove variabili.

---

Una funzione che funziona solo con stringhe.

---

Una funzione che genera automaticamente commenti nel codice.

#### --answer--

Una funzione che restituisce una nuova funzione basata su parametri specifici

### --question--

#### --text--

Dopo l’esecuzione del codice, quale sarà il valore di `forEachRes` e `mapRes`?

```js
const numbers = [1, 1, 1, 1, 1];
let sum = 0;
const forEachRes = numbers.forEach(num => {
  return (sum += num);
});
const mapRes = numbers.map(num => {
  return (sum += num);
});
```

#### --distractors--

`forEachRes` è `undefined` e `mapRes` è `[1,2,3,4,5]`

---

`forEachRes` è `0` e `mapRes` è `[1,2,3,4,5]`

---

`forEachRes` è `5` e `mapRes` è `[1,2,3,4,5]`

#### --answer--

`forEachRes` è `undefined` e `mapRes` è `[6,7,8,9,10]`

### --question--

#### --text--

Qual è il risultato di questo codice?

```js
[, undefined, 'a', 'b', { 20: 5 }].sort();
```

#### --distractors--

Elementi non supportati per un array da ordinare, quindi errore.

---

Callback non fornita, quindi errore.

---

```js
[empty, 'a', 'b', undefined, { '20': 5 }]
```

#### --answer--

```js
[{ '20': 5 }, 'a', 'b', undefined, empty]
```

### --question--

#### --text--

Quale delle seguenti descrive una funzione di callback in JavaScript?

#### --distractors--

Una funzione che viene chiamata immediatamente alla dichiarazione.

---

Una funzione invocata con un contesto specifico.

---

Una funzione che restituisce un’altra funzione.

#### --answer--

Una funzione passata come argomento a un’altra funzione, da eseguire secondo la logica di quella funzione.

### --question--

#### --text--

Qual è il risultato dell’uso di `reduce()` su un array?

#### --distractors--

Un booleano che indica se qualche elemento soddisfa una condizione.

---

Un array con tutti gli elementi ridotti dalla funzione di callback specificata.

---

Un array di booleani.

#### --answer--

Dipende dal valore iniziale dell’accumulatore e dalla funzione di callback.

### --question--

#### --text--

Come si comporta il metodo `sort()` se non viene fornita una funzione di confronto nell’ordinamento numerico?

#### --distractors--

Riempie gli slot vuoti con `null`.

---

Restituisce un array di caratteri speciali.

---

Ordina l’array in ordine inverso.

#### --answer--

Ordina l’array come stringhe basandosi sulle unità di codice UTF-16.

### --question--

#### --text--

Qual è lo scopo del metodo `some()` in JavaScript?

#### --distractors--

Creare un nuovo array con i risultati di una funzione applicata a ogni elemento.

---

Iterare su un array senza produrre un risultato.

---

Ridurre un array a un singolo valore basato su una funzione di callback.

#### --answer--

Determinare se qualche elemento in un array supera un test specificato.

### --question--

#### --text--

Quale dei seguenti è un esempio valido di concatenamento di metodi?

#### --distractors--

```js
Math.random();
```

---

```js
array.push(1).pop();
```

---

```js
console.log('Hello');
```

#### --answer--

```js
str.toLowerCase().trim().replace(' ', '_');
```

### --question--

#### --text--

Qual è l’output del seguente codice?

```js
let numbers = [2, 4, 8, 10];

numbers.forEach(function(number) {
    console.log(number % 2);
});
```

#### --distractors--

`2 4 8 10`

---

`null null null null`

---

`1 2 4 5`

#### --answer--

`0 0 0 0`

### --question--

#### --text--

Qual è un vantaggio del concatenamento di metodi?

#### --distractors--

Ottimizza intrinsecamente le prestazioni riducendo il tempo di esecuzione delle funzioni.

---

Elimina la necessità di variabili temporanee, ma può aumentare l’uso di memoria in alcuni casi.

---

Permette una gestione degli errori e un debugging più semplici.

#### --answer--

Favorisce una sintassi semplificata e un codice più leggibile permettendo più operazioni in un’unica espressione.

### --question--

#### --text--

Come puoi ordinare un array di oggetti per una proprietà specifica usando il metodo `sort`?

#### --distractors--

Il metodo `sort` non può ordinare oggetti.

---

Usa il metodo `reverse` dopo l’ordinamento.

---

Converti gli oggetti in stringhe e ordina.

#### --answer--

Usa una funzione di confronto che confronta i valori della proprietà.

### --question--

#### --text--

Nel concatenamento di metodi, qual è una pratica comune per migliorare chiarezza e debugging?

#### --distractors--

Usare meno metodi nella catena.

---

Evitare di concatenare metodi che restituiscono solo valori primitivi.

---

Usare solo metodi integrati.

#### --answer--

Spezzare catene lunghe in più passaggi.

### --question--

#### --text--

Qual è un possibile svantaggio dell’uso eccessivo del concatenamento di metodi nel codice?

#### --distractors--

Rende il codice più lento.

---

Impedisce l’uso di commenti.

---

Aumenta la dimensione del file.

#### --answer--

Può rendere il codice più difficile da eseguire il debug.

### --question--

#### --text--

Quale metodo useresti per determinare se tutti gli elementi in un array sono stringhe?

#### --distractors--

`some()`

---

`everyInstance()`

---

`filter()`

#### --answer--

`every()`

### --question--

#### --text--

Quale sarà il valore di `originalArray` dopo l’esecuzione del seguente codice?

```js
const originalArray = [{ id: 1 }, { id: 2 }, { id: 3 }];
const filteredArray = originalArray.filter(item => item.id > 1);
filteredArray[0].id = 4;
```

#### --distractors--

`[{ id: 1 }, { id: 2 }, { id: 3 }]`

---

`[{ id: 1 }]`

---

`[{ id: 4 }, { id: 2 }, { id: 3 }]`

#### --answer--

`[{ id: 1 }, { id: 4 }, { id: 3 }]`
### --question--

#### --text--

Quale sarà il valore di `shortWords` dopo l’esecuzione del seguente codice?

```js
const words = ['apple', 'banana', 'pear', 'kiwi'];
const shortWords = words.filter(word => word.length <= 5);
```

#### --distractors--

`[]`

---

`['pear', 'kiwi']`

---

`['apple', 'banana']`

#### --answer--

`['apple', 'pear', 'kiwi']`

### --question--

#### --text--

Qual è lo scopo di fornire un valore iniziale come argomento al metodo `reduce()`?

#### --distractors--

Impostare la lunghezza dell’array.

---

Limitare il numero di iterazioni.

---

Specificare il tipo di ritorno della funzione.

#### --answer--

Definire il valore di partenza per l’accumulatore.

### --question--

#### --text--

Il metodo `map` può essere usato su oggetti che non sono array?

#### --distractors--

Sì, può essere usato su qualsiasi oggetto.

---

Sì, ma solo su oggetti con proprietà numeriche.

---

Dipende dalla versione di JavaScript.

#### --answer--

No, è progettato specificamente per gli array.

### --question--

#### --text--

Qual è lo scopo principale del metodo `map` in JavaScript?

#### --distractors--

Ordinare un array e restituire un nuovo array mantenendo l’ordine originale.

---

Filtrare elementi da un array e rimuovere o aggiungere elementi basati su una condizione.

---

Trovare un elemento specifico in un array e restituire il suo indice insieme all’elemento.

#### --answer--

Creare un nuovo array contenente i risultati della chiamata di una funzione fornita su ogni elemento dell’array di partenza.
