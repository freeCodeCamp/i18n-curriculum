---
id: 67d2f4ddb4a4306fdf5bbaee
title: 什么是记忆化，以及 `useMemo` 钩子如何工作？
challengeType: 19
dashedName: what-is-memoization-and-how-does-the-usememo-hook-work
---

# --description--

随着你的 React 应用变得更大，不必要的重新渲染和昂贵的计算会降低性能，导致界面更新缓慢和资源使用增加。

这在具有复杂状态管理、大型列表、需要大量计算的函数以及许多具有单一父组件的组件的应用中尤其成问题。

这就产生了通过最小化冗余 `computation` 并确保更流畅的交互来优化你的 React 应用以获得更好 `performance` 的需求。

React 通过一种称为 memoization 的进程解决了这个问题，这是一种缓存值和函数以防止不必要重新计算的技术，因此你的应用可以更快且响应更灵敏。

根据定义，记忆化是一种优化技术，其中基于特定参数缓存（记住）昂贵函数调用的结果。当再次提供相同参数时，将返回缓存的结果，而不是重新计算函数。

记忆化进程按以下方式进行：

- 保存函数调用的结果及其输入参数。

- 在执行函数之前，查看当前参数的结果是否已存在于缓存中。

- 如果存在，则返回缓存的结果，而不是再次运行计算。

- 如果它不存在，计算结果，将其保存到缓存中，然后返回它。

为了提升开发者在记忆化方面的体验，React 提供了三种工具——`React.memo`（或 `memo`）、`useMemo` 和 `useCallback`。 

正如你可能猜到的，`useMemo` 和 `useCallback` 都是钩子，但 `React.memo` 是一个组件包装器，是一个高阶组件（HOC）。

在下一课中，我们将了解 `useCallback` 钩子和 `React.memo` 的工作原理。

`useMemo` 让你缓存计算值，而 `useCallback` 则对函数引用执行相同操作。

如果你想知道计算值和函数引用是什么，计算值是指执行函数的结果，而函数引用是指向函数的指针——内存中的函数对象。

让我们先看看如何使用 `useMemo` 钩子。以下是 `useMemo` 钩子的基本语法：

```js
const memoizedValue = useMemo(
  function () {
    return computeExpensiveValue(a, b);
  },
  [a, b]
);
```

你可以看到所需的只是将 `useMemo` 钩子包裹在函数周围。

这个 `ExpensiveSquare` 组件将接收一个 `num` 属性，它将用来计算平方：

```jsx
function ExpensiveSquare({ num }) {
  function calculateSquare(n) {
    console.log("Calculating square...");
    return n * n;
  }

  const squared = calculateSquare(num);
  return (
    <p>
      Square of {num}: {squared}
    </p>
  );
}
export default ExpensiveSquare;
```

这是使用了 `ExpensiveSquare` 的 `App` 组件：

```jsx
import { useState, useEffect } from "react";
import ExpensiveSquare from "./components/ExpensiveSquare";

function App() {
 const [timer, setTimer] = useState(0);
 const [num, setNum] = useState(0);

 useEffect(() => {
   const interval = setInterval(() => setTimer((c) => c + 1), 1000);
   return () => clearInterval(interval);
 }, []);

 return (
   <div>
     <h1>Timer: {timer} seconds gone</h1>
     <ExpensiveSquare num={num} />
     <button onClick={() => setNum((n) => n + 1)}>Increase Number</button>
   </div>
 );
}

export default App;
```

`useEffect` 中每秒运行一次的 `timer` 会使 `calculateSquare` 函数在每次运行时执行，即使你没有增加 `num` 状态变量。

为了解决这个问题，我们可以通过将函数调用包裹在 `useMemo` 钩子中并指定 `num` 变量作为依赖来实现：

```jsx
// import the useMemo hook
import { useMemo } from "react";

function ExpensiveSquare({ num }) {
  function calculateSquare(n) {
    console.log("Calculating square...");
    return n * n;
  }

  // const squared = calculateSquare(num);
  // Wrap the function call in useMemo instead
  const squared = useMemo(() => calculateSquare(num), [num]);

  return (
    <p>
      Square of {num}: {squared}
    </p>
  );
}

export default ExpensiveSquare;
```

这将确保函数通过缓存结果实现记忆化，因此只有当 `num` 变量发生变化时才会进行计算，而不是当它所在的组件中的任何内容发生变化时。

`calculateSquare` 函数调用不再在每次 `timer` 变化时运行，而只在初始渲染和 `num` 变化时运行。

# --questions--

## --text--

什么是 React 中的记忆化？

## --answers--

一种缓存值和函数以防止不必要重新计算的技术。

---

一种让你管理组件状态更新以防止不必要重新计算的技术。

### --feedback--

它通过存储先前计算的结果来帮助优化性能。

---

将虚拟 DOM 与实际 DOM 对齐的进程。

### --feedback--

它通过存储先前计算的结果来帮助优化性能。

---

在函数组件中处理副作用的一种方法。

### --feedback--

它通过存储先前计算的结果来帮助优化性能。

## --video-solution--

1

## --text--

计算值和函数引用之间有什么区别？

## --answers--

计算值是函数对象，而函数引用是执行结果。

### --feedback--

一个是函数的输出，另一个只是指向它的指针。

---

计算值是执行函数的结果，而函数引用是内存中的函数对象。

---

计算值和函数引用是同一件事。

### --feedback--

一个是函数的输出，另一个只是指向它的指针。

---

函数引用保存计算值。

### --feedback--

一个是函数的输出，另一个只是指向它的指针。

## --video-solution--

2

## --text--

以下哪项不是 React 提供的用于记忆化的工具？

## --answers--

`React.memo`

### --feedback--

记忆化工具专注于缓存值和函数，而这个选项处理副作用。

---

`useMemo`

### --feedback--

记忆化工具专注于缓存值和函数，而这个选项处理副作用。

---

`useCallback`

### --feedback--

记忆化工具专注于缓存值和函数，而这个选项处理副作用。

---

`useEffect`

## --video-solution--

4
