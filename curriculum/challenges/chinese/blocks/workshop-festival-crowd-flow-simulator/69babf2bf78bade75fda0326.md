---
id: 69babf2bf78bade75fda0326
title: 第 6 步
challengeType: 1
dashedName: step-6
---

# --description--

接下来，你需要一种方法来跟踪在这一时刻门口处理了多少与会者。创建一个名为 `processed` 的变量，并将其初始化为 `0`。

# --hints--

你应该创建一个名为 `processed` 的变量，并赋值为 `0`。

```js
const rawFuncStr = __helpers.removeJSComments(processGateFlow.toString());
assert.match(
  rawFuncStr,
  /(var|const|let)\s+processed/,
  "You must have at least one space between the declaration keyword (let/const) and 'processed'."
);

const cleaned = __helpers.removeWhiteSpace(__helpers.removeJSComments(processGateFlow.toString()));
const solution = /(var|const|let)processed=0;?}$/;

assert(
  solution.test(cleaned),
  "Inside your `processGateFlow` function, create a variable named `processed` and initialize it to 0."
);
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
