---
id: 67e2a513dbffdc8dcf1700af
title: ما هو الخطاف useOptimistic، وكيف يعمل؟
challengeType: 19
dashedName: what-is-the-useoptimistic-hook-and-how-does-it-work
---

# --description--

أصدرت إصدارات React الحديثة مكونات الخادم وإجراءات الخادم لنقل بعض مسؤوليات العرض والمنطق إلى الخادم.

مع هذه التحديثات، أضاف React خطافًا جديدًا يسمى `useOptimistic` للحفاظ على تجاوب واجهات المستخدم أثناء انتظار اكتمال إجراء غير متزامن في الخلفية.

غالبًا ما يُستخدم هذا لاسترجاع البيانات من الخادم، لكنه ليس مقصورًا على ذلك. الخطاف مفيد عمومًا للتعامل مع العمليات غير المتزامنة، مع ضمان بقاء واجهة المستخدم سلسة وتفاعلية أثناء تنفيذ الإجراء.

لنلق نظرة على ماهية الخطاف `useOptimistic` وكيف يساهم في جعل واجهات المستخدم سريعة الاستجابة ومتجاوبة.

يساعد الخطاف `useOptimistic` في إدارة "التحديثات المتفائلة" في واجهة المستخدم، وهي استراتيجية تقدم تحديثات فورية للواجهة بناءً على النتيجة المتوقعة لإجراء ما، مثل انتظار استجابة من الخادم.

إليك الصيغة الأساسية للخطاف `useOptimistic`:

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

- `optimisticState` هو الحالة المؤقتة التي تتحدث فورًا لتحسين تجربة المستخدم.

- `addOptimistic` هي الدالة التي تطبق التحديث المتفائل قبل تغير الحالة الفعلية.

- `actualState` هو القيمة الحقيقية للحالة التي تأتي من نتيجة إجراء، مثل استرجاع بيانات من الخادم.

- `updateFunction` هي الدالة التي تحدد كيف يجب تحديث الحالة المتفائلة عند استدعائها.

للوهلة الأولى، قد يبدو أن الخطاف `useOptimistic` مجرد طريقة أخرى للتعامل مع حالات التحميل في React. لكنه أكثر من ذلك.

حالة التحميل تتحكم فيما إذا كنت ترى مؤشر تحميل، رسالة، أو أي مؤشر آخر في واجهة المستخدم أثناء حدوث شيء في الخلفية.

مع ذلك، يقوم الخطاف `useOptimistic` بتحديث واجهة المستخدم فورًا بناءً على نتيجة متوقعة، حتى قبل أن تقوم، مثلاً، باستدعاء API. يمنحك هذا الخطاف فرصة لعرض مؤشر تحميل أو رسالة، والتعامل مع الأخطاء المحتملة بسلاسة، وعرض ردود فعل فورية لجعل الواجهة تبدو سريعة الاستجابة.

سيتضح هذا أكثر مع بعض الأمثلة التي توضح كيفية عمل الخطاف `useOptimistic`.

إليك إجراءً يحاكي حفظ مهمة على الخادم. يعيد المهمة بعد تأخير لمدة ثانية واحدة، كما قد يحدث مع طلب API حقيقي:

```js
export async function saveTask(task) {
  await new Promise((res) => setTimeout(res, 1000));

  return task;
}
```

إليك الشفرة التي تضبط الخطاف `useOptimistic` عن طريق استيراده وتهيئته، مع دالة `handleSubmit` التي ترسل مُدخَلًا إلى الإجراء:

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

في الشفرة، يحتفظ الخطاف `useOptimistic` بقائمة مؤقتة من المهام تتحدث فورًا عند إضافة مهمة جديدة.

السطر `(state, newTask) => [...state, { text: newTask, pending: true }]` يضمن ظهور مهمة جديدة بحالة معلقة حتى قبل أن يؤكد الخادم استلام شيء من النموذج.

عند إرسال النموذج، تستخرج دالة `handleSubmit` المهمة وتضيفها "بتفاؤل" باستخدام المعلمة `addOptimisticTask`. ثم تُمرر `addTask` كخاصية ترسل المهمة إلى الخادم. وأخيرًا، يُعاد تعيين النموذج باستدعاء `e.target.reset()`.

إليك مكوِّن `TaskList`:

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

هنا، نقوم بالتكرار عبر المعلمة `optimisticTask` لعرض المهمة. عندما تكون `task.pending` تساوي `true`، يُعرض النص `Adding Task...` بجانب المهمة، مؤكدًا أن المهمة أُضيفت بتفاؤل قبل تأكيد الخادم.

إليك مكوِّن `Task` الذي يدير الحالة للنموذج. يستدعي دالة `saveTask` من الإجراء ليتمكن من إضافة المهمة، ويلحق المهمة الجديدة بمجرد استلامها من الخادم:

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

