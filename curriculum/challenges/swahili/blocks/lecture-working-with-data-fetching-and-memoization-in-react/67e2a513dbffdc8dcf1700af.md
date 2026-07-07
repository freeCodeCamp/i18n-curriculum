---
id: 67e2a513dbffdc8dcf1700af
title: "Ni Nini useOptimistic Hook, na Inafanya Kazi Gani?"
challengeType: 19
dashedName: what-is-the-useoptimistic-hook-and-how-does-it-work
---

# --description--

Toleo za hivi karibuni za React zilianzisha sehemu za seva na vitendo vya seva ili kuhamisha baadhi ya majukumu ya kuonyesha na mantiki kwa seva.

Pamoja na masasisho hayo, React iliongeza hook mpya iitwayo `useOptimistic` ili kuweka UI zikiwa zinajibadilisha kulingana na kifaa wakati zinaposubiri kitendo cha async kukamilika nyuma ya pazia.

Ingawa mara nyingi hutumika kwa kupata data kutoka seva, haizuiliki kwa hilo tu. Hook hii kwa ujumla ni muhimu kwa kushughulikia operesheni za async, kuhakikisha UI inabaki laini na ya kuingiliana wakati kitendo kinaendelea.

Tuchunguze ni nini hook ya `useOptimistic` na jinsi inavyosaidia kutengeneza UI zenye mwendo mzuri na zinazojibadilisha kulingana na kifaa.

Hook ya `useOptimistic` husaidia kusimamia "sasisho za matumaini" katika UI, mbinu ambayo unatoa sasisho za papo hapo kwa UI kulingana na matokeo yanayotarajiwa ya kitendo, kama vile kusubiri jibu kutoka seva.

Hapa kuna sintaksia ya msingi ya hook ya `useOptimistic`:

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

- `optimisticState` ni hali ya muda ambayo husasishwa mara moja kwa ajili ya uzoefu bora wa mtumiaji.

- `addOptimistic` ni kitendakazi kinachotekeleza sasisho la matumaini kabla ya hali halisi kubadilika.

- `actualState` ni thamani halisi ya hali inayotokana na matokeo ya kitendo, kama vile kupata data kutoka seva.

- `updateFunction` ni kitendakazi kinachoamua jinsi hali ya matumaini inavyopaswa kusasishwa inapoitwa.

Kwa mtazamo wa kwanza, inaweza kuonekana kama hook ya `useOptimistic` ni njia nyingine tu ya kushughulikia hali za upakiaji katika React. Lakini ni zaidi ya hapo.

Hali ya upakiaji hudhibiti kama utaona spinner, ujumbe, au kiashiria kingine katika UI wakati jambo linaendelea nyuma ya pazia.

Hata hivyo, hook ya `useOptimistic` husasisha UI mara moja kulingana na matokeo yanayotarajiwa, hata kabla hujafanya wito kwa API. Hook hii inakupa nafasi ya kuonyesha kiashiria cha upakiaji au ujumbe, kushughulikia makosa yanayoweza kutokea kwa upole, na kuonyesha mrejesho wa papo hapo ili kufanya UI ihisi kuwa na mwendo mzuri.

Hii itakuwa wazi zaidi tunapopita kwenye mifano inayonyesha jinsi hook ya `useOptimistic` inavyofanya kazi.

Hapa kuna kitendo kinachofanana na kuhifadhi zoezi kwa seva. Kinarejesha zoezi baada ya kuchelewa kwa sekunde 1, kama inavyoweza kutokea kwa ombi halisi la API:

```js
export async function saveTask(task) {
  await new Promise((res) => setTimeout(res, 1000));

  return task;
}
```

Hapa ni msimbo unaoweka hook ya `useOptimistic` kwa kuleta na kuanzisha, pamoja na kitendakazi cha `handleSubmit` kinachotuma ingizo kwa kitendo:

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

Katika msimbo, hook ya `useOptimistic` inahifadhi orodha ya muda ya mazoezi ambayo husasishwa mara moja unapoongeza zoezi jipya.

Mstari wa `(state, newTask) => [...state, { text: newTask, pending: true }]` unahakikisha kuwa zoezi jipya linaonekana na hali ya kusubiri hata kabla seva kuthibitisha kitu kinatoka kwenye fomu.

Wakati fomu inawasilishwa, kitendakazi cha `handleSubmit` huchukua zoezi na kuiongeza "kwa matumaini" kwa kigezo cha `addOptimisticTask`. Kisha `addTask` hupitishwa kama sifa inayotuma zoezi kwa seva. Mwisho, fomu inafutwa kwa kuita `e.target.reset()`.

Hapa kuna sehemu ya `TaskList`:

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

Hapa, tunapitia kigezo cha `optimisticTask` kuonyesha zoezi. Wakati `task.pending` ni `true`, maandishi ya `Adding Task...` yanaonyeshwa kando ya zoezi, kuthibitisha kuwa zoezi limeongezwa kwa matumaini kabla seva kuthibitisha.

