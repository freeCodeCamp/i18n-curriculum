---
id: 67e2a513dbffdc8dcf1700af
title: O que é o hook useOptimistic e como ele funciona?
challengeType: 19
dashedName: what-is-the-useoptimistic-hook-and-how-does-it-work
---

# --description--

Versões recentes do React introduziram server components e server actions para transferir algumas das responsabilidades de renderização e lógica para o servidor.

Junto com essas atualizações, o React adicionou um novo hook chamado `useOptimistic` para manter as interfaces responsivas enquanto espera que uma ação assíncrona seja concluída em segundo plano.

Embora isso seja frequentemente usado para buscar dados de um servidor, não se limita a isso. O hook é geralmente útil para lidar com operações assíncronas, garantindo que a UI permaneça fluida e interativa enquanto a ação é executada.

Vamos dar uma olhada no que é o hook `useOptimistic` e como ele contribui para criar interfaces rápidas e responsivas. 

O hook `useOptimistic` ajuda a gerenciar "atualizações otimistas" na UI, uma estratégia na qual você fornece atualizações imediatas para a UI com base no resultado esperado de uma ação, como aguardar a resposta de um servidor.

Aqui está a sintaxe básica do hook `useOptimistic`:

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

- `optimisticState` é o estado temporário que é atualizado imediatamente para uma melhor experiência do usuário.

- `addOptimistic` é a função que aplica a atualização otimista antes das mudanças reais no estado.

- `actualState` é o valor real do estado que vem do resultado de uma ação, como buscar dados de um servidor.

- `updateFunction` é a função que determina como o estado otimista deve ser atualizado quando chamada.

À primeira vista, pode parecer que o hook `useOptimistic` é apenas mais uma forma de lidar com estados de carregamento no React. Mas é mais do que isso.

Um estado de carregamento controla se você vê um spinner, mensagem ou algum outro indicador na UI enquanto algo acontece em segundo plano. 

No entanto, o hook `useOptimistic` atualiza a UI instantaneamente com base em um resultado esperado, mesmo antes de você, por exemplo, fazer uma chamada para uma API. Este hook oferece a você a oportunidade de mostrar um indicador ou mensagem de carregamento, lidar com erros potenciais de forma elegante e mostrar um feedback instantâneo para tornar a interface do usuário mais ágil.

Isso ficará mais claro à medida que passarmos por alguns exemplos mostrando como o hook `useOptimistic` funciona.

Aqui está uma ação que simula salvar uma tarefa em um servidor. Ele retorna a tarefa após um atraso de 1 segundo, como poderia acontecer com uma requisição de API do mundo real:

```js
export async function saveTask(task) {
  await new Promise((res) => setTimeout(res, 1000));

  return task;
}
```

Aqui está o código que configura o hook `useOptimistic` importando e inicializando-o, com uma função `handleSubmit` que envia uma entrada para a action:

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

No código, o hook `useOptimistic` mantém uma lista temporária de tarefas que atualiza imediatamente quando você adiciona uma nova tarefa.

A linha `(state, newTask) => [...state, { text: newTask, pending: true }]` garante que uma nova tarefa apareça com status pendente mesmo antes do servidor confirmar que algo está vindo do formulário.

Quando o formulário é enviado, a função `handleSubmit` extrai a tarefa e a adiciona "otimisticamente" com o parâmetro `addOptimisticTask`. Então `addTask` é passado como uma prop que envia a tarefa para o servidor. Finalmente, o formulário é resetado chamando `e.target.reset()`.

Aqui está o componente `TaskList`:

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

Aqui, estamos percorrendo o parâmetro `optimisticTask` para exibir a tarefa. Quando `task.pending` é `true`, o texto `Adding Task...` é exibido ao lado da tarefa, confirmando que a tarefa foi adicionada de forma otimista antes do servidor confirmá-la.

