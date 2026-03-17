---
id: 67e2a513dbffdc8dcf1700af
title: Cos’è il hook useOptimistic e come funziona?
challengeType: 19
dashedName: what-is-the-useoptimistic-hook-and-how-does-it-work
---

# --description--

Le versioni recenti di React hanno introdotto i componenti server e le azioni server per spostare alcune responsabilità di rendering e logica sul server.

Insieme a questi aggiornamenti, React ha aggiunto un nuovo hook chiamato `useOptimistic` per mantenere le interfacce utente responsivi mentre si aspetta che un’azione asincrona si completi in background.

Anche se spesso viene usato per recuperare dati da un server, non è limitato a questo. Il hook è generalmente utile per gestire operazioni asincrone, assicurando che l’interfaccia rimanga fluida e interattiva mentre l’azione è in esecuzione.

Diamo un’occhiata a cos’è il hook `useOptimistic` e come contribuisce a creare interfacce rapide e responsivi.

Il hook `useOptimistic` aiuta a gestire gli “aggiornamenti ottimistici” nell’interfaccia, una strategia in cui fornisci aggiornamenti immediati all’interfaccia basati sull’esito previsto di un’azione, come aspettare una risposta dal server.

Ecco la sintassi base del hook `useOptimistic`:

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

- `optimisticState` è lo stato temporaneo che si aggiorna subito per un’esperienza utente migliore.

- `addOptimistic` è la funzione che applica l’aggiornamento ottimistico prima che lo stato reale cambi.

- `actualState` è il valore reale dello stato che deriva dal risultato di un’azione, come recuperare dati da un server.

- `updateFunction` è la funzione che determina come lo stato ottimistico deve aggiornarsi quando viene chiamata.

A prima vista, potrebbe sembrare che il hook `useOptimistic` sia solo un altro modo per gestire gli stati di caricamento in React. Ma è molto di più.

Uno stato di caricamento controlla se vedi un indicatore di caricamento, un messaggio o qualche altro segnale nell’interfaccia mentre qualcosa accade in background.

Tuttavia, il hook `useOptimistic` aggiorna l’interfaccia istantaneamente basandosi su un esito previsto, anche prima di, per esempio, fare una chiamata a un’API. Questo hook ti dà la possibilità di mostrare un indicatore di caricamento o un messaggio, gestire eventuali errori con eleganza e mostrare un feedback immediato per far sentire l’interfaccia reattiva.

Questo diventerà più chiaro mentre vediamo alcuni esempi che mostrano come funziona il hook `useOptimistic`.

Ecco un’azione che simula il salvataggio di un’attività su un server. Restituisce l’attività dopo un ritardo di 1 secondo, come potrebbe succedere con una richiesta API reale:

```js
export async function saveTask(task) {
  await new Promise((res) => setTimeout(res, 1000));

  return task;
}
```

Ecco il codice che configura il hook `useOptimistic` importandolo e inizializzandolo, con una funzione `handleSubmit` che invia un input all’azione:

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

Nel codice, il hook `useOptimistic` mantiene una lista temporanea di attività che si aggiorna immediatamente quando aggiungi una nuova attività.

La riga `(state, newTask) => [...state, { text: newTask, pending: true }]` assicura che una nuova attività appaia con uno stato in sospeso anche prima che il server confermi qualcosa proveniente dal modulo.

Quando il modulo viene inviato, la funzione `handleSubmit` estrae l’attività e la aggiunge “ottimisticamente” con il parametro `addOptimisticTask`. Poi `addTask` viene passato come prop che invia l’attività al server. Infine, il modulo viene resettato chiamando `e.target.reset()`.

Ecco il componente `TaskList`:

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

Qui, stiamo iterando sul parametro `optimisticTask` per mostrare l’attività. Quando `task.pending` è `true`, il testo `Adding Task...` viene mostrato accanto all’attività, confermando che l’attività è stata aggiunta ottimisticamente prima che il server la confermi.

Ecco il componente `Task` che gestisce lo stato per il modulo. Chiama la funzione `saveTask` dall’azione così può aggiungere l’attività e aggiunge la nuova attività una volta ricevuta dal server:

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