Hapa kuna sehemu ya `Task` inayosimamia hali ya fomu. Inaita kitendakazi cha `saveTask` kutoka kwa kitendo ili iweze kuongeza zoezi, na kuambatisha zoezi jipya mara linapopokelewa na seva:

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

Hii inahakikisha sasisho za UI zenye mwendo mzuri kwa kuonyesha mrejesho wa papo hapo badala ya kusubiri jibu. Mara zoezi linapohifadhiwa, sifa ya `pending` huondolewa, na orodha ya mwisho ya mazoezi husasishwa ipasavyo.

Katika UI, kuna mambo mawili yanayotokea ambayo hayapaswi kutokea. Kwanza, huwezi kuona maandishi ya `Adding Task...` kwa sababu yanaonekana na kutoweka haraka sana. Pili, kuna kosa linalotokea baada ya kuongeza zoezi.

Kuna mambo mawili tunayohitaji kufanya ili kushughulikia matatizo hayo.

Kwanza, tunahitaji kuleta `startTransition` kutoka React na kuitumia kufunika mstari wa `addOptimisticTask(formData.get('task'))`:

```js
startTransition(() => {
  addOptimisticTask(formData.get("task"));
});
```

Pili, tunahitaji kufanya maandishi ya `Adding Task...` yaonekane kwa muda kabla hayatoweke.

Ili kufanya hivyo, tunaweza kubadilisha kitendakazi cha `addTask` kwa hali ya kusubiri na kuiga kuchelewa kwa sekunde chache kabla ya kuashiria zoezi limekamilika. `setTimeout()` ni chaguo bora kwa hili:

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

Na mara unafanya hivyo, kila kitu kinafanya kazi vizuri.

# --questions--

## --text--

Lengo la hook ya `useOptimistic` ni nini?

## --answers--

Inaruhusu sehemu kupata data kutoka seva kabla ya kuonyesha UI.

### --feedback--

Hook hii inahakikisha UI inaonyesha mabadiliko yanayotarajiwa kabla ya operesheni ya async kukamilika.

---

Inasaidia kusimamia sasisho za matumaini kwa kusasisha UI mara moja wakati inasubiri operesheni ya async, kama jibu la seva.

---

Inaruhusu kushughulikia makosa moja kwa moja na kurejesha hali kwa maombi ya API yaliyoshindwa katika programu za React.

### --feedback--

Hook hii inahakikisha UI inaonyesha mabadiliko yanayotarajiwa kabla ya operesheni ya async kukamilika.

---

Inaboresha sasisho za hali kwa kuzichanganya pamoja ili kuboresha utendaji.

### --feedback--

Hook hii inahakikisha UI inaonyesha mabadiliko yanayotarajiwa kabla ya operesheni ya async kukamilika.

## --video-solution--

2

## --text--

Je, hook ya `useOptimistic` inatofautianaje na hali ya upakiaji?

## --answers--

Hali ya upakiaji inaonyesha mrejesho wa UI wakati inasubiri jibu, wakati `useOptimistic` husasisha UI mara moja kulingana na matokeo yanayotarajiwa.

---

Hali ya upakiaji hubadilisha data ya seva mara moja wakati `useOptimistic` husasisha UI ya mteja tu.

### --feedback--

Moja husasisha UI kabla seva hata hajajua kuhusu ombi.

---

Hook ya `useOptimistic` hutumika kushughulikia makosa, wakati hali ya upakiaji ni kwa kuonyesha spinner tu.

### --feedback--

Moja husasisha UI kabla seva hata hajajua kuhusu ombi.

---

Zote ni sawa, lakini `useOptimistic` hutoa jaribio la moja kwa moja kwa maombi yaliyoshindwa.

### --feedback--

Moja husasisha UI kabla seva hata hajajua kuhusu ombi.

## --video-solution--

1

## --text--

`addOptimistic` hufanya nini katika sintaksia ya hook ya `useOptimistic` hapa chini?

```js
const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);
```

## --answers--

Inatekeleza sasisho la matumaini kabla hali halisi kubadilika, ikitoa uzoefu laini wa mtumiaji.

---

Inapata hali halisi kutoka seva na kusasisha UI ipasavyo.

### --feedback--

Kitendakazi hiki husasisha UI kabla hali halisi kubadilika.

---

Inabadilisha hali halisi na hali ya muda baada ya kupokea jibu kutoka seva.

### --feedback--

Kitendakazi hiki husasisha UI kabla hali halisi kubadilika.

---

Inathibitisha data ya seva kabla ya kutekeleza sasisho la matumaini kwa UI.

### --feedback--

Kitendakazi hiki husasisha UI kabla hali halisi kubadilika.

## --video-solution--

1
