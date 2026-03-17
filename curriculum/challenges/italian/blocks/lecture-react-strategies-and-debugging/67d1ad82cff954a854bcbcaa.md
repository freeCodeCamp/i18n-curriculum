---
id: 67d1ad82cff954a854bcbcaa
title: Cos’è il prop drilling?
challengeType: 19
dashedName: what-is-prop-drilling
---

# --description--

Il prop drilling è l’approccio più semplice alla gestione dello stato nelle applicazioni React. Sembra facile, ma può diventare rapidamente complicato e molto difficile da scalare.

Vediamo cos’è il prop drilling, perché è un problema e una buona alternativa man mano che un’app cresce.

Il prop drilling è il processo di passare props da un componente genitore a componenti figli profondamente annidati, anche quando alcuni di questi figli non hanno bisogno delle props.

Per esempio, supponiamo di avere tre componenti chiamati `Parent`, `Child` e `Grandchild`. Se vuoi usare alcuni dati nel componente `Grandchild`, ma questi dati si trovano nel componente `Parent`, dovresti passarli dal componente `Parent` a `Child`, poi da `Child` a `Grandchild`.

Oppure, se i dati sono ancora più in alto nella catena, potrebbe essere necessario passarli anche al componente `Parent`.

Qui, i dati che voglio mostrare sono la stringa `Hello, Prop Drilling!`. È assegnata alla variabile `greeting` nel componente radice `App`:

```jsx
import "./App.css";
import Parent from "./Parent";

function App() {
  const greeting = "Hello, Prop Drilling!";

  return <Parent greeting={greeting} />;
}

export default App;
```

Puoi vedere che il componente `Parent` riceve anche la variabile `greeting` come valore di una prop `greeting`. Ecco il componente `Parent` che la passa al componente `Child` come valore di un’altra prop `greeting` nel `Child`:

```jsx
import Child from "./Child";

const Parent = ({ greeting }) => {
  return <Child greeting={greeting} />;
};

export default Parent;
```

Ecco il componente `Child` che la passa al componente `Grandchild`:

```jsx
import Grandchild from "./Grandchild";

const Child = ({ greeting }) => {
  return <Grandchild greeting={greeting} />;
};

export default Child;
```

Infine il componente `Grandchild` riceve il saluto e lo usa come contenuto di un elemento `h1`:

```jsx
const Grandchild = ({ greeting }) => {
  return <h1>{greeting}</h1>;
};

export default Grandchild;
```

Nel browser vedrai una pagina con un singolo elemento `h1` che contiene il testo `Hello, Prop Drilling!`.

All’inizio, il prop drilling potrebbe non sembrare un grosso problema. Ma man mano che la tua app cresce, diventa più difficile da capire, eseguire il debug e mantenere.

Se devi passare props in giro, cerca di tenerle tutte in un unico componente genitore. Questo approccio di centralizzare tutti i dati necessari si chiama “single source of truth”.

Per esempio, supponiamo che tu voglia aggiungere un nuovo `response` insieme al tuo `greeting`, e che tu voglia usare entrambi nel componente `Grandchild`. Poiché `greeting` è già nel componente `App`, ha senso mettere `response` lì e passarli entrambi lungo la catena:

```jsx
function App() {
  const greeting = "Hello, Prop Drilling!";
  const response = "I'm not here to play!";

  return <Parent greeting={greeting} response={response} />;
}

const Parent = ({ greeting, response }) => {
  return <Child greeting={greeting} response={response} />;
};

const Child = ({ greeting, response }) => {
  return <Grandchild greeting={greeting} response={response} />;
};

const Grandchild = ({ greeting, response }) => {
  return (
    <>
      <h1>{greeting}</h1>
      <h2>{response}</h2>
    </>
  );
};

export default App;
```

Nel browser vedrai una pagina con un elemento `h1` che contiene il testo `Hello, Prop Drilling!` e un elemento `h2` che contiene il testo `I'm not here to play!`.

Per evitare il prop drilling, specialmente in applicazioni grandi e complesse, considera di usare la Context API o librerie di gestione dello stato come Redux e Redux Toolkit, Zustand, Recoil e altre.

Ne imparerai di più nelle prossime lezioni.

# --questions--

## --text--

Come fluisce una prop da un componente genitore a un componente nipote?

## --answers--

Definendo la prop all’interno del componente nipote.

### --feedback--

La prop deve passare attraverso il figlio prima di arrivare al nipote.

---

Passandola dal genitore al figlio, poi dal figlio al nipote.

---

Usando il hook `useEffect` per recuperare la prop dinamicamente.

### --feedback--

La prop deve passare attraverso il figlio prima di arrivare al nipote.

---

Usando il hook `useState` nel nipote.

### --feedback--

La prop deve passare attraverso il figlio prima di arrivare al nipote.

## --video-solution--

2

## --text--

Cos’è il prop drilling in React?

## --answers--

Passare props direttamente solo ai componenti che ne hanno bisogno.

### --feedback--

Succede quando le props vengono passate inutilmente attraverso più livelli.

---

Usare il contesto per condividere lo stato tra componenti.

### --feedback--

Succede quando le props vengono passate inutilmente attraverso più livelli.

---

Passare props da un componente genitore a componenti figli profondamente annidati.

---

Scavare nello stato del componente usando hook.

### --feedback--

Succede quando le props vengono passate inutilmente attraverso più livelli.

## --video-solution--

3

## --text--

Perché il prop drilling è considerato un problema nelle applicazioni più grandi?

## --answers--

Rende più facile gestire lo stato.

### --feedback--

Troppe props che passano attraverso molti componenti possono rendere il codice disordinato.

---

Migliora le prestazioni riducendo i re-render.

### --feedback--

Troppe props che passano attraverso molti componenti possono rendere il codice disordinato.

---

Rende il codice più difficile da leggere, eseguire il debug e mantenere.

---

Elimina la necessità di librerie di gestione dello stato.

### --feedback--

Troppe props che passano attraverso molti componenti possono rendere il codice disordinato.

## --video-solution--

3
