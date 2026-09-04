---
id: 69babf2bf78bade75fda0326
title: الخطوة 6
challengeType: 1
dashedName: step-6
---

# --description--

بعد ذلك، تحتاج إلى طريقة لتتبع عدد الحضور الذين يعالجهم البوابة خلال الـ tick. أنشئ متغيرًا باسم `processed` وعيّنه إلى القيمة `0`.

# --hints--

يجب إنشاء متغير باسم `processed` وتعيين القيمة `0` له.

```js
const explorer = await __helpers.Explorer(code);
const { processGateFlow } = explorer.allFunctions;
const { processed } = processGateFlow?.variables ?? {};
assert.isTrue(processed?.value.matches("0"));
```

# --seed--

## --seed-contents--

```js
const morningGates = [
  { id: "North", capacity: 5, queue: [3, 6, 2, 4] },
  { id: "East", capacity: 3, queue: [2, 4, 3, 5] },
  { id: "South", capacity: 4, queue: [1, 2, 3, 1] },
  { id: "West", capacity: 2, queue: [4, 1, 2, 3] },
];

const nightGates = [
  { id: "North", capacity: 4, queue: [6, 2, 5, 1] },
  { id: "East", capacity: 2, queue: [3, 3, 4, 2] },
  { id: "South", capacity: 5, queue: [2, 1, 2, 3] },
  { id: "West", capacity: 3, queue: [5, 2, 1, 4] },
];

function initializeThroughput(gates) {
  const summary = {};
  for (const gate of gates) {
    summary[gate.id] = 0;
  };
  return summary;
}

function processGateFlow(gate, tickIndex) {
  let currentTickQueue = gate.queue[tickIndex];
--fcc-editable-region--
  
--fcc-editable-region--
}
```
