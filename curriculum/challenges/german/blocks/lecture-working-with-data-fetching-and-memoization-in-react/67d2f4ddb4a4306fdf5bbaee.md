---
id: 67d2f4ddb4a4306fdf5bbaee
title: Was ist Memoization und wie funktioniert der useMemo-Hook?
challengeType: 19
dashedName: what-is-memoization-and-how-does-the-usememo-hook-work
---

# --description--

Wenn Ihre React-App größer wird, können unnötige Re-Renderings und aufwändige Berechnungen die Leistung verlangsamen, was zu langsamen UI-Aktualisierungen und erhöhtem Ressourcenverbrauch führt.

Dies kann besonders problematisch sein bei Apps mit komplexem Zustandsmanagement, großen Listen, Funktionen, die aufwändige Berechnungen erfordern, und vielen Komponenten mit einem einzigen Elternteil.

Daraus ergibt sich die Notwendigkeit, Ihre React-App für bessere Leistung zu optimieren, indem redundante Berechnungen minimiert und flüssigere Interaktionen sichergestellt werden.

React löst dieses Problem mit einem Prozess namens Memoization, einer Technik, die Werte und Funktionen zwischenspeichert, um unnötige Neuberechnungen zu verhindern, sodass Ihre App schneller und responsiver wird.

Memoization ist per Definition eine Optimierungstechnik, bei der das Ergebnis aufwändiger Funktionsaufrufe basierend auf bestimmten Argumenten zwischengespeichert (erinnert) wird. Wenn dieselben Argumente erneut übergeben werden, wird das zwischengespeicherte Ergebnis zurückgegeben, anstatt die Funktion erneut zu berechnen.

Der Memoization-Prozess läuft folgendermaßen ab:

- Speichern Sie die Ergebnisse von Funktionsaufrufen zusammen mit ihren Eingabeargumenten.

- Bevor die Funktion ausgeführt wird, prüfen Sie, ob das Ergebnis für die aktuellen Argumente bereits im Cache vorhanden ist.

- Wenn es vorhanden ist, geben Sie das zwischengespeicherte Ergebnis zurück, anstatt die Berechnung erneut auszuführen.

- Wenn es nicht vorhanden ist, berechnen Sie das Ergebnis, speichern es im Cache und geben es dann zurück.

Um die Entwicklererfahrung mit Memoization zu verbessern, stellt React drei Werkzeuge bereit – `React.memo` (oder `memo`), `useMemo` und `useCallback`.

Wie Sie sich denken können, sind sowohl `useMemo` als auch `useCallback` Hooks, aber `React.memo` ist ein Komponenten-Wrapper, eine Komponente höherer Ordnung (HOC).

In der nächsten Lektion schauen wir uns an, wie der `useCallback`-Hook und `React.memo` funktionieren.

`useMemo` ermöglicht es Ihnen, berechnete Werte zu memoizen, während `useCallback` dasselbe für Funktionsreferenzen tut.

Falls Sie sich fragen, was berechnete Werte und Funktionsreferenzen sind: Berechnete Werte beziehen sich auf das Ergebnis der Ausführung einer Funktion, während Funktionsreferenzen die Zeiger auf Funktionen sind – das Funktionsobjekt im Speicher.

Sehen wir uns zuerst an, wie man den `useMemo`-Hook verwendet. Hier ist die grundlegende Syntax des `useMemo`-Hooks:

```js
const memoizedValue = useMemo(
  function () {
    return computeExpensiveValue(a, b);
  },
  [a, b]
);
```

Sie sehen, alles, was nötig ist, ist, den `useMemo`-Hook um die Funktion zu wickeln.

Diese `ExpensiveSquare`-Komponente erhält eine `num`-Prop, die sie verwendet, um das Quadrat zu berechnen:

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

Hier ist die `App`-Komponente, in der der `ExpensiveSquare` verwendet wird:

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

Der `timer` im `useEffect`, der jede Sekunde läuft, sorgt dafür, dass die `calculateSquare`-Funktion jedes Mal ausgeführt wird, wenn er läuft, selbst wenn Sie die `num`-Zustandsvariable nicht erhöhen.

Um dieses Problem zu lösen, können wir den `useMemo`-Hook verwenden, indem wir den Funktionsaufruf darin einwickeln und die `num`-Variable als Abhängigkeit angeben:

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

Dies stellt sicher, dass die Funktion memoized wird, indem das Ergebnis zwischengespeichert wird. Auch wenn die `ExpensiveSquare`-Komponente bei jeder Aktualisierung des `timer`-Zustands des Elternteils weiterhin neu gerendert wird, wird die `calculateSquare`-Berechnung nur beim initialen Rendern und bei Änderung von `num` erneut ausgeführt.

# --questions--

## --text--

Was ist Memoization in React?

## --answers--

Eine Technik, die Werte und Funktionen zwischenspeichert, um unnötige Neuberechnungen zu verhindern.

---

Eine Technik, mit der Sie Zustandsaktualisierungen von Komponenten verwalten, um unnötige Neuberechnungen zu verhindern.

### --feedback--

Sie hilft, die Leistung zu optimieren, indem zuvor berechnete Ergebnisse gespeichert werden.

---

Ein Prozess, bei dem der Virtual DOM mit dem tatsächlichen DOM abgeglichen wird.

### --feedback--

Sie hilft, die Leistung zu optimieren, indem zuvor berechnete Ergebnisse gespeichert werden.

---

Eine Methode, um Seiteneffekte in funktionalen Komponenten zu behandeln.

### --feedback--

Sie hilft, die Leistung zu optimieren, indem zuvor berechnete Ergebnisse gespeichert werden.

## --video-solution--

1

## --text--

Was ist der Unterschied zwischen berechneten Werten und Funktionsreferenzen?

## --answers--

Berechnete Werte sind Funktionsobjekte, während Funktionsreferenzen Ausführungsergebnisse sind.

### --feedback--

Das eine ist die Ausgabe einer Funktion, das andere nur ein Zeiger darauf.

---

Berechnete Werte sind das Ergebnis der Ausführung einer Funktion, während Funktionsreferenzen die Funktionsobjekte im Speicher sind.

---

Berechnete Werte und Funktionsreferenzen sind dasselbe.

### --feedback--

Das eine ist die Ausgabe einer Funktion, das andere nur ein Zeiger darauf.

---

Funktionsreferenzen speichern berechnete Werte.

### --feedback--

Das eine ist die Ausgabe einer Funktion, das andere nur ein Zeiger darauf.

## --video-solution--

2

## --text--

Welche dieser Optionen ist KEINES der Werkzeuge, die React für Memoization bereitstellt?

## --answers--

`React.memo`

### --feedback--

Memoization-Werkzeuge konzentrieren sich auf das Zwischenspeichern von Werten und Funktionen, während diese Option Seiteneffekte behandelt.

---

`useMemo`

### --feedback--

Memoization-Werkzeuge konzentrieren sich auf das Zwischenspeichern von Werten und Funktionen, während diese Option Seiteneffekte behandelt.

---

`useCallback`

### --feedback--

Memoization-Werkzeuge konzentrieren sich auf das Zwischenspeichern von Werten und Funktionen, während diese Option Seiteneffekte behandelt.

---

`useEffect`

## --video-solution--

4
