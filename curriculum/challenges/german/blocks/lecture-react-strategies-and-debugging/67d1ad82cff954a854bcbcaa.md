---
id: 67d1ad82cff954a854bcbcaa
title: Was ist Prop Drilling?
challengeType: 19
dashedName: what-is-prop-drilling
---

# --description--

Prop Drilling ist der grundlegendste Ansatz zur Zustandsverwaltung in React-Anwendungen. Es sieht einfach aus, kann aber schnell unübersichtlich werden und ist sehr schwer zu skalieren.

Schauen wir uns an, was Prop Drilling ist, warum es ein Problem darstellt und welche gute Alternative es gibt, wenn eine Anwendung wächst.

Prop Drilling ist der Prozess, Props von einer übergeordneten Komponente an tief verschachtelte Kindkomponenten weiterzugeben, selbst wenn einige der Kindkomponenten die Props gar nicht benötigen.

Zum Beispiel nehmen wir an, Sie haben drei Komponenten mit den Namen `Parent`, `Child` und `Grandchild`. Wenn Sie einige Daten in der `Grandchild`-Komponente verwenden möchten, diese sich aber in der `Parent`-Komponente befinden, müssten Sie sie von der `Parent`- zur `Child`-Komponente weitergeben, dann von der `Child`- zur `Grandchild`-Komponente.

Oder wenn die Daten noch weiter oben in der Kette sind, müssten die Daten möglicherweise auch an die `Parent`-Komponente weitergereicht werden.

Hier sind die Daten, die ich anzeigen möchte, der String `Hello, Prop Drilling!`. Er ist der Variablen `greeting` in der Root-Komponente `App` zugewiesen:

```jsx
import "./App.css";
import Parent from "./Parent";

function App() {
  const greeting = "Hello, Prop Drilling!";

  return <Parent greeting={greeting} />;
}

export default App;
```

Sie sehen, dass die `Parent`-Komponente ebenfalls die Variable `greeting` als Wert einer `greeting`-Prop erhält. Hier übergibt die `Parent`-Komponente sie an die `Child`-Komponente als Wert einer weiteren `greeting`-Prop in der `Child`:

```jsx
import Child from "./Child";

const Parent = ({ greeting }) => {
  return <Child greeting={greeting} />;
};

export default Parent;
```

Und hier ist die `Child`-Komponente, die sie an die `Grandchild`-Komponente weitergibt:

```jsx
import Grandchild from "./Grandchild";

const Child = ({ greeting }) => {
  return <Grandchild greeting={greeting} />;
};

export default Child;
```

Und schließlich erhält die `Grandchild`-Komponente die Begrüßung und verwendet sie als Inhalt eines `h1`-Elements:

```jsx
const Grandchild = ({ greeting }) => {
  return <h1>{greeting}</h1>;
};

export default Grandchild;
```

Im Browser sehen Sie eine Seite mit einem einzelnen `h1`-Element, das den Text `Hello, Prop Drilling!` enthält.

Zunächst mag Prop Drilling nicht so schlimm erscheinen. Aber je größer Ihre App wird, desto schwieriger wird es, sie zu verstehen, zu debuggen und zu warten.

Wenn Sie Props weitergeben müssen, versuchen Sie, sie alle in einer einzigen übergeordneten Komponente zu halten. Dieser Ansatz, alle notwendigen Daten zu zentralisieren, wird als „single source of truth“ bezeichnet.

Zum Beispiel möchten Sie ein neues `response` zu Ihrem `greeting` hinzufügen und beide in der `Grandchild`-Komponente verwenden. Da `greeting` bereits in der `App`-Komponente ist, macht es Sinn, `response` ebenfalls dort zu platzieren und beide durch die Kette weiterzugeben:

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

Im Browser sehen Sie eine Seite mit einem `h1`-Element, das den Text `Hello, Prop Drilling!` enthält, und einem `h2`-Element, das den Text `I'm not here to play!` enthält.

Um Prop Drilling zu vermeiden, besonders in großen, komplexen Anwendungen, sollten Sie die Context API oder Zustandsverwaltungsbibliotheken wie Redux und Redux Toolkit, Zustand, Recoil und andere in Betracht ziehen.

Mehr dazu lernen Sie in den kommenden Lektionen.

# --questions--

## --text--

Wie würde eine Prop von einer übergeordneten Komponente zu einer Enkelkomponente fließen?

## --answers--

Indem die Prop innerhalb der Enkelkomponente definiert wird.

### --feedback--

Die Prop muss zuerst durch die Kindkomponente gehen, bevor sie die Enkelkomponente erreicht.

---

Indem sie von der übergeordneten zur Kindkomponente und dann von der Kind- zur Enkelkomponente weitergegeben wird.

---

Indem der `useEffect`-Hook verwendet wird, um die Prop dynamisch abzurufen.

### --feedback--

Die Prop muss zuerst durch die Kindkomponente gehen, bevor sie die Enkelkomponente erreicht.

---

Indem der `useState`-Hook in der Enkelkomponente verwendet wird.

### --feedback--

Die Prop muss zuerst durch die Kindkomponente gehen, bevor sie die Enkelkomponente erreicht.

## --video-solution--

2

## --text--

Was ist Prop Drilling in React?

## --answers--

Props werden direkt nur an die Komponenten weitergegeben, die sie benötigen.

### --feedback--

Es passiert, wenn Props unnötig durch mehrere Ebenen weitergereicht werden.

---

Verwendung von Context, um Zustand zwischen Komponenten zu teilen.

### --feedback--

Es passiert, wenn Props unnötig durch mehrere Ebenen weitergereicht werden.

---

Props werden von einer übergeordneten Komponente an tief verschachtelte Kindkomponenten weitergegeben.

---

In den Komponentenstatus wird mit Hooks „hineingebohrt“.

### --feedback--

Es passiert, wenn Props unnötig durch mehrere Ebenen weitergereicht werden.

## --video-solution--

3

## --text--

Warum wird Prop Drilling in größeren Anwendungen als Problem angesehen?

## --answers--

Es macht die Zustandsverwaltung einfacher.

### --feedback--

Zu viele Props, die durch mehrere Komponenten weitergereicht werden, können den Code unübersichtlich machen.

---

Es verbessert die Leistung, indem es Neurenderings reduziert.

### --feedback--

Zu viele Props, die durch mehrere Komponenten weitergereicht werden, können den Code unübersichtlich machen.

---

Es macht den Code schwerer lesbar, zu debuggen und zu warten.

---

Es eliminiert die Notwendigkeit von Zustandsverwaltungsbibliotheken.

### --feedback--

Zu viele Props, die durch mehrere Komponenten weitergereicht werden, können den Code unübersichtlich machen.

## --video-solution--

3
