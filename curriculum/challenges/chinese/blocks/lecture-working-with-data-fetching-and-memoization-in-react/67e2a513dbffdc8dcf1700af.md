---
id: 67e2a513dbffdc8dcf1700af
title: 什么是 useOptimistic Hook，它是如何工作的？
challengeType: 19
dashedName: what-is-the-useoptimistic-hook-and-how-does-it-work
---

# --description--

React 的最新版本引入了服务器组件和服务器操作，将部分渲染和逻辑职责转移到服务器。

随着这些更新，React 添加了一个名为 `useOptimistic` 的新钩子，以在等待异步操作在后台完成时保持 UI 响应。

虽然这通常用于从服务器获取数据，但不限于此。该钩子通常用于处理异步操作，确保在操作运行时界面保持流畅和交互性。

让我们来看看 `useOptimistic` 钩子是什么，以及它如何帮助实现快速响应的用户界面。 

`useOptimistic` 钩子有助于管理 UI 中的“乐观更新”，这是一种策略，你基于操作的预期结果（例如等待服务器响应）立即向 UI 提供更新。

这是 `useOptimistic` 钩子的基本语法：

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

- `optimisticState` 是一种临时状态，会立即更新以提供更好的用户体验。

- `addOptimistic` 是在实际状态更改之前应用乐观更新的函数。

- `actualState` 是来自某个操作结果的真实状态值，比如从服务器获取数据。

- `updateFunction` 是确定在调用时乐观状态应如何更新的函数。

乍一看，`useOptimistic` 钩子似乎只是处理 React 中装载状态的另一种方式。但它不仅仅是这样。

加载状态控件决定在后台发生某些操作时，你是否在界面中看到旋转图标、消息或其他指示器。 

然而，`useOptimistic` 钩子会基于预期结果即时更新 UI，即使你还没有，比如，进行对 API 的调用。该钩子让你有机会显示加载指示器或消息，优雅地处理潜在误差，并显示即时反馈，使 UI 感觉更流畅。

随着我们通过一些示例展示 `useOptimistic` 钩子的工作原理，这将变得更加清晰。

这是一个模拟将任务保存到服务器的操作。它在 1 秒延迟后返回任务，就像真实的 API 请求可能发生的那样：

```js
export async function saveTask(task) {
  await new Promise((res) => setTimeout(res, 1000));

  return task;
}
```

这是通过导入和初始化 `useOptimistic` 钩子来设置它的代码，其中包含一个将输入发送到操作的 `handleSubmit` 函数：

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

在代码中，`useOptimistic` 钩子保持一个临时的任务列表，当你添加新建任务时会立即更新。

该行 `(state, newTask) => [...state, { text: newTask, pending: true }]` 确保新建的任务即使在服务器确认来自 `form` 的内容之前，也会以挂起状态出现。

当表单提交时，`handleSubmit` 函数提取任务并使用 `addOptimisticTask` 参数“乐观地”添加它。然后将 `addTask` 作为属性传递，该属性将任务发送到服务器。最后，通过调用 `e.target.reset()` 重置表单。

这是 `TaskList` 组件：

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

这里，我们正在循环 `optimisticTask` 参数以显示任务。当 `task.pending` 为 `true` 时，任务旁边会显示文本 `Adding Task...`，确认任务已在服务器确认之前乐观地添加。

这是管理表单状态的 `Task` 组件。它调用来自 action 的 `saveTask` 函数，以便添加任务，并在服务器接收新任务后追加该任务：

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

这通过显示即时反馈而不是等待响应，确保了快速的 UI 更新。一旦任务被储存，`pending` 属性将被移除，最终的任务列表将相应更新。

在 UI 中，有两件不应该发生的事情。首先，你看不到 `Adding Task...` 文本，因为它出现和消失得太快。接下来，添加任务后出现了误差。

我们需要做两件事来解决这些问题。

首先，我们需要从 React 导入 `startTransition` 并使用它来包裹这一行 `addOptimisticTask(formData.get('task'))`：

```js
startTransition(() => {
  addOptimisticTask(formData.get("task"));
});
```

其次，我们需要让 `Adding Task...` 文本在消失前可见一段时间。

为此，我们可以修改 `addTask` 函数，添加一个挂起状态，并模拟几秒钟的延迟，然后将任务标记为完成。`setTimeout()` 非常适合这个用途：

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

一旦你那样做了，一切就正常工作了。

# --questions--

## --text--

`useOptimistic` 钩子的目的是什么？

## --answers--

它允许组件在渲染 UI 之前从服务器获取数据。

### --feedback--

此钩子确保 UI 在异步 `operation` 完成之前反映预期的更改。

---

它通过在等待异步 `operation`（例如 `server` `Response`）时立即更新 UI 来帮助管理乐观更新。

---

它为 React 应用中的失败 API 请求启用自动误差处理和回滚。

### --feedback--

此钩子确保 UI 在异步 `operation` 完成之前反映预期的更改。

---

它通过将状态更新批处理在一起来优化性能。

### --feedback--

此钩子确保 UI 在异步 `operation` 完成之前反映预期的更改。

## --video-solution--

2

## --text--

`useOptimistic` 钩子与装载状态有何不同？

## --answers--

加载状态在等待响应时显示界面反馈，而 `useOptimistic` 则基于预期结果立即更新界面。

---

装载状态会立即修改服务器数据，而 `useOptimistic` 仅更新客户 UI。

### --feedback--

有一个在服务器甚至知道该请求之前就更新了 UI。

---

`useOptimistic` 钩子用于处理误差，而装载状态仅用于显示加载动画。

### --feedback--

有一个在服务器甚至知道该请求之前就更新了 UI。

---

两者相同，但 `useOptimistic` 为失败的请求提供自动重试。

### --feedback--

有一个在服务器甚至知道该请求之前就更新了 UI。

## --video-solution--

1

## --text--

在下面的 `useOptimistic` 钩子语法中，`addOptimistic` 有什么作用？

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

## --answers--

它在实际状态更改之前应用乐观更新，提供更流畅的用户体验。

---

它从服务器获取真实状态并相应地更新 UI。

### --feedback--

此函数在实际状态更改之前更新 UI。

---

它在收到服务器响应后，用临时状态替换实际状态。

### --feedback--

此函数在实际状态更改之前更新 UI。

---

它在将乐观更新应用到 UI 之前验证服务器数据。

### --feedback--

此函数在实际状态更改之前更新 UI。

## --video-solution--

1
