---
id: 67e2a513dbffdc8dcf1700af
title: 什麼是 useOptimistic 掛鉤，以及它如何運作？
challengeType: 19
dashedName: what-is-the-useoptimistic-hook-and-how-does-it-work
---

# --description--

React 的近期版本介紹了伺服端組件和伺服端動作，以將部分算繪和邏輯責任轉移到伺服端。

隨著這些更新，React 新增了一個名為 `useOptimistic` 的掛鉤，以在等待非同步動作在背景完成時保持使用者介面回應迅速。

雖然這通常用於從伺服器獲取資料，但並不限於此。這個掛鉤通常對處理非同步操作行為很有用，確保在操作執行時使用者介面保持流暢且可互動。

讓我們來看看什麼是 `useOptimistic` 掛鉤，以及它如何幫助打造快速且反應靈敏的使用者介面。 

`useOptimistic` 掛鉤有助於管理 UI 中的「樂觀更新」，這是一種策略，讓你根據動作的預期結果（例如等待伺服端回應）立即更新 UI。

以下是 `useOptimistic` 掛鉤的基本語法：

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

- `optimisticState` 是立即更新的暫時狀態，以提供更好的使用者體驗。

- `addOptimistic` 是在實際狀態變更之前套用樂觀更新的函式（程式）。

- `actualState` 是來自動作結果的真實狀態值，例如從伺服器擷取資料。

- `updateFunction` 是決定在被呼叫時樂觀狀態應如何更新的函式（程式）。

乍看之下，`useOptimistic` 掛鉤似乎只是 React 中處理載入狀態的另一種方式。但它不僅如此。

載入狀態控制你是否在背景發生某些事情時，在使用者介面中看到旋轉指示器、訊息或其他指示器。 

然而，`useOptimistic` 掛鉤會根據預期結果即時更新 UI，即使在你，例如，進行 API 呼叫之前。這個掛鉤讓你有機會顯示載入指示器或訊息、優雅地控制代碼潛在錯誤，並顯示即時回授，使 UI 感覺更流暢。

隨著我們透過一些範例展示 `useOptimistic` 掛鉤的運作方式，這將變得更加清楚。

這是一個模擬將任務儲存到伺服器的動作。它會在 1 秒延遲後傳回該任務，就像真實世界的 API 請求可能發生的情況一樣：

```js
export async function saveTask(task) {
  await new Promise((res) => setTimeout(res, 1000));

  return task;
}
```

這是透過匯入並初始化 `useOptimistic` 掛鉤來設定的程式碼，並包含一個將輸入傳送到動作的 `handleSubmit` 函式。

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

在程式碼中，`useOptimistic` 掛鉤會保留一個臨時任務列表，當你添加新任務時會立即更新。

這行 `(state, newTask) => [...state, { text: newTask, pending: true }]` 確保新任務即使在伺端確認來自表單的內容之前，也會以待處理狀態出現。

當表單提交時，`handleSubmit` 函式（程式）會擷取任務並使用 `addOptimisticTask` 參數「樂觀地」添加它。然後將 `addTask` 作為屬性傳遞，該屬性會將任務傳送到伺服器。最後，透過呼叫 `e.target.reset()` 重設表單。

這是 `TaskList` 組件：

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

在這裡，我們正在迴圈處理 `optimisticTask` 參數以顯示任務。當 `task.pending` 為 `true` 時，會在任務旁顯示文字 `Adding Task...`，以確認任務在伺服端確認之前已樂觀地被添加。

這是管理表單狀態的 `Task` 組件。它會呼叫 action 中的 `saveTask` 函式（程式），以便為你的任務添加任務，並在伺服端接收到新任務後將其附加：

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

這確保了快速的使用者介面更新，透過顯示即時回授而非等待回應。任務一旦存檔，`pending` 屬性即會被移除，最終的任務列表也會相應更新。

在使用者介面中，有兩件不應該發生的事情。首先，你看不到 `Adding Task...` 文字，因為它出現又消失得太快。接著，新增任務後發生了錯誤。

我們需要做兩件事來解決那些問題。

首先，我們需要從 React 匯入 `startTransition`，並使用它來包裹這行 `addOptimisticTask(formData.get('task'))`：

```js
startTransition(() => {
  addOptimisticTask(formData.get("task"));
});
```

其次，我們需要讓 `Adding Task...` 文字在消失前可見一段時間。

為此，我們可以修改 `addTask` 函式（程式），加入待處理狀態，並模擬幾秒鐘的延遲後再將任務標記為完成。`setTimeout()` 非常適合用於此：

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

一旦你這麼做，所有東西就能正常運作。

# --questions--

## --text--

`useOptimistic` 掛鉤的目的為何？

## --answers--

它允許組件在呈現使用者介面之前，從伺服器擷取資料。

### --feedback--

此掛鉤確保 UI 在非同步操作完成前反映預期的變更。

---

它有助於管理樂觀更新，透過在等待非同步操作（例如伺服器回應）時立即更新 UI。

---

它啟用 React 應用程式中失敗的 API 請求的自動錯誤處理和回滾。

### --feedback--

此掛鉤確保 UI 在非同步操作完成前反映預期的變更。

---

它透過將狀態更新批次處理在一起來最佳化效率。

### --feedback--

此掛鉤確保 UI 在非同步操作完成前反映預期的變更。

## --video-solution--

2

## --text--

`useOptimistic` 掛鉤與載入狀態有何不同？

## --answers--

載入狀態會在等待回應時顯示 UI 回授，而 `useOptimistic` 則會根據預期結果立即更新 UI。

---

載入狀態會立即修改伺服器資料，而 `useOptimistic` 則只會更新客戶端 UI。

### --feedback--

有一種是在伺服端甚至還不知道請求時就先更新 UI。

---

`useOptimistic` 掛鉤用於處理錯誤，而載入狀態僅用於顯示旋轉指示器。

### --feedback--

有一種是在伺服端甚至還不知道請求時就先更新 UI。

---

兩者相同，但 `useOptimistic` 提供失敗請求的自動重試。

### --feedback--

有一種是在伺服端甚至還不知道請求時就先更新 UI。

## --video-solution--

1

## --text--

在下面的 `useOptimistic` 掛鉤語法中，`addOptimistic` 的作用是什麼？

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

## --answers--

它在實際狀態變更之前套用樂觀更新，提供更順暢的使用者體驗。

---

它從伺服端擷取真實狀態並相應更新 UI。

### --feedback--

此函式（程式）會在實際狀態變更之前更新 UI。

---

在收到伺服端回應後，它會用暫時狀態取代實際狀態。

### --feedback--

此函式（程式）會在實際狀態變更之前更新 UI。

---

它會在將樂觀更新套用到 UI 之前驗證伺端資料。

### --feedback--

此函式（程式）會在實際狀態變更之前更新 UI。

## --video-solution--

1
