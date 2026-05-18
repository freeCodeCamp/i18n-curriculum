---
id: 67e2a513dbffdc8dcf1700af
title: Was ist der useOptimistic-Hook und wie funktioniert er?
challengeType: 19
dashedName: what-is-the-useoptimistic-hook-and-how-does-it-work
---

# --description--

Neuere Versionen von React haben Server-Komponenten und Server-Aktionen eingeführt, um einige der Rendering- und Logikaufgaben auf den Server zu verlagern.

Zusätzlich zu diesen Updates hat React einen neuen Hook namens `useOptimistic` eingeführt, der dafür sorgt, dass UIs responsiv bleiben, während im Hintergrund eine asynchrone Aktion abgeschlossen wird.

Obwohl dieser Hook oft zum Abrufen von Daten von einem Server verwendet wird, ist er nicht darauf beschränkt. Der Hook ist allgemein nützlich für die Handhabung asynchroner Operationen und sorgt dafür, dass die UI während der Ausführung der Aktion flüssig und interaktiv bleibt.

Schauen wir uns an, was der `useOptimistic`-Hook ist und wie er dazu beiträgt, schnelle und responsive UIs zu erstellen.

Der `useOptimistic`-Hook hilft dabei, „optimistische Updates“ in der UI zu verwalten, eine Strategie, bei der Sie sofortige Updates in der UI basierend auf dem erwarteten Ergebnis einer Aktion bereitstellen, zum Beispiel während Sie auf eine Server-Antwort warten.

Hier ist die grundlegende Syntax des `useOptimistic`-Hooks:

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

- `optimisticState` ist der temporäre Zustand, der sofort aktualisiert wird, um eine bessere Benutzererfahrung zu bieten.

- `addOptimistic` ist die Funktion, die das optimistische Update anwendet, bevor der tatsächliche Zustand sich ändert.

- `actualState` ist der echte Zustandswert, der aus dem Ergebnis einer Aktion stammt, wie dem Abrufen von Daten von einem Server.

- `updateFunction` ist die Funktion, die bestimmt, wie der optimistische Zustand aktualisiert werden soll, wenn sie aufgerufen wird.

Auf den ersten Blick könnte der `useOptimistic`-Hook wie eine weitere Möglichkeit erscheinen, Ladezustände in React zu handhaben. Aber er ist mehr als das.

Ein Ladezustand steuert, ob Sie einen Spinner, eine Nachricht oder einen anderen Indikator in der UI sehen, während im Hintergrund etwas passiert.

Der `useOptimistic`-Hook aktualisiert die UI jedoch sofort basierend auf einem erwarteten Ergebnis, noch bevor Sie beispielsweise einen API-Aufruf tätigen. Dieser Hook gibt Ihnen die Möglichkeit, einen Ladeindikator oder eine Nachricht anzuzeigen, potenzielle Fehler elegant zu behandeln und sofortiges Feedback zu geben, damit sich die UI schnell anfühlt.

Das wird klarer, wenn wir uns einige Beispiele ansehen, die zeigen, wie der `useOptimistic`-Hook funktioniert.

Hier ist eine Aktion, die das Speichern einer Aufgabe auf einem Server simuliert. Sie gibt die Aufgabe nach einer Verzögerung von 1 Sekunde zurück, so wie es bei einer echten API-Anfrage passieren könnte:

```js
export async function saveTask(task) {
  await new Promise((res) => setTimeout(res, 1000));

  return task;
}
```

Hier ist der Code, der den `useOptimistic`-Hook einrichtet, indem er importiert und initialisiert wird, mit einer `handleSubmit`-Funktion, die eine Eingabe an die Aktion sendet:

```jsx
"use client";

import { useOptimistic } from "react";

export default function TaskList({ tasks, addTask }) {
  const [optimisticTasks, addOptimisticTask] = useOptimistic(
    tasks,
    (state, newTask) => [...state, { text: newTask, pending: true }]
  );

  async function handleSubmit(e) {
    e.preventDefault();
    const formData = new FormData(e.target);

    addOptimisticTask(formData.get("task"));

    addTask(formData);
    e.target.reset();
  }

  return <>{/* UI */}</>;
}
```

