---
id: 67329fbcfaf5ff5cdaa38a42
title: Che cos’è la parola chiave var e perché non si consiglia più di usarla?
challengeType: 19
dashedName: what-is-the-var-keyword-and-why-is-it-no-longer-suggested-to-use-it
---

# --interactive--

La parola chiave `var` in JavaScript è uno dei modi originali per dichiarare variabili. Fa parte del linguaggio fin dall’inizio e per molti anni è rimasta il metodo principale per creare variabili. Tuttavia, con l’evoluzione di JavaScript e l’esperienza acquisita dagli sviluppatori, sono emersi alcuni svantaggi nell’uso di `var`, che hanno portato all’introduzione di `let` e `const` nel 2015.

Quando dichiari una variabile con `var`, questa ha ambito di funzione o globale. Questo significa che se dichiari una variabile all’interno di una funzione usando `var`, è accessibile solo all’interno di quella funzione. Tuttavia, se la dichiari all’esterno di qualsiasi funzione, diventa una variabile globale accessibile in tutto lo script. Questo comportamento può a volte portare a risultati inattesi e rendere il codice più difficile da comprendere.

Un problema di `var` è che permette di ridefinire la stessa variabile più volte senza generare un errore. Questo può causare sovrascritture accidentali e rendere il debugging più complicato.

:::interactive_editor

```js
var num = 5;
console.log(num); // 5

// This is allowed and doesn't throw an error
var num = 10;
console.log(num); // 10
```

:::

Il problema più significativo di `var` è la mancanza di ambito a blocchi. Le variabili dichiarate con `var` all’interno di un blocco come un’istruzione `if` o un loop `for` sono ancora accessibili all’esterno di quel blocco.

:::interactive_editor

```js
if (true) {
  var num = 5;
}
console.log(num); // 5
```

:::

Questo comportamento può portare a perdite involontarie di variabili e rendere il codice più soggetto a bug.

A causa di questi problemi, lo sviluppo moderno in JavaScript si è in gran parte allontanato da `var` a favore di `let` e `const`. Queste parole chiave offrono un ambito a blocchi che si allinea meglio con il modo in cui funziona l’ambito in molti altri linguaggi di programmazione.

Inoltre, non permettono la ridefinizione all’interno dello stesso ambito, aiutando a prevenire sovrascritture accidentali.

Anche se `var` fa ancora parte di JavaScript e funziona in tutti i browser, generalmente si consiglia di usare `let` e `const` nello sviluppo moderno. Offrono regole di ambito più chiare, aiutano a evitare errori comuni e rendono il comportamento del codice più prevedibile.

# --questions--

## --text--

Qual è l’ambito di una variabile dichiarata con `var` all’esterno di qualsiasi funzione?

## --answers--

Ambito a blocchi.

### --feedback--

Pensa a dove può essere consultata una variabile `var` dichiarata all’esterno di una funzione.

---

Ambito di funzione.

### --feedback--

Pensa a dove può essere consultata una variabile `var` dichiarata all’esterno di una funzione.

---

Ambito globale.

---

Ambito di modulo.

### --feedback--

Pensa a dove può essere consultata una variabile `var` dichiarata all’esterno di una funzione.

## --video-solution--

3

## --text--

Quale sarà l’output del seguente codice?

```js
var x = 10;

if (true) {
  var x = 20;
  console.log(x);
}

console.log(x);
```

## --answers--

```js
10
10
```

### --feedback--

Ricorda che `var` ha ambito di funzione o globale e permette la ridefinizione nello stesso ambito.

---

```js
20
20
```

---

```js
10
20
```

### --feedback--

Ricorda che `var` ha ambito di funzione o globale e permette la ridefinizione nello stesso ambito.

---

```js
20
10
```

### --feedback--

Ricorda che `var` ha ambito di funzione o globale e permette la ridefinizione nello stesso ambito.

## --video-solution--

2

## --text--

Quale delle seguenti NON è una ragione per evitare di usare `var` nel JavaScript moderno?

## --answers--

`var` permette la ridefinizione di variabili nello stesso ambito.

### --feedback--

Considera quale affermazione è falsa riguardo al comportamento o al supporto di `var`.

---

`var` non è supportato nei browser moderni.

---

Le variabili `var` hanno ambito di funzione, non a blocchi.

### --feedback--

Considera quale affermazione è falsa riguardo al comportamento o al supporto di `var`.

---

Le variabili `var` sono sollevate (hoisted).

### --feedback--

Considera quale affermazione è falsa riguardo al comportamento o al supporto di `var`.

## --video-solution--

2
