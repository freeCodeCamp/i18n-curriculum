---
id: 67e2a513dbffdc8dcf1700af
title: '¿Cuál es el uso del gancho useOptimistic y cómo funciona?'
challengeType: 19
dashedName: what-is-the-useoptimistic-hook-and-how-does-it-work
---

# --description--

Las versiones recientes de React introdujeron componentes y acciones de servidor para transferir algunas de las responsabilidades de renderizado y lógica al servidor.

Junto a esas actualizaciones, React añadió un nuevo gancho llamado `useOptimistic` para mantener las interfaces de usuario responsivas mientras se espera la finalización de una acción asíncrona en segundo plano.

Aunque a menudo se utiliza para obtener datos de un servidor, no está limitado a eso. El hook es generalmente útil para manejar operaciones asíncronas, asegurando que la interfaz de usuario permanezca fluida e interactiva mientras la acción se ejecuta.

Echemos un vistazo a qué es el hook `useOptimistic` y cómo contribuye a crear interfaces de usuario ágiles y receptivas. 

El hook `useOptimistic` ayuda a gestionar "actualizaciones optimistas" en la interfaz de usuario, una estrategia en la que se proporcionan actualizaciones inmediatas a la UI basadas en el resultado esperado de una acción, como esperar una respuesta del servidor.

Aquí está la sintaxis básica del hook `useOptimistic`:

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

- `optimisticState` es el estado temporal que se actualiza de inmediato para una mejor experiencia del usuario.

- `addOptimistic` es la función que aplica la actualización optimista antes de que el estado real cambie.

- `actualState` es el valor del estado real que proviene del resultado de una acción, como obtener datos de un servidor.

- `updateFunction` es la función que determina cómo debe actualizarse el estado optimista cuando es llamada.

A primera vista, podría parecer que el hook `useOptimistic` es solo otra forma de manejar estados de carga en React. Pero es más que eso.

Un estado de carga controla si ves un spinner, mensaje u otro indicador en la UI mientras algo ocurre en segundo plano.

Sin embargo, el hook `useOptimistic` actualiza la UI instantáneamente basándose en un resultado esperado, incluso antes de, por ejemplo, hacer una llamada a una API. Este hook te da la oportunidad de mostrar un indicador de carga o mensaje, manejar posibles errores de manera elegante y mostrar comentarios instantáneos para que la UI se sienta ágil.

Esto se volverá más claro a medida que pasemos por algunos ejemplos que muestran cómo funciona el hook `useOptimistic`.

Aquí hay una acción que simula guardar una tarea en un servidor. Devuelve la tarea después de un retraso de 1 segundo, como podría ocurrir con una solicitud de API del mundo real:

```js
export async function saveTask(task) {
  await new Promise((res) => setTimeout(res, 1000));

  return task;
}
```

Aquí está el código que configura el hook `useOptimistic` importándolo e inicializándolo, con una función `handleSubmit` que envía una entrada a la acción:

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

En el código, el hook `useOptimistic` mantiene una lista temporal de tareas que se actualiza inmediatamente cuando agregas una nueva tarea.

La línea, `(state, newTask) => [...state, { text: newTask, pending: true }]` asegura que una nueva tarea aparezca con un estado de pendiente incluso antes de que el servidor confirme que algo viene del formulario.

Cuando se envía el formulario, la función `handleSubmit` extrae la tarea y la agrega "con optimismo" con el parámetro `addOptimisticTask`. Luego, `addTask` se pasa como una propiedad que envía la tarea al servidor. Finalmente, el formulario se restablece llamando a `e.target.reset()`.

Aquí está el componente `TaskList`:

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

Aquí, estamos recorriendo el parámetro `optimisticTask` para mostrar la tarea. Cuando `task.pending` es `true`, el texto `Adding Task...` se muestra junto a la tarea, confirmando que ha sido añadida con optimismo antes de que el servidor lo confirme.