Questo assicura aggiornamenti rapidi dell’interfaccia mostrando un feedback immediato invece di aspettare una risposta. Una volta che l’attività è salvata, la proprietà `pending` viene rimossa e la lista finale delle attività si aggiorna di conseguenza.

Nell’interfaccia succedono due cose che non dovrebbero accadere. Primo, non puoi vedere il testo `Adding Task...` perché appare e scompare troppo velocemente. Poi, si verifica un errore dopo aver aggiunto l’attività.

Ci sono due cose da fare per risolvere questi problemi.

Prima, dobbiamo importare `startTransition` da React e usarlo per avvolgere la riga `addOptimisticTask(formData.get('task'))`:

```js
startTransition(() => {
  addOptimisticTask(formData.get("task"));
});
```

Secondo, dobbiamo rendere il testo `Adding Task...` visibile per un po’ di tempo prima che scompaia.

Per farlo, possiamo modificare la funzione `addTask` con uno stato pending e simulare un ritardo di qualche secondo prima di segnare l’attività come completata. `setTimeout()` è ideale per questo:

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

E una volta fatto, tutto funziona bene.

# --questions--

## --text--

Qual è lo scopo del hook `useOptimistic`?

## --answers--

Permette ai componenti di recuperare dati dal server prima di renderizzare l’interfaccia.

### --feedback--

Questo hook assicura che l’interfaccia rifletta i cambiamenti previsti prima che un’operazione asincrona si completi.

---

Aiuta a gestire aggiornamenti ottimistici aggiornando subito l’interfaccia mentre si aspetta un’operazione asincrona, come una risposta dal server.

---

Permette la gestione automatica degli errori e il rollback per richieste API fallite nelle applicazioni React.

### --feedback--

Questo hook assicura che l’interfaccia rifletta i cambiamenti previsti prima che un’operazione asincrona si completi.

---

Ottimizza gli aggiornamenti dello stato raggruppandoli per migliorare le prestazioni.

### --feedback--

Questo hook assicura che l’interfaccia rifletta i cambiamenti previsti prima che un’operazione asincrona si completi.

## --video-solution--

2

## --text--

In cosa il hook `useOptimistic` è diverso da uno stato di caricamento?

## --answers--

Uno stato di caricamento mostra un feedback nell’interfaccia mentre si aspetta una risposta, mentre `useOptimistic` aggiorna subito l’interfaccia basandosi su un esito previsto.

---

Uno stato di caricamento modifica immediatamente i dati del server mentre `useOptimistic` aggiorna solo l’interfaccia client.

### --feedback--

Uno aggiorna l’interfaccia prima ancora che il server sappia della richiesta.

---

Il hook `useOptimistic` serve per gestire gli errori, mentre uno stato di caricamento serve solo a mostrare indicatori di caricamento.

### --feedback--

Uno aggiorna l’interfaccia prima ancora che il server sappia della richiesta.

---

Sono uguali, ma `useOptimistic` fornisce ritentativi automatici per richieste fallite.

### --feedback--

Uno aggiorna l’interfaccia prima ancora che il server sappia della richiesta.

## --video-solution--

1

## --text--

Cosa fa `addOptimistic` nella sintassi del hook `useOptimistic` qui sotto?

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

## --answers--

Applica l’aggiornamento ottimistico prima che lo stato reale cambi, offrendo un’esperienza utente più fluida.

---

Recupera lo stato reale dal server e aggiorna l’interfaccia di conseguenza.

### --feedback--

Questa funzione aggiorna l’interfaccia prima che lo stato reale cambi.

---

Sostituisce lo stato reale con uno temporaneo dopo aver ricevuto la risposta dal server.

### --feedback--

Questa funzione aggiorna l’interfaccia prima che lo stato reale cambi.

---

Valida i dati del server prima di applicare l’aggiornamento ottimistico all’interfaccia.

### --feedback--

Questa funzione aggiorna l’interfaccia prima che lo stato reale cambi.

## --video-solution--

1
