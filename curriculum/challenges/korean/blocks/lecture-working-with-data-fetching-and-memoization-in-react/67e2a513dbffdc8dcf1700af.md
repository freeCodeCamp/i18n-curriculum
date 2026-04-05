---
id: 67e2a513dbffdc8dcf1700af
title: useOptimistic 훅이란 무엇이며 어떻게 작동하나요?
challengeType: 19
dashedName: what-is-the-useoptimistic-hook-and-how-does-it-work
---

# --description--

최근 React 버전에서는 서버 컴포넌트와 서버 액션을 도입하여 일부 렌더링과 로직 책임을 서버로 이전했습니다.

이와 함께 React는 비동기 작업이 백그라운드에서 완료될 때까지 UI가 반응형을 유지하도록 돕는 `useOptimistic`라는 새로운 훅을 추가했습니다.

이 훅은 주로 서버에서 데이터를 가져올 때 사용되지만, 그에 국한되지 않습니다. 비동기 작업을 처리할 때 UI가 부드럽고 인터랙티브하게 유지되도록 하는 데 일반적으로 유용합니다.

이제 `useOptimistic` 훅이 무엇인지, 그리고 어떻게 빠르고 반응형인 UI를 만드는 데 기여하는지 살펴보겠습니다.

`useOptimistic` 훅은 UI에서 "낙관적 업데이트"를 관리하는 데 도움을 줍니다. 이는 서버 응답을 기다리는 것과 같은 작업의 예상 결과를 기반으로 UI를 즉시 업데이트하는 전략입니다.

다음은 `useOptimistic` 훅의 기본 구문입니다:

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

- `optimisticState`는 더 나은 사용자 경험을 위해 즉시 업데이트되는 임시 상태입니다.

- `addOptimistic`는 실제 상태가 변경되기 전에 낙관적 업데이트를 적용하는 함수입니다.

- `actualState`는 서버에서 데이터를 가져오는 것과 같은 작업 결과로부터 오는 실제 상태 값입니다.

- `updateFunction`는 호출될 때 낙관적 상태가 어떻게 업데이트되어야 하는지 결정하는 함수입니다.

처음 보면 `useOptimistic` 훅이 React에서 로딩 상태를 처리하는 또 다른 방법처럼 보일 수 있습니다. 하지만 그것보다 더 많은 역할을 합니다.

로딩 상태는 백그라운드에서 무언가가 진행되는 동안 UI에 스피너, 메시지 또는 다른 표시기를 보여줄지 여부를 제어합니다.

그러나 `useOptimistic` 훅은 API 호출을 하기 전이라도 예상 결과를 기반으로 UI를 즉시 업데이트합니다. 이 훅은 로딩 표시기나 메시지를 보여주고, 잠재적 오류를 우아하게 처리하며, UI가 빠르게 느껴지도록 즉각적인 피드백을 제공할 기회를 줍니다.

`useOptimistic` 훅이 어떻게 작동하는지 보여주는 몇 가지 예제를 통해 이 점이 더 명확해질 것입니다.

다음은 작업을 서버에 저장하는 것을 시뮬레이션하는 액션입니다. 실제 API 요청처럼 1초 지연 후 작업을 반환합니다:

```js
export async function saveTask(task) {
  await new Promise((res) => setTimeout(res, 1000));

  return task;
}
```

다음은 `useOptimistic` 훅을 가져와 초기화하고, 입력을 액션에 보내는 `handleSubmit` 함수를 포함한 코드입니다:

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

코드에서 `useOptimistic` 훅은 새 작업을 추가할 때 즉시 업데이트되는 임시 작업 목록을 유지합니다.

`(state, newTask) => [...state, { text: newTask, pending: true }]` 줄은 서버가 폼에서 무언가를 확인하기 전에 새 작업이 대기 상태로 나타나도록 보장합니다.

폼이 제출되면 `handleSubmit` 함수가 작업을 추출하고 `addOptimisticTask` 매개변수로 "낙관적으로" 추가합니다. 그런 다음 `addTask`가 프로프로 전달되어 작업을 서버에 보냅니다. 마지막으로 `e.target.reset()`를 호출해 폼을 초기화합니다.

다음은 `TaskList` 컴포넌트입니다:

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

여기서는 `optimisticTask` 매개변수를 반복하여 작업을 표시합니다. `task.pending`가 `true`일 때, 작업 옆에 `Adding Task...` 텍스트가 표시되어 서버 확인 전에 작업이 낙관적으로 추가되었음을 확인합니다.