Aquí está el componente `Task` que gestiona el estado para el formulario. Llama a la función `saveTask` desde la acción para que pueda agregar la tarea, y añade la nueva tarea una vez que es recibida por el servidor:

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

Esto asegura actualizaciones ágiles de la UI mostrando comentarios instantáneos en lugar de esperar una respuesta. Una vez que la tarea se guarda, se elimina la propiedad `pending` y la lista final de tareas se actualiza en consecuencia.

En la UI, hay dos cosas ocurriendo que no deberían suceder. Primero, no puedes ver el texto `Adding Task...` ya que aparece y desaparece demasiado rápido. A continuación, hay un error que ocurre después de agregar la tarea.

Hay dos cosas que necesitamos hacer para abordar esos problemas.

Primero, necesitamos importar `startTransition` de React y usarlo para envolver la línea `addOptimisticTask(formData.get('task'))`:

```js
startTransition(() => {
  addOptimisticTask(formData.get("task"));
});
```

Segundo, necesitamos hacer que el texto `Adding Task...` sea visible por algún tiempo antes de que desaparezca.

Para hacer esto, podemos modificar la función `addTask` con un estado de pendiente y simular un retraso de unos segundos antes de marcar la tarea como completada. `setTimeout()` es ideal para esto:

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

Y una vez que haces eso, todo funciona bien.

# --questions--

## --text--

¿Cuál es el propósito del hook `useOptimistic`?

## --answers--

Permite a los componentes obtener datos del servidor antes de renderizar la UI.

### --feedback--

Este hook asegura que la UI refleje los cambios esperados antes de que una operación asíncrona termine.

---

Ayuda a gestionar actualizaciones optimistas actualizando la UI inmediatamente mientras se espera una operación asíncrona, como una respuesta del servidor.

---

Permite el manejo de errores automático y retroceso para solicitudes API fallidas en aplicaciones React.

### --feedback--

This hook ensures the UI reflects expected changes before an async operation completes.

---

Optimiza las actualizaciones del estado agrupándolas juntas para mejorar el rendimiento.

### --feedback--

Este hook asegura que la UI refleje los cambios esperados antes de que una operación asíncrona termine.

## --video-solution--

2

## --text--

¿Cómo es el hook `useOptimistic` diferente de un estado de carga?

## --answers--

Un estado de carga muestra comentarios de la UI mientras se espera una respuesta, mientras que `useOptimistic` actualiza la UI inmediatamente según un resultado esperado.

---

Un estado de carga modifica los datos del servidor instantáneamente mientras `useOptimistic` solo actualiza la UI del cliente.

### --feedback--

Uno actualiza la UI antes de que el servidor siquiera conozca la solicitud.

---

El hook `useOptimistic` se utiliza para manejar errores, mientras que un estado de carga es solo para mostrar spinners.

### --feedback--

Uno actualiza la UI antes de que el servidor siquiera conozca la solicitud.

---

Ambos son lo mismo, pero `useOptimistic` proporciona reintentos automáticos para solicitudes fallidas.

### --feedback--

Uno actualiza la UI antes de que el servidor siquiera conozca la solicitud.

## --video-solution--

1

## --text--

¿Qué hace `addOptimistic` en la sintaxis del hook `useOptimistic` a continuación?

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

## --answers--

Aplica la actualización optimista antes de que el estado real cambie, proporcionando una experiencia de usuario más fluida.

---

Obtiene el estado real del servidor y actualiza la UI en consecuencia.

### --feedback--

Esta función actualiza la UI antes de que el estado real cambie.

---

Reemplaza el estado real con un estado temporal después de recibir la respuesta del servidor.

### --feedback--

Esta función actualiza la UI antes de que el estado real cambie.

---

Valida los datos del servidor antes de aplicar la actualización optimista a la UI.

### --feedback--

Esta función actualiza la UI antes de que el estado real cambie.

## --video-solution--

1