Aqui está o componente `Task` que gerencia o estado do formulário. Ele chama a função `saveTask` da action para que ela possa adicionar a tarefa e anexa a nova tarefa assim que ela for recebida pelo servidor:

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

Isso garante atualizações rápidas da UI mostrando feedback instantâneo em vez de esperar por uma resposta. Uma vez que a tarefa é salva, a propriedade `pending` é removida e a lista final de tarefas é atualizada de acordo.

Na interface do usuário, estão acontecendo duas coisas que não deveriam acontecer. Primeiro, você não consegue ver o texto `Adding Task...` porque ele aparece e desaparece rápido demais. Em seguida, ocorre um erro após adicionar a tarefa.

Há duas coisas que precisamos fazer para resolver esses problemas.

Primeiro, precisamos importar `startTransition` do React e usá-lo para envolver a linha `addOptimisticTask(formData.get('task'))`:

```js
startTransition(() => {
  addOptimisticTask(formData.get("task"));
});
```

Em segundo lugar, precisamos tornar o texto `Adding Task...` visível por algum tempo antes de desaparecer.

Para fazer isso, podemos modificar a função `addTask` com um estado pendente e simular um atraso de alguns segundos antes de marcar a tarefa como concluída. `setTimeout()` é ideal para isso:

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

E uma vez que você fizer isso, tudo funciona bem.

# --questions--

## --text--

Qual é o propósito do hook `useOptimistic`?

## --answers--

Ele permite que os componentes busquem dados do servidor antes de renderizar a UI.

### --feedback--

Este hook garante que a UI reflita as mudanças esperadas antes que uma operação assíncrona seja concluída.

---

Ele ajuda a gerenciar atualizações otimistas atualizando a UI imediatamente enquanto espera por uma operação assíncrona, como uma resposta do servidor.

---

Ele permite o tratamento automático de erros e rollback para requisições de API falhadas em aplicações React.

### --feedback--

Este hook garante que a UI reflita as mudanças esperadas antes que uma operação assíncrona seja concluída.

---

Ele otimiza as atualizações de estado agrupando-as para melhorar o desempenho.

### --feedback--

Este hook garante que a UI reflita as mudanças esperadas antes que uma operação assíncrona seja concluída.

## --video-solution--

2

## --text--

Como o hook `useOptimistic` é diferente de um estado de carregamento?

## --answers--

Um estado de carregamento mostra feedback da interface enquanto espera por uma resposta, enquanto `useOptimistic` atualiza a interface imediatamente com base em um resultado esperado.

---

Um estado de carregamento modifica os dados do servidor instantaneamente enquanto `useOptimistic` apenas atualiza a interface do cliente.

### --feedback--

Um atualiza a UI antes mesmo do servidor saber sobre a requisição.

---

O hook `useOptimistic` é usado para lidar com erros, enquanto um estado de carregamento é apenas para mostrar spinners.

### --feedback--

Um atualiza a UI antes mesmo do servidor saber sobre a requisição.

---

Ambos são iguais, mas `useOptimistic` fornece tentativas automáticas para requisições falhadas.

### --feedback--

Um atualiza a UI antes mesmo do servidor saber sobre a requisição.

## --video-solution--

1

## --text--

O que `addOptimistic` faz na sintaxe do hook `useOptimistic` abaixo?

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

## --answers--

Ele aplica a atualização otimista antes das mudanças reais no estado, proporcionando uma experiência do usuário mais fluida.

---

Ele busca o estado real do servidor e atualiza a UI de acordo.

### --feedback--

Esta função atualiza a UI antes das mudanças reais de estado.

---

Ele substitui o estado atual por um estado temporário após receber uma resposta do servidor.

### --feedback--

Esta função atualiza a UI antes das mudanças reais de estado.

---

Ele valida os dados do servidor antes de aplicar a atualização otimista na UI.

### --feedback--

Esta função atualiza a UI antes das mudanças reais de estado.

## --video-solution--

1
