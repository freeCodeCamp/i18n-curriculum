---
id: 67e2a513dbffdc8dcf1700af
title: Що таке хук useOptimistic і як він працює?
challengeType: 19
dashedName: what-is-the-useoptimistic-hook-and-how-does-it-work
---

# --description--

Останні версії React представили серверні компоненти та серверні дії, щоб перенести частину відповідальності за відтворення та логіку на сервер.

Разом із цими оновленнями React додав новий хук під назвою `useOptimistic`, який допомагає зберігати адаптивність інтерфейсів користувача, поки асинхронна дія виконується у фоновому режимі.

Хоча цей хук часто використовується для отримання даних із сервера, його застосування не обмежується цим. Він загалом корисний для обробки асинхронних операцій, забезпечуючи плавність і взаємодію інтерфейсу під час виконання дії.

Давайте розглянемо, що таке хук `useOptimistic` і як він допомагає створювати швидкі та адаптивні інтерфейси.

Хук `useOptimistic` допомагає керувати «оптимістичними оновленнями» в інтерфейсі — стратегією, за якою ви одразу оновлюєте інтерфейс, виходячи з очікуваного результату дії, наприклад, очікуючи відповідь від сервера.

Ось базовий синтаксис хука `useOptimistic`:

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

- `optimisticState` — це тимчасовий стан, який оновлюється одразу для кращого користувацького досвіду.

- `addOptimistic` — функція, що застосовує оптимістичне оновлення перед фактичними змінами стану.

- `actualState` — реальне значення стану, яке надходить у результаті дії, наприклад, отримання даних із сервера.

- `updateFunction` — функція, яка визначає, як має оновлюватися оптимістичний стан при виклику.

На перший погляд може здатися, що хук `useOptimistic` — це просто ще один спосіб обробляти стани завантаження в React. Але це не так.

Стан завантаження контролює, чи бачите ви індикатор завантаження, повідомлення або інший сигнал у інтерфейсі, поки щось відбувається у фоновому режимі.

Однак хук `useOptimistic` оновлює інтерфейс миттєво, виходячи з очікуваного результату, навіть до того, як ви, наприклад, зробите виклик до API. Цей хук дає змогу показати індикатор завантаження або повідомлення, обробити потенційні помилки плавно і надати миттєвий зворотний зв’язок, щоб інтерфейс здавався швидким.

Це стане зрозумілішим, коли ми розглянемо кілька прикладів роботи хука `useOptimistic`.

Ось дія, яка імітує збереження завдання на сервері. Вона повертає завдання після затримки в 1 секунду, як це могло б бути у реальному запиті до API:

```js
export async function saveTask(task) {
  await new Promise((res) => setTimeout(res, 1000));

  return task;
}
```

Ось код, який налаштовує хук `useOptimistic` шляхом імпорту та ініціалізації, з функцією `handleSubmit`, що надсилає вхідні дані до дії:

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

У коді хук `useOptimistic` зберігає тимчасовий список завдань, який оновлюється одразу, коли ви додаєте нове завдання.

Рядок `(state, newTask) => [...state, { text: newTask, pending: true }]` гарантує, що нове завдання з’являється зі статусом «очікується» ще до того, як сервер підтвердить отримання даних із форми.

Коли форму відправляють, функція `handleSubmit` витягує завдання і додає його «оптимістично» з параметром `addOptimisticTask`. Потім `addTask` передається як проп, який надсилає завдання на сервер. Нарешті, форму скидають викликом `e.target.reset()`.

Ось компонент `TaskList`:

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

Тут ми перебираємо параметр `optimisticTask`, щоб відобразити завдання. Коли `task.pending` дорівнює `true`, поруч із завданням відображається текст `Adding Task...`, що підтверджує додавання завдання оптимістично до підтвердження сервера.

Ось компонент `Task`, який керує станом форми. Він викликає функцію `saveTask` із дії, щоб додати завдання, і додає нове завдання, коли його отримує сервер:

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

Це забезпечує швидкі оновлення інтерфейсу, показуючи миттєвий зворотний зв’язок замість очікування відповіді. Коли завдання збережено, властивість `pending` видаляється, і фінальний список завдань оновлюється відповідно.

В інтерфейсі відбуваються дві речі, які не повинні відбуватися. По-перше, ви не бачите текст `Adding Task...`, бо він з’являється і зникає надто швидко. По-друге, після додавання завдання виникає помилка.

Щоб вирішити ці проблеми, потрібно зробити дві речі.

По-перше, імпортуйте `startTransition` з React і використайте його, щоб обгорнути рядок `addOptimisticTask(formData.get('task'))`:

```js
startTransition(() => {
  addOptimisticTask(formData.get("task"));
});
```

По-друге, потрібно зробити текст `Adding Task...` видимим деякий час перед тим, як він зникне.

Для цього можна змінити функцію `addTask`, додавши стан очікування і симулюючи затримку в кілька секунд перед позначенням завдання як виконаного. Для цього ідеально підходить `setTimeout()`:

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

І після цього все працює добре.

# --questions--

## --text--

Яка мета хука `useOptimistic`?

## --answers--

Він дозволяє компонентам отримувати дані з сервера перед відтворенням інтерфейсу.

### --feedback--

Цей хук забезпечує відображення очікуваних змін у інтерфейсі до завершення асинхронної операції.

---

Він допомагає керувати оптимістичними оновленнями, миттєво оновлюючи інтерфейс під час очікування асинхронної операції, наприклад відповіді сервера.

---

Він автоматично обробляє помилки та відкат у разі невдалих запитів API в React-застосунках.

### --feedback--

Цей хук забезпечує відображення очікуваних змін у інтерфейсі до завершення асинхронної операції.

---

Він оптимізує оновлення стану, групуючи їх разом для підвищення продуктивності.

### --feedback--

Цей хук забезпечує відображення очікуваних змін у інтерфейсі до завершення асинхронної операції.

## --video-solution--

2

## --text--

Чим хук `useOptimistic` відрізняється від стану завантаження?

## --answers--

Стан завантаження показує зворотний зв’язок у інтерфейсі під час очікування відповіді, тоді як `useOptimistic` миттєво оновлює інтерфейс на основі очікуваного результату.

---

Стан завантаження миттєво змінює дані на сервері, а `useOptimistic` оновлює лише інтерфейс клієнта.

### --feedback--

Один оновлює інтерфейс ще до того, як сервер дізнається про запит.

---

Хук `useOptimistic` використовується для обробки помилок, а стан завантаження — лише для показу індикаторів.

### --feedback--

Один оновлює інтерфейс ще до того, як сервер дізнається про запит.

---

Обидва однакові, але `useOptimistic` забезпечує автоматичні повторні спроби для невдалих запитів.

### --feedback--

Один оновлює інтерфейс ще до того, як сервер дізнається про запит.

## --video-solution--

1

## --text--

Що робить `addOptimistic` у синтаксисі хука `useOptimistic` нижче?

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

## --answers--

Вона застосовує оптимістичне оновлення перед фактичними змінами стану, забезпечуючи плавніший користувацький досвід.

---

Вона отримує реальний стан із сервера і відповідно оновлює інтерфейс.

### --feedback--

Ця функція оновлює інтерфейс перед фактичними змінами стану.

---

Вона замінює фактичний стан тимчасовим після отримання відповіді від сервера.

### --feedback--

Ця функція оновлює інтерфейс перед фактичними змінами стану.

---

Вона перевіряє дані сервера перед застосуванням оптимістичного оновлення в інтерфейсі.

### --feedback--

Ця функція оновлює інтерфейс перед фактичними змінами стану.

## --video-solution--

1
