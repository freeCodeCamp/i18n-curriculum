---
id: 69babf2bf78bade75fda0326
title: 第 6 步
challengeType: 1
dashedName: step-6
---

# --description--

接下來，你需要一個方法來追蹤在這個時刻門口處理了多少參加者。創建一個名為 `processed` 的變數，並將它初始化為 `0`。

# --hints--

你應該創建一個名為 `processed` 的變數，並指定它的值為 `0`。

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
