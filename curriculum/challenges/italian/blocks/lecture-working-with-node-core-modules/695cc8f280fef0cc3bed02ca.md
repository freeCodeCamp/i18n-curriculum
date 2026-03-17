---
id: 695cc8f280fef0cc3bed02ca
title: Cos’è il modulo path e come funziona?
challengeType: 19
dashedName: what-is-the-path-module-and-how-does-it-work
---

# --description--

Il modulo `path` di Node.js ti permette di lavorare con i file e i percorsi delle directory. Fornisce diversi metodi utili per gestire e trasformare le directory, inclusi unire, normalizzare e risolvere i percorsi su piattaforme e sistemi operativi diversi.

Per usare il modulo `path`, puoi importarlo così:

```js
const path = require("path");
```

Vediamo alcuni dei metodi che il modulo `path` offre e come funzionano.

Prima di tutto, devi conoscere le variabili globali di Node.js `__filename` e `__dirname`, note anche come variabili "common JS". Non hai bisogno del modulo `path` per consultarle, ecco perché si chiamano variabili globali.

`__filename` è il percorso assoluto del file corrente e `__dirname` è il percorso assoluto della directory che contiene il file corrente.

Per esempio, sto lavorando con un file `script.js`. Ecco cosa restituiscono i due metodi:

```js
console.log(__filename);
// /Users/user/Desktop/fCC/script-code/node/node-path/script.js

console.log(__dirname);
// /Users/user/Desktop/fCC/script-code/node/node-path
```

Devi anche conoscere la differenza tra percorsi relativi e assoluti.

Un percorso relativo punta a un file o una cartella basandosi sulla tua directory di lavoro corrente. Per esempio, `./assets/src/text-files`.

Un percorso assoluto, invece, fornisce l’indirizzo completo di un file o una cartella a partire dalla radice del tuo sistema, come `/Users/johndoe/projects/app/assets/src/text-files.`.

Il metodo `basename()` mostra l’ultima parte del file, cioè il nome del file:

```js
console.log(path.basename(__filename)); // script.js
```

`dirname()` restituisce il nome della directory di un percorso:

```js
console.log(path.dirname(__dirname)); // node-path
```

`extname()` restituisce l’estensione del file corrente:

```js
console.log(path.extname(__filename)); // .js
```

Puoi anche specificare un file diverso per ottenere la sua estensione:

```js
console.log(path.extname('text-files/text1.txt')); // .txt
```

Il metodo `join()` prende tutti i segmenti di percorso che gli passi e li unisce in un percorso unico, pulito e normalizzato.

Questo può essere utile se vuoi unire file correlati in cartelle diverse per lavorarci insieme:

```js
const joinedPath = path.join("src", "assets", "text-files");
console.log(joinedPath); // src/assets/text-files
```

Windows usa le barre rovesciate per separare le directory, quindi il risultato sarà `src\assets\text-files`.

Inoltre, il metodo `join()` corregge automaticamente le barre sbagliate e rimuove quelle in eccesso:

```js
const wrongPath = path.join("/src//", "assets", "text-files");
console.log(wrongPath); // /src/assets/text-files
```

Il metodo `resolve()` trasforma una sequenza di segmenti di percorso in un percorso assoluto. Parte dalla tua directory di lavoro corrente e restituisce un percorso completo che punta alla posizione esatta sul dispositivo:

```js
const absolutePath = path.resolve("assets", "src", "text-files");
console.log(absolutePath);
// /Users/user/Desktop/fCC/script-code/node/node-path/assets/src/text-files
```

La differenza tra `join()` e `resolve()` è che `join()` crea un percorso relativo, mentre `resolve()` restituisce un percorso assoluto.

Infine, ci sono i metodi `parse()` e `format()`.

`parse()` prende una directory o un file e restituisce un oggetto che contiene la scomposizione delle sue parti, come la radice del sistema, la directory, l’estensione e il nome del file:

```js
const parsedFile = path.parse(__filename);

console.log(parsedFile);
/*
{
 root: '/',
 dir: '/Users/user/Desktop/fCC/script-code/node/node-path',
 base: 'script.js',
 ext: '.js',
 name: 'script'
}
*/
```

`format()`, invece, costruisce un percorso da un oggetto contenente directory, nome ed estensione:

```js
const formattedDirectory = path.format({
  dir: "/users/johndoe/docs",
  name: "file",
  ext: ".txt",
});

console.log(formattedDirectory); // /users/johndoe/docs/file.txt
```

# --questions--

## --text--

Qual è la differenza tra `path.dirname()` e `path.extname()` in Node.js?

## --answers--

`dirname()` rimuove l’estensione del file, mentre `extname()` rimuove il nome della directory.

### --feedback--

Concentrati su quale metodo gestisce le directory e quale le estensioni dei file.

---

`dirname()` restituisce il percorso completo del file, mentre `extname()` restituisce il nome della directory.

### --feedback--

Concentrati su quale metodo gestisce le directory e quale le estensioni dei file.

---

`dirname()` restituisce il nome della directory di un percorso, mentre `extname()` restituisce l’estensione del file.

---

`dirname()` e `extname()` restituiscono entrambi lo stesso valore ma in formati diversi.

### --feedback--

Concentrati su quale metodo gestisce le directory e quale le estensioni dei file.

## --video-solution--

3

## --text--

Quale metodo `path` costruisce un percorso completo da un oggetto contenente le proprietà directory, nome ed estensione?

## --answers--

`path.parse()`

### --feedback--

Pensa a quale sia l’opposto di `parse()`.

---

`path.format()`

---

`path.resolve()`

### --feedback--

Pensa a quale sia l’opposto di `parse()`.

---

`path.join()`

### --feedback--

Pensa a quale sia l’opposto di `parse()`.

## --video-solution--

2

## --text--

A cosa danno accesso le variabili globali di Node.js `__filename` e `__dirname`?

## --answers--

Al percorso assoluto del file corrente e della directory che lo contiene.

---

Al nome del modulo corrente e delle sue dipendenze.

### --feedback--

Pensa a quali variabili ti danno automaticamente i percorsi completi di file e cartelle senza usare il modulo path.

---

Al percorso relativo della directory di installazione di Node.js.

### --feedback--

Pensa a quali variabili ti danno automaticamente i percorsi completi di file e cartelle senza usare il modulo path.

---

All’URL del server web in esecuzione e al suo nome host.

### --feedback--

Pensa a quali variabili ti danno automaticamente i percorsi completi di file e cartelle senza usare il modulo path.

## --video-solution--

1