Im Code hält der `useOptimistic`-Hook eine temporäre Liste von Aufgaben, die sofort aktualisiert wird, wenn Sie eine neue Aufgabe hinzufügen.

Die Zeile `(state, newTask) => [...state, { text: newTask, pending: true }]` sorgt dafür, dass eine neue Aufgabe mit einem ausstehenden Status erscheint, noch bevor der Server bestätigt, dass etwas vom Formular kommt.

Wenn das Formular abgesendet wird, extrahiert die `handleSubmit`-Funktion die Aufgabe und fügt sie „optimistisch“ mit dem `addOptimisticTask`-Parameter hinzu. Dann wird `addTask` als Prop übergeben, die die Aufgabe an den Server sendet. Schließlich wird das Formular durch Aufruf von `e.target.reset()` zurückgesetzt.

Hier ist die `TaskList`-Komponente:

```jsx
"use client";
import { useOptimistic, startTransition } from "react";

export default function TaskList({ tasks, addTask }) {
  const [optimisticTasks, addOptimisticTask] = useOptimistic(
    tasks,
    (state, newTask) => [...state, { text: newTask, pending: true }]
  );

  async function handleSubmit(e) {
    e.preventDefault();
    const formData = new FormData(e.target);

    startTransition(() => {
      addOptimisticTask(formData.get("task"));
    });

    addTask(formData);
    e.target.reset();
  }

  return (
    <div className="max-w-md mx-auto p-4">
      <h3 className="text-xl font-medium mb-3">Tasks</h3>

      <ul className="space-y-2 mb-4">
        {optimisticTasks.map((task, index) => (
          <li key={index} className="p-2 border-b">
            {task.text}
            {task.pending && (
              <small className="ml-2 text-gray-500 text-sm">
                Adding Task...
              </small>
            )}
          </li>
        ))}
      </ul>

      <form onSubmit={handleSubmit} className="flex gap-2">
        <input
          type="text"
          name="task"
          placeholder="Type in a task..."
          className="flex-1 p-2 border"
        />
        <button type="submit" className="bg-gray-200 px-3 py-2 cursor-pointer">
          Submit
        </button>
      </form>
    </div>
  );
}
```

Hier durchlaufen wir den `optimisticTask`-Parameter, um die Aufgabe anzuzeigen. Wenn `task.pending` `true` ist, wird der Text `Adding Task...` neben der Aufgabe angezeigt, was bestätigt, dass die Aufgabe optimistisch hinzugefügt wurde, bevor der Server dies bestätigt.

Hier ist die `Task`-Komponente, die den Zustand für das Formular verwaltet. Sie ruft die `saveTask`-Funktion aus der Aktion auf, damit sie die Aufgabe hinzufügen kann, und fügt die neue Aufgabe hinzu, sobald sie vom Server empfangen wird:

```jsx
"use client";

import { useState } from "react";
import TaskList from "./TaskList";
import { saveTask } from "./actions";

export default function Tasks() {
  const [tasks, setTasks] = useState([]);

  async function addTask(formData) {
    const newTaskText = formData.get("task");

    const savedTask = await saveTask(newTaskText);
    setTasks((prev) => [...prev, { text: savedTask, pending: false }]);
  }

  return <TaskList tasks={tasks} addTask={addTask} />;
}
```

Das sorgt für schnelle UI-Updates, indem sofortiges Feedback gezeigt wird, anstatt auf eine Antwort zu warten. Sobald die Aufgabe gespeichert ist, wird die `pending`-Eigenschaft entfernt und die endgültige Aufgabenliste entsprechend aktualisiert.

In der UI passieren zwei Dinge, die nicht passieren sollten. Erstens können Sie den `Adding Task...`-Text nicht sehen, da er zu schnell erscheint und verschwindet. Zweitens tritt nach dem Hinzufügen der Aufgabe ein Fehler auf.

Es gibt zwei Dinge, die wir tun müssen, um diese Probleme zu beheben.

Zuerst müssen wir `startTransition` aus React importieren und verwenden, um die Zeile `addOptimisticTask(formData.get('task'))` einzuwickeln:

```js
startTransition(() => {
  addOptimisticTask(formData.get("task"));
});
```

