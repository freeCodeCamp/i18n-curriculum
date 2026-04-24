---
id: 67e2a513dbffdc8dcf1700af
title: useOptimistic フックとは何か、そしてどのように機能するのか？
challengeType: 19
dashedName: what-is-the-useoptimistic-hook-and-how-does-it-work
---

# --description--

最近の React のバージョンでは、サーバーコンポーネントやサーバーアクションが導入され、レンダリングやロジックの一部をサーバー側に移す仕組みが加わりました。

これらのアップデートとともに、React は `useOptimistic` という新しいフックを追加しました。これは、非同期アクションがバックグラウンドで完了するのを待つ間も UI をレスポンシブに保つためのものです。

このフックはサーバーからのデータ取得に使われることが多いですが、それに限定されません。非同期処理を扱う際に一般的に役立ち、アクションが実行されている間も UI がスムーズでインタラクティブなままでいられるようにします。

では、`useOptimistic` フックとは何か、そしてどのように素早くレスポンシブな UI を実現するのに役立つのかを見ていきましょう。

`useOptimistic` フックは UI の「楽観的更新」を管理するのに役立ちます。これは、サーバーからのレスポンスを待つようなアクションの予想結果に基づいて、即座に UI を更新する戦略です。

`useOptimistic` フックの基本的な構文は以下の通りです：

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

- `optimisticState` は、より良いユーザー体験のためにすぐに更新される一時的な状態です。

- `addOptimistic` は、実際の状態が変わる前に楽観的更新を適用する関数です。

- `actualState` は、サーバーからのデータ取得などのアクション結果に基づく本当の状態の値です。

- `updateFunction` は、呼び出されたときに楽観的状態をどのように更新するかを決める関数です。

一見すると、`useOptimistic` フックは React のローディング状態を扱う別の方法のように思えるかもしれません。しかし、それ以上のものです。

ローディング状態は、バックグラウンドで何かが起きている間にスピナーやメッセージなどのインジケーターを UI に表示するかどうかを制御します。

しかし、`useOptimistic` フックは、例えば API を呼び出す前であっても、予想される結果に基づいて UI を即座に更新します。このフックは、ローディングインジケーターやメッセージを表示したり、潜在的なエラーを優雅に処理したり、即時のフィードバックを示して UI を素早く感じさせる機会を与えます。

`useOptimistic` フックの動作を示すいくつかの例を通して、これがより明確になるでしょう。

以下は、タスクをサーバーに保存する動作をシミュレートしたものです。実際の API リクエストのように 1 秒の遅延の後にタスクを返します：

```js
export async function saveTask(task) {
  await new Promise((res) => setTimeout(res, 1000));

  return task;
}
```

次に、`useOptimistic` フックをインポートして初期化し、入力をアクションに送る `handleSubmit` 関数を設定したコードです：

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

このコードでは、`useOptimistic` フックが新しいタスクを追加したときに即座に更新される一時的なタスクリストを保持しています。

`(state, newTask) => [...state, { text: newTask, pending: true }]` の行は、サーバーがフォームから何かを受け取る前に、新しいタスクが保留中の状態で表示されることを保証しています。

フォームが提出されると、`handleSubmit` 関数がタスクを抽出し、`addOptimisticTask` パラメータで「楽観的に」追加します。次に `addTask` がプロップとして渡され、タスクをサーバーに送信します。最後に `e.target.reset()` を呼び出してフォームをリセットします。

こちらが `TaskList` コンポーネントです：

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

ここでは、`optimisticTask` パラメータをループしてタスクを表示しています。`task.pending` が `true` の場合、タスクの横に `Adding Task...` というテキストが表示され、サーバーの確認前に楽観的にタスクが追加されたことを示しています。

次に、フォームの状態を管理する `Task` コンポーネントです。アクションの `saveTask` 関数を呼び出してタスクを追加し、サーバーから受け取った新しいタスクを追加します：

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

これにより、レスポンスを待つ代わりに即時のフィードバックを表示して素早い UI 更新が保証されます。タスクが保存されると、`pending` プロパティは削除され、最終的なタスクリストが更新されます。

UI では、起きてはいけないことが二つ起きています。まず、`Adding Task...` テキストが表示されるとすぐに消えてしまい見えません。次に、タスク追加後にエラーが発生しています。

これらの問題に対処するために二つのことを行う必要があります。

まず、React から `startTransition` をインポートし、`addOptimisticTask(formData.get('task'))` の行をこれでラップします：

```js
startTransition(() => {
  addOptimisticTask(formData.get("task"));
});
```

次に、`Adding Task...` テキストが消える前にしばらく表示されるようにします。

これには、保留中の状態を持つように `addTask` 関数を修正し、タスクを完了済みにマークする前に数秒の遅延をシミュレートします。`setTimeout()` がこれに最適です：

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

これを行うと、すべてが正常に動作します。

# --questions--

## --text--

`useOptimistic` フックの目的は何ですか？

## --answers--

コンポーネントが UI をレンダリングする前にサーバーからデータを取得できるようにします。

### --feedback--

このフックは、非同期処理が完了する前に UI が期待される変化を反映することを保証します。

---

非同期処理（例えばサーバーからのレスポンス）を待つ間に UI を即座に更新することで、楽観的更新を管理するのに役立ちます。

---

React アプリケーションで失敗した API リクエストの自動エラー処理とロールバックを可能にします。

### --feedback--

このフックは、非同期処理が完了する前に UI が期待される変化を反映することを保証します。

---

パフォーマンス向上のために状態更新をまとめて最適化します。

### --feedback--

このフックは、非同期処理が完了する前に UI が期待される変化を反映することを保証します。

## --video-solution--

2

## --text--

`useOptimistic` フックはローディング状態とどのように異なりますか？

## --answers--

ローディング状態はレスポンスを待つ間に UI フィードバックを表示しますが、`useOptimistic` は予想される結果に基づいて即座に UI を更新します。

---

ローディング状態はサーバーデータを即座に変更しますが、`useOptimistic` はクライアントの UI のみを更新します。

### --feedback--

一方はサーバーがリクエストを認識する前に UI を更新します。

---

`useOptimistic` フックはエラー処理に使われ、ローディング状態はスピナー表示だけに使われます。

### --feedback--

一方はサーバーがリクエストを認識する前に UI を更新します。

---

両者は同じですが、`useOptimistic` は失敗したリクエストの自動再試行を提供します。

### --feedback--

一方はサーバーがリクエストを認識する前に UI を更新します。

## --video-solution--

1

## --text--

以下の `addOptimistic` フック構文で `useOptimistic` は何をしますか？

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

## --answers--

実際の状態が変わる前に楽観的更新を適用し、よりスムーズなユーザー体験を提供します。

---

サーバーから本当の状態を取得し、それに応じて UI を更新します。

### --feedback--

この関数は実際の状態が変わる前に UI を更新します。

---

サーバーのレスポンスを受け取った後に一時的な状態を実際の状態に置き換えます。

### --feedback--

この関数は実際の状態が変わる前に UI を更新します。

---

楽観的更新を UI に適用する前にサーバーデータを検証します。

### --feedback--

この関数は実際の状態が変わる前に UI を更新します。

## --video-solution--

1