يضمن هذا تحديثات واجهة مستخدم سريعة من خلال عرض ردود فعل فورية بدلًا من انتظار الاستجابة. بمجرد حفظ المهمة، تُزال خاصية `pending`، وتتحدث قائمة المهام النهائية وفقًا لذلك.

في واجهة المستخدم، هناك أمران يحدثان لا يجب أن يحدثا. أولًا، لا يمكنك رؤية نص `Adding Task...` لأنه يظهر ويختفي بسرعة كبيرة. ثانيًا، يحدث خطأ بعد إضافة المهمة.

هناك أمران نحتاج لفعلهما لمعالجة هذه المشكلات.

أولًا، نحتاج إلى استيراد `startTransition` من React واستخدامه لتغليف السطر `addOptimisticTask(formData.get('task'))`:

```js
startTransition(() => {
  addOptimisticTask(formData.get("task"));
});
```

ثانيًا، نحتاج لجعل نص `Adding Task...` مرئيًا لفترة من الوقت قبل أن يختفي.

للقيام بذلك، يمكننا تعديل دالة `addTask` بحالة معلقة ومحاكاة تأخير لبضع ثوانٍ قبل اعتبار المهمة مكتملة. `setTimeout()` مثالي لهذا:

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

وبمجرد فعل ذلك، يعمل كل شيء بشكل جيد.

# --questions--

## --text--

ما هو الغرض من الخطاف `useOptimistic`؟

## --answers--

يسمح للمكونات باسترجاع البيانات من الخادم قبل عرض واجهة المستخدم.

### --feedback--

يضمن هذا الخطاف أن تعكس واجهة المستخدم التغييرات المتوقعة قبل اكتمال العملية غير المتزامنة.

---

يساعد في إدارة التحديثات المتفائلة عن طريق تحديث واجهة المستخدم فورًا أثناء انتظار إجراء غير متزامن، مثل استجابة الخادم.

---

يمكنه التعامل التلقائي مع الأخطاء والتراجع عن الطلبات الفاشلة في تطبيقات React.

### --feedback--

يضمن هذا الخطاف أن تعكس واجهة المستخدم التغييرات المتوقعة قبل اكتمال العملية غير المتزامنة.

---

يحسن تحديثات الحالة عن طريق تجميعها معًا لتحسين الأداء.

### --feedback--

يضمن هذا الخطاف أن تعكس واجهة المستخدم التغييرات المتوقعة قبل اكتمال العملية غير المتزامنة.

## --video-solution--

2

## --text--

كيف يختلف الخطاف `useOptimistic` عن حالة التحميل؟

## --answers--

تعرض حالة التحميل ردود فعل في واجهة المستخدم أثناء انتظار الاستجابة، بينما يحدث الخطاف `useOptimistic` تحديثًا فوريًا للواجهة بناءً على نتيجة متوقعة.

---

تعدل حالة التحميل بيانات الخادم فورًا بينما يحدث الخطاف `useOptimistic` تحديثًا فقط لواجهة المستخدم على العميل.

### --feedback--

واحد يحدث تحديث الواجهة قبل أن يعرف الخادم حتى عن الطلب.

---

يُستخدم الخطاف `useOptimistic` للتعامل مع الأخطاء، بينما حالة التحميل فقط لعرض مؤشرات التحميل.

### --feedback--

واحد يحدث تحديث الواجهة قبل أن يعرف الخادم حتى عن الطلب.

---

كلاهما متشابهان، لكن الخطاف `useOptimistic` يوفر إعادة المحاولة التلقائية للطلبات الفاشلة.

### --feedback--

واحد يحدث تحديث الواجهة قبل أن يعرف الخادم حتى عن الطلب.

## --video-solution--

1

## --text--

ماذا يفعل `addOptimistic` في صيغة الخطاف `useOptimistic` أدناه؟

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

## --answers--

يطبق التحديث المتفائل قبل تغير الحالة الفعلية، مما يوفر تجربة مستخدم أكثر سلاسة.

---

يسترجع الحالة الحقيقية من الخادم ويحدث واجهة المستخدم وفقًا لذلك.

### --feedback--

تقوم هذه الدالة بتحديث واجهة المستخدم قبل تغير الحالة الفعلية.

---

يستبدل الحالة الفعلية بحالة مؤقتة بعد استلام استجابة الخادم.

### --feedback--

تقوم هذه الدالة بتحديث واجهة المستخدم قبل تغير الحالة الفعلية.

---

يتحقق من بيانات الخادم قبل تطبيق التحديث المتفائل على واجهة المستخدم.

### --feedback--

تقوم هذه الدالة بتحديث واجهة المستخدم قبل تغير الحالة الفعلية.

## --video-solution--

1