다음은 폼 상태를 관리하는 `Task` 컴포넌트입니다. 작업을 추가할 수 있도록 액션의 `saveTask` 함수를 호출하고, 서버에서 작업을 받으면 새 작업을 추가합니다:

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

이렇게 하면 응답을 기다리지 않고 즉각적인 피드백을 보여줘 UI 업데이트가 빠르게 느껴집니다. 작업이 저장되면 `pending` 속성이 제거되고 최종 작업 목록이 그에 맞게 업데이트됩니다.

UI에서는 두 가지 문제가 발생합니다. 첫째, `Adding Task...` 텍스트가 너무 빨리 나타났다가 사라져 볼 수 없습니다. 둘째, 작업을 추가한 후 오류가 발생합니다.

이 문제를 해결하려면 두 가지를 해야 합니다.

먼저, React에서 `startTransition`를 가져와 `addOptimisticTask(formData.get('task'))` 줄을 감싸야 합니다:

```js
startTransition(() => {
  addOptimisticTask(formData.get("task"));
});
```

둘째, `Adding Task...` 텍스트가 사라지기 전에 일정 시간 동안 보이도록 해야 합니다.

이를 위해 `addTask` 함수를 대기 상태로 수정하고 작업 완료 표시 전에 몇 초 지연을 시뮬레이션할 수 있습니다. `setTimeout()`가 이 목적에 적합합니다:

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

이렇게 하면 모든 것이 정상 작동합니다.

# --questions--

## --text--

`useOptimistic` 훅의 목적은 무엇인가요?

## --answers--

컴포넌트가 UI를 렌더링하기 전에 서버에서 데이터를 가져올 수 있게 합니다.

### --feedback--

이 훅은 비동기 작업이 완료되기 전에 UI가 예상 변경 사항을 반영하도록 보장합니다.

---

비동기 작업, 예를 들어 서버 응답을 기다리는 동안 UI를 즉시 업데이트하여 낙관적 업데이트를 관리하는 데 도움을 줍니다.

---

React 애플리케이션에서 실패한 API 요청에 대해 자동 오류 처리와 롤백을 가능하게 합니다.

### --feedback--

이 훅은 비동기 작업이 완료되기 전에 UI가 예상 변경 사항을 반영하도록 보장합니다.

---

성능 향상을 위해 상태 업데이트를 일괄 처리하여 최적화합니다.

### --feedback--

이 훅은 비동기 작업이 완료되기 전에 UI가 예상 변경 사항을 반영하도록 보장합니다.

## --video-solution--

2

## --text--

`useOptimistic` 훅은 로딩 상태와 어떻게 다른가요?

## --answers--

로딩 상태는 응답을 기다리는 동안 UI 피드백을 보여주지만, `useOptimistic`는 예상 결과를 기반으로 UI를 즉시 업데이트합니다.

---

로딩 상태는 서버 데이터를 즉시 수정하지만 `useOptimistic`는 클라이언트 UI만 업데이트합니다.

### --feedback--

하나는 서버가 요청을 알기도 전에 UI를 업데이트합니다.

---

`useOptimistic` 훅은 오류 처리를 위해 사용되고, 로딩 상태는 스피너 표시용입니다.

### --feedback--

하나는 서버가 요청을 알기도 전에 UI를 업데이트합니다.

---

둘 다 같지만 `useOptimistic`는 실패한 요청에 대해 자동 재시도를 제공합니다.

### --feedback--

하나는 서버가 요청을 알기도 전에 UI를 업데이트합니다.

## --video-solution--

1

## --text--

아래 `addOptimistic` 훅 구문에서 `useOptimistic`는 어떤 역할을 하나요?

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

## --answers--

실제 상태가 변경되기 전에 낙관적 업데이트를 적용하여 더 부드러운 사용자 경험을 제공합니다.

---

서버에서 실제 상태를 가져와 UI를 그에 맞게 업데이트합니다.

### --feedback--

이 함수는 실제 상태 변경 전에 UI를 업데이트합니다.

---

서버 응답을 받은 후 임시 상태를 실제 상태로 대체합니다.

### --feedback--

이 함수는 실제 상태 변경 전에 UI를 업데이트합니다.

---

낙관적 업데이트를 UI에 적용하기 전에 서버 데이터를 검증합니다.

### --feedback--

이 함수는 실제 상태 변경 전에 UI를 업데이트합니다.

## --video-solution--

1
