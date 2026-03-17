---
id: 67d2f4ddb4a4306fdf5bbaee
title: Che cos’è la memoizzazione e come funziona il hook useMemo?
challengeType: 19
dashedName: what-is-memoization-and-how-does-the-usememo-hook-work
---

# --description--

Man mano che la tua app React cresce, i rendering non necessari e i calcoli costosi possono rallentare le prestazioni, causando aggiornamenti lenti dell’interfaccia utente e un aumento dell’uso delle risorse.

Questo può essere particolarmente problematico nelle app con una gestione dello stato complessa, liste grandi, funzioni che richiedono calcoli pesanti e molti componenti con un unico genitore.

Da qui nasce la necessità di ottimizzare la tua app React per migliorare le prestazioni, minimizzando i calcoli ridondanti e garantendo interazioni più fluide.

React risolve questo problema con un processo chiamato memoizzazione, una tecnica che memorizza nella cache valori e funzioni per evitare ricalcoli inutili, così la tua app può essere più veloce e responsiva.

Per definizione, la memoizzazione è una tecnica di ottimizzazione in cui il risultato di chiamate a funzioni costose viene memorizzato nella cache (ricordato) in base a specifici argomenti. Quando gli stessi argomenti vengono forniti di nuovo, viene restituito il risultato memorizzato invece di ricalcolare la funzione.

Il processo di memoizzazione avviene così:

- Memorizza i risultati delle chiamate di funzione insieme ai loro argomenti di input.

- Prima di eseguire la funzione, verifica se il risultato per gli argomenti correnti esiste già nella cache.

- Se esiste, restituisci il risultato memorizzato invece di eseguire di nuovo il calcolo.

- Se non esiste, calcola il risultato, memorizzalo nella cache e poi restituiscilo.

Per migliorare l’esperienza dello sviluppatore con la memoizzazione, React fornisce tre strumenti – `React.memo` (o `memo`), `useMemo` e `useCallback`.

Come puoi immaginare, sia `useMemo` che `useCallback` sono hook, mentre `React.memo` è un wrapper per componente, un componente di ordine superiore (HOC).

Nella prossima lezione vedremo come funzionano il hook `useCallback` e `React.memo`.

`useMemo` ti permette di memoizzare valori calcolati mentre `useCallback` fa lo stesso per i riferimenti a funzioni.

Se ti stai chiedendo cosa siano i valori calcolati e i riferimenti a funzioni, i valori calcolati si riferiscono al risultato dell’esecuzione di una funzione, mentre i riferimenti a funzioni sono i puntatori alle funzioni — l’oggetto funzione in memoria.

Vediamo prima come usare il hook `useMemo`. Ecco la sintassi base del hook `useMemo`:

```js
const memoizedValue = useMemo(
  function () {
    return computeExpensiveValue(a, b);
  },
  [a, b]
);
```

Puoi vedere che tutto ciò che serve è avvolgere la funzione con il hook `useMemo`.

Questo componente `ExpensiveSquare` riceverà una prop `num` che userà per calcolare il quadrato:

```jsx
function ExpensiveSquare({ num }) {
  function calculateSquare(n) {
    console.log("Calculating square...");
    return n * n;
  }

  const squared = calculateSquare(num);
  return (
    <p>
      Square of {num}: {squared}
    </p>
  );
}
export default ExpensiveSquare;
```

Ecco il componente `App` dove viene usato `ExpensiveSquare`:

```jsx
import { useState, useEffect } from "react";
import ExpensiveSquare from "./components/ExpensiveSquare";

function App() {
 const [timer, setTimer] = useState(0);
 const [num, setNum] = useState(0);

 useEffect(() => {
   const interval = setInterval(() => setTimer((c) => c + 1), 1000);
   return () => clearInterval(interval);
 }, []);

 return (
   <div>
     <h1>Timer: {timer} seconds gone</h1>
     <ExpensiveSquare num={num} />
     <button onClick={() => setNum((n) => n + 1)}>Increase Number</button>
   </div>
 );
}

export default App;
```

Il `timer` nel `useEffect`, che gira ogni secondo, farà eseguire la funzione `calculateSquare` ogni volta che viene eseguito, anche quando non aumenti la variabile di stato `num`.

Per risolvere questo problema, possiamo usare il hook `useMemo` avvolgendo la chiamata alla funzione al suo interno e specificando la variabile `num` come dipendenza:

```jsx
// import the useMemo hook
import { useMemo } from "react";

function ExpensiveSquare({ num }) {
  function calculateSquare(n) {
    console.log("Calculating square...");
    return n * n;
  }

  // const squared = calculateSquare(num);
  // Wrap the function call in useMemo instead
  const squared = useMemo(() => calculateSquare(num), [num]);

  return (
    <p>
      Square of {num}: {squared}
    </p>
  );
}

export default ExpensiveSquare;
```

Questo assicurerà che la funzione venga memoizzata memorizzando il risultato, così il calcolo avviene solo quando la variabile `num` cambia, non ogni volta che cambia qualcosa nel componente in cui viene usata.

La chiamata alla funzione `calculateSquare` non viene più eseguita ogni volta che `timer` cambia, ma solo al render iniziale e quando `num` cambia.

# --questions--

## --text--

Che cos’è la memoizzazione in React?

## --answers--

Una tecnica che memorizza nella cache valori e funzioni per evitare ricalcoli inutili.

---

Una tecnica che ti permette di gestire gli aggiornamenti dello stato del componente per evitare ricalcoli inutili.

### --feedback--

Aiuta a ottimizzare le prestazioni memorizzando i risultati calcolati in precedenza.

---

Un processo di riconciliazione del Virtual DOM con il DOM reale.

### --feedback--

Aiuta a ottimizzare le prestazioni memorizzando i risultati calcolati in precedenza.

---

Un modo per gestire gli effetti collaterali nei componenti funzionali.

### --feedback--

Aiuta a ottimizzare le prestazioni memorizzando i risultati calcolati in precedenza.

## --video-solution--

1

## --text--

Qual è la differenza tra valori calcolati e riferimenti a funzioni?

## --answers--

I valori calcolati sono oggetti funzione, mentre i riferimenti a funzioni sono risultati di esecuzione.

### --feedback--

Uno è l’output di una funzione, l’altro è solo un puntatore a essa.

---

I valori calcolati sono il risultato dell’esecuzione di una funzione, mentre i riferimenti a funzioni sono gli oggetti funzione in memoria.

---

I valori calcolati e i riferimenti a funzioni sono la stessa cosa.

### --feedback--

Uno è l’output di una funzione, l’altro è solo un puntatore a essa.

---

I riferimenti a funzioni memorizzano valori calcolati.

### --feedback--

Uno è l’output di una funzione, l’altro è solo un puntatore a essa.

## --video-solution--

2

## --text--

Quale di questi NON è uno degli strumenti che React fornisce per la memoizzazione?

## --answers--

`React.memo`

### --feedback--

Gli strumenti per la memoizzazione si concentrano sulla memorizzazione nella cache di valori e funzioni, mentre questa opzione gestisce gli effetti collaterali.

---

`useMemo`

### --feedback--

Gli strumenti per la memoizzazione si concentrano sulla memorizzazione nella cache di valori e funzioni, mentre questa opzione gestisce gli effetti collaterali.

---

`useCallback`

### --feedback--

Gli strumenti per la memoizzazione si concentrano sulla memorizzazione nella cache di valori e funzioni, mentre questa opzione gestisce gli effetti collaterali.

---

`useEffect`

## --video-solution--

4
