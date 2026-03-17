---
id: 66edcccbba6dacdb65a59067
title: Quiz sugli array in JavaScript
challengeType: 8
dashedName: quiz-javascript-arrays
---

# --description--

Per superare il quiz, devi rispondere correttamente ad almeno 18 delle 20 domande seguenti.

# --quizzes--

## --quiz--

### --question--

#### --text--

Quale sarà l'output del seguente codice?

```js
const numbers = [1, 2, 3];
console.log(numbers[10]);
```

#### --distractors--

`[1, 2, 3]`

---

`null`

---

`10`

#### --answer--

`undefined`

### --question--

#### --text--

Qual è il modo corretto per consultare la stringa `"Jessica"` dall'array `developers`?

#### --distractors--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[1]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[2]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[-1]
```

#### --answer--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[0]
```

### --question--

#### --text--

Quale valore sarà assegnato alla variabile `index`?

```js
const numbers = [10, 20, 30, 40];
const index = numbers.indexOf(20);
console.log(index);
```

#### --distractors--

2

---

3

---

-1

#### --answer--

1

### --question--

#### --text--

Cosa fa la sintassi rest?

#### --distractors--

Serve a dividere una stringa in un array di sottostringhe.

---

Serve ad aggiungere o rimuovere elementi da qualsiasi posizione in un array.

---

Serve ad aggiungere elementi alla fine dell'array e restituisce la nuova lunghezza.

#### --answer--

Cattura gli elementi rimanenti di un array in un nuovo array.

### --question--

#### --text--

Cos'è la destrutturazione di un array?

#### --distractors--

Serve a concatenare tutti gli elementi di un array in una singola stringa.

---

Serve a verificare se un array contiene un valore specifico.

---

Serve a rimuovere l'ultimo elemento da un array e restituisce quell'elemento rimosso.

#### --answer--

Serve a estrarre valori dagli array e assegnarli a variabili in modo più conciso e leggibile.

### --question--

#### --text--

Quale valore sarà assegnato alla variabile `arr2`?

```js
const arr1 = [1, 2, 3];
const arr2 = [...arr1, 4, 5];
console.log(arr2);
```

#### --distractors--

`[4, 5, 1, 2, 3]`

---

`[1, 2, [3, 4, 5]]`

---

`[1, 2, 3]`

#### --answer--

`[1, 2, 3, 4, 5]`

### --question--

#### --text--

Cosa stamperà questo codice nella console?

```js
const colors = ["red", "blue", "green", "yellow"];
colors.splice(1, 2, "purple");
console.log(colors);
```

#### --distractors--

`["red", "blue", "green", "yellow"]`

---

`["red", "blue", "yellow"]`

---

`["red", "yellow"]`

#### --answer--

`["red", "purple", "yellow"]`

### --question--

#### --text--

Quale valore sarà assegnato alla variabile `slicedArr`?

```js
const arr = ["apple", "banana", "cherry", "date"];
const slicedArr = arr.slice(1, 3);
console.log(slicedArr);
```

#### --distractors--

`["apple", "banana"]`

---

`["cherry", "date"]`

---

`["apple", "cherry"]`

#### --answer--

`["banana", "cherry"]`

### --question--

#### --text--

Quale metodo restituisce il primo indice di un dato elemento in un array?

#### --distractors--

`firstIndex()`

---

`lastIndex()`

---

`searchIndex()`

#### --answer--

`indexOf()`

### --question--

#### --text--

Quale metodo si usa per rimuovere il primo elemento da un array e restituisce quell'elemento rimosso?

#### --distractors--

`pop()`

---

`slice()`

---

`splice()`

#### --answer--

`shift()`

### --question--

#### --text--

Cosa fa il metodo `concat()`?

#### --distractors--

Unisce gli elementi di un array in una stringa.

---

Aggiunge un elemento all'inizio di un array.

---

Rimuove un elemento dall'array.

#### --answer--

Unisce due array in un nuovo array.

### --question--

#### --text--

Quale sarà l'output di questo codice?

```js
const fruits = ["apple", "banana", "cherry", "apple", "orange"];

fruits.splice(0, 1);

console.log(fruits);
```

#### --distractors--

`["apple", "banana", "cherry", "apple", "orange"]`

---

`["apple", "banana", "cherry"]`

---

`["cherry", 'apple']`

#### --answer--

`["banana", "cherry", "apple", "orange"]`

### --question--

#### --text--

Cosa fa il metodo `includes()`?

#### --distractors--

Serve a dividere una stringa in un array di sottostringhe.

---

Serve a concatenare tutti gli elementi di un array in una singola stringa.

---

Serve ad aggiungere o rimuovere elementi da qualsiasi posizione in un array.

#### --answer--

Serve a verificare se un array contiene un valore specifico.

### --question--

#### --text--

Quale dei seguenti metodi si usa per invertire un array sul posto?

#### --distractors--

`reversed()`

---

`reverseArr()`

---

`reversing()`

#### --answer--

`reverse()`

### --question--

#### --text--

Cos'è un array bidimensionale?

#### --distractors--

Un array che contiene solo letterali oggetto.

---

Un array di lunghezza fissa.

---

Un array di numeri a virgola mobile.

#### --answer--

Un array di array.

### --question--

#### --text--

Quale delle seguenti affermazioni è vera riguardo al metodo `indexOf()` negli array?

#### --distractors--

Restituisce sempre l'ultima occorrenza dell'elemento.

---

Lancia un errore se l'elemento non viene trovato.

---

Richiede che l'array sia ordinato.

#### --answer--

Restituisce `-1` se l'elemento non viene trovato.

### --question--

#### --text--

Quale dei seguenti NON è un metodo degli array?

#### --distractors--

`includes()`

---

`pop()`

---

`push()`

#### --answer--

`trim()`

### --question--

#### --text--

Quale sarà l'output del seguente codice?

```js
const arr = ["o", "l", "l", "e", "h"];
console.log(arr.join(""));
```

#### --distractors--

`["o", "l", "l", "e", "h"]`

---

`"hello"`

---

`undefined`

#### --answer--

`"olleh"`

### --question--

#### --text--

Quale sarà il risultato dell'uso del metodo `shift()` su un array vuoto?

#### --distractors--

`TypeError`

---

`[]`

---

`null`

#### --answer--

`undefined`

### --question--

#### --text--

Quale metodo restituisce un nuovo array senza modificare l'array originale?

#### --distractors--

`shift()`

---

`pop()`

---

`push()`

#### --answer--

`slice()`
