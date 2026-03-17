---
id: 6732b28eeadda1158cdbff7b
title: Come puoi verificare se un array contiene un certo valore?
challengeType: 19
dashedName: how-can-you-check-if-an-array-contains-a-certain-value
---

# --interactive--

In JavaScript, il metodo `includes()` è un modo semplice ed efficiente per verificare se un array contiene un valore specifico. Questo metodo restituisce un valore booleano: `true` se l'array contiene l'elemento specificato, e `false` altrimenti.

Il metodo `includes()` è particolarmente utile quando hai bisogno di verificare rapidamente la presenza di un elemento in un array senza dover conoscere la sua posizione esatta. Iniziamo con un esempio di come usare il metodo `includes()`:

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange", "mango"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("grape"));  // false
```

:::

In questo esempio, abbiamo un array di frutti. Usiamo il metodo `includes()` per verificare se `banana` è nell'array. Restituisce `true` perché `banana` è effettivamente presente. Poi controlliamo per `grape`, che restituisce `false` perché non è nell'array.

Il metodo `includes()` è sensibile alle maiuscole quando si tratta di stringhe. Questo significa che `Banana` con la B maiuscola e `banana` tutta in minuscolo sono considerati valori diversi. Ecco un esempio che lo illustra:

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("Banana")); // false
```

:::

In questo caso, `banana` (tutto in minuscolo) si trova nell'array, ma `Banana` (con la prima lettera maiuscola) no, quindi la seconda chiamata `includes()` restituisce `false`.

Il metodo `includes()` può anche accettare un secondo parametro opzionale che specifica la posizione nell'array da cui iniziare la ricerca. Questo è utile se vuoi controllare la presenza di un elemento in una parte specifica dell'array. Ecco come puoi usare questa funzionalità:

:::interactive_editor

```js
let numbers = [10, 20, 30, 40, 50, 30, 60];
console.log(numbers.includes(30, 3)); // true
console.log(numbers.includes(30, 4)); // true
```

:::

Per la prima `console.log`, stiamo cercando il numero `30` a partire dall'indice `3`. In questo caso, c'è un numero `30` che appare dopo l'indice `3`, quindi il metodo `includes()` restituisce `true`.

Lo stesso vale per la seconda `console.log`. Stiamo cercando il numero `30` a partire dall'indice `4`. Poiché il numero `30` appare dopo quell'indice, allora restituirà `true`.

Vale la pena notare che `includes()` usa il confronto di uguaglianza stretta (`===`), il che significa che può distinguere tra tipi diversi. Per esempio:

:::interactive_editor

```js
let mixedArray = [1, "2", 3, "4", 5];
console.log(mixedArray.includes(2));  // false
console.log(mixedArray.includes("2")); // true
```

:::

In questo caso, il numero `2` e la stringa `"2"` sono considerati tipi di dati diversi. Quindi, la prima `console.log` restituirà `false`, mentre la seconda `console.log` restituirà `true`.

Il metodo `includes()` è uno strumento potente per verificare la presenza di elementi negli array. È semplice da usare, efficiente e può evitarti di scrivere loop o condizioni più complesse per cercare negli array. Che tu stia lavorando con stringhe, numeri o tipi di dati misti, `includes()` offre un modo diretto per verificare se un valore esiste nel tuo array.

# --questions--

## --text--

Quale sarà l'output del seguente codice?

```js
let arr = [1, 2, 3, 4, 5];
console.log(arr.includes(3, 3));
```

## --answers--

`true`

### --feedback--

Il secondo parametro di `includes()` specifica la posizione di partenza per la ricerca.

---

`false`

---

`undefined`

### --feedback--

Il secondo parametro di `includes()` specifica la posizione di partenza per la ricerca.

---

Questo genererà un errore.

### --feedback--

Il secondo parametro di `includes()` specifica la posizione di partenza per la ricerca.

## --video-solution--

2

## --text--

Quale sarà l'output del seguente codice?

```js
let arr = ["a", "b", "c", "d", "e"];
console.log(arr.includes("C"));
```

## --answers--

`true`

### --feedback--

Ricorda che `includes()` è sensibile alle maiuscole quando si tratta di stringhe.

---

`false`

---

`undefined`

### --feedback--

Ricorda che `includes()` è sensibile alle maiuscole quando si tratta di stringhe.

---

Questo genererà un errore.

### --feedback--

Ricorda che `includes()` è sensibile alle maiuscole quando si tratta di stringhe.

## --video-solution--

2

## --text--

Quale sarà l'output del seguente codice?

```js
let arr = [1, "2", 3, "4", 5];
console.log(arr.includes("3"));
```

## --answers--

`true`

### --feedback--

Il metodo `includes()` usa l'uguaglianza stretta (`===`) per il confronto.

---

`false`

---

`undefined`

### --feedback--

Il metodo `includes()` usa l'uguaglianza stretta (`===`) per il confronto.

---

Questo genererà un errore.

### --feedback--

Il metodo `includes()` usa l'uguaglianza stretta (`===`) per il confronto.

## --video-solution--

2