Zweitens müssen wir den `Adding Task...`-Text für einige Zeit sichtbar machen, bevor er verschwindet.

Dazu können wir die `addTask`-Funktion mit einem ausstehenden Zustand ändern und eine Verzögerung von einigen Sekunden simulieren, bevor die Aufgabe als abgeschlossen markiert wird. `setTimeout()` ist dafür ideal:

```js
async function addTask(formData) {
  const newTaskText = formData.get("task");

  // Add an optimistic task with a pending state
  const tempTask = { id: Date.now(), text: newTaskText, pending: true };
  setTasks((prev) => [...prev, tempTask]);

  // Simulate a 3 seconds delay before marking the task as completed
  setTimeout(async () => {
    const savedTask = await saveTask(newTaskText);

    setTasks((prev) =>
      prev.map((task) =>
        task.id === tempTask.id
          ? { ...task, text: savedTask, pending: false }
          : task
      )
    );
  }, 3000);
}
```

Und sobald Sie das tun, funktioniert alles einwandfrei.

# --questions--

## --text--

Was ist der Zweck des `useOptimistic`-Hooks?

## --answers--

Er ermöglicht Komponenten, Daten vom Server abzurufen, bevor die UI gerendert wird.

### --feedback--

Dieser Hook sorgt dafür, dass die UI erwartete Änderungen anzeigt, bevor eine asynchrone Operation abgeschlossen ist.

---

Er hilft dabei, optimistische Updates zu verwalten, indem die UI sofort aktualisiert wird, während auf eine asynchrone Operation wie eine Server-Antwort gewartet wird.

---

Er ermöglicht automatische Fehlerbehandlung und Rollbacks bei fehlgeschlagenen API-Anfragen in React-Anwendungen.

### --feedback--

Dieser Hook sorgt dafür, dass die UI erwartete Änderungen anzeigt, bevor eine asynchrone Operation abgeschlossen ist.

---

Er optimiert Zustandsaktualisierungen, indem sie gebündelt werden, um die Leistung zu verbessern.

### --feedback--

Dieser Hook sorgt dafür, dass die UI erwartete Änderungen anzeigt, bevor eine asynchrone Operation abgeschlossen ist.

## --video-solution--

2

## --text--

Worin unterscheidet sich der `useOptimistic`-Hook von einem Ladezustand?

## --answers--

Ein Ladezustand zeigt UI-Feedback, während auf eine Antwort gewartet wird, während `useOptimistic` die UI sofort basierend auf einem erwarteten Ergebnis aktualisiert.

---

Ein Ladezustand ändert Serverdaten sofort, während `useOptimistic` nur die Client-UI aktualisiert.

### --feedback--

Der eine aktualisiert die UI, bevor der Server überhaupt von der Anfrage weiß.

---

Der `useOptimistic`-Hook wird zur Fehlerbehandlung verwendet, während ein Ladezustand nur Spinner anzeigt.

### --feedback--

Der eine aktualisiert die UI, bevor der Server überhaupt von der Anfrage weiß.

---

Beide sind gleich, aber `useOptimistic` bietet automatische Wiederholungen bei fehlgeschlagenen Anfragen.

### --feedback--

Der eine aktualisiert die UI, bevor der Server überhaupt von der Anfrage weiß.

## --video-solution--

1

## --text--

Was macht `addOptimistic` in der folgenden `useOptimistic`-Hook-Syntax?

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

## --answers--

Es wendet das optimistische Update an, bevor der tatsächliche Zustand sich ändert, und sorgt so für eine flüssigere Benutzererfahrung.

---

Es holt den echten Zustand vom Server und aktualisiert die UI entsprechend.

### --feedback--

Diese Funktion aktualisiert die UI, bevor der tatsächliche Zustand sich ändert.

---

Es ersetzt den tatsächlichen Zustand durch einen temporären Zustand, nachdem eine Server-Antwort eingegangen ist.

### --feedback--

Diese Funktion aktualisiert die UI, bevor der tatsächliche Zustand sich ändert.

---

Es validiert Serverdaten, bevor das optimistische Update auf die UI angewendet wird.

### --feedback--

Diese Funktion aktualisiert die UI, bevor der tatsächliche Zustand sich ändert.

## --video-solution--

1
