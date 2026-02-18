---
id: 67d2f4ddb4a4306fdf5bbaee
title: 什麼是記憶化，以及 `useMemo` 掛鉤如何運作？
challengeType: 19
dashedName: what-is-memoization-and-how-does-the-usememo-hook-work
---

# --description--

隨著你的 React 應用程式變得越來越大，不必要的重新呈現和昂貴的計算可能會降低效率、性能，導致使用者介面更新緩慢和資源使用增加。

這在具有複雜狀態管理、大型列表、需要大量計算的函式（程式）以及許多具有單一父組件的組件的應用程式中特別成問題。

這產生了為你的 React 應用程式最佳化效率、性能的需求，透過最小化冗餘計算並確保更順暢的互動。

React 使用一種稱為記憶化的處理程序來解決這個問題，這種技術會將值和函式快取起來，以防止不必要的重新計算，讓你的應用程式更快且更具回應性。

根據定義，記憶化是一種優化技術，透過根據特定引數快取（記住）昂貴函式呼叫的結果。當再次提供相同引數時，會傳回快取的結果，而非重新計算函式。

備忘錄化的處理程序以此方式進行：

- 將函式呼叫的結果與其輸入引數一起儲存。

- 在執行函式（程式）之前，檢查目前引數的結果是否已存在於快取中。

- 如果存在，傳回快取結果，而不是再次執行計算。

- 如果不存在，計算結果，將其儲存在快取中，然後傳回。

為了提升開發者使用快取記憶的體驗，React 提供了三種工具－`React.memo`（或 `memo`）、`useMemo` 和 `useCallback`。 

正如你可能猜到的，`useMemo` 和 `useCallback` 都是掛鉤，但 `React.memo` 是組件外覆，一種高階組件（HOC）。

在下一課中，我們將探討 `useCallback` 掛鉤和 `React.memo` 如何運作。

`useMemo` 讓你記憶計算後的值，而 `useCallback` 則對函式（程式）引用做相同的事。

如果你想知道什麼是計算值和函式引用，計算值是指執行函式後的結果，而函式引用是指向函式的指標－記憶體中的函式物件。

讓我們先看看如何使用 `useMemo` 掛鉤。以下是 `useMemo` 掛鉤的基本語法：

```js
const memoizedValue = useMemo(
  function () {
    return computeExpensiveValue(a, b);
  },
  [a, b]
);
```

你可以看到所需的全部就是將 `useMemo` 掛鉤包裹在函式周圍。

這個 `ExpensiveSquare` 組件將接收一個 `num` prop，並使用它來計算平方：

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

這是使用 `ExpensiveSquare` 的 `App` 組件：

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

`useEffect` 中每秒執行一次的 `timer`，會讓 `calculateSquare` 函式在每次執行時都執行，即使你沒有增加 `num` 狀態變數。

為了解決這個問題，我們可以使用 `useMemo` 掛鉤，將函式呼叫包裹在其中，並指定 `num` 變數作為相依性：

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

這將確保函式（程式）透過快取結果來進行記憶化，因此只有當 `num` 變數改變時才會進行計算，而不是當它被使用的組件中任何東西改變時。

`calculateSquare` 函式的呼叫不會在 `timer` 變更時執行，只會在初始呈現和 `num` 變更時執行。

# --questions--

## --text--

React 中的記憶化是什麼？

## --answers--

一種快取值和函式以防止不必要重新計算的技術。

---

一種讓你管理組件狀態更新以防止不必要重新計算的技術。

### --feedback--

它透過儲存先前計算的結果來幫助最佳化效率。

---

將虛擬 DOM 與實際 DOM 對應的處理程序。

### --feedback--

它透過儲存先前計算的結果來幫助最佳化效率。

---

在函式（程式）組件中控制副作用的一種方式。

### --feedback--

它透過儲存先前計算的結果來幫助最佳化效率。

## --video-solution--

1

## --text--

計算值與函式引用之間有什麼差異？

## --answers--

計算值是函式物件，而函式引用是執行結果。

### --feedback--

一個是函式的輸出，另一個只是指向它的指標。

---

計算值是執行函式後的結果，而函式引用是記憶體中的函式物件。

---

計算值和函式引用是相同的東西。

### --feedback--

一個是函式的輸出，另一個只是指向它的指標。

---

函式引用儲存計算後的值。

### --feedback--

一個是函式的輸出，另一個只是指向它的指標。

## --video-solution--

2

## --text--

以下哪一項不是 React 提供用於記憶化的工具？

## --answers--

`React.memo`

### --feedback--

記憶化工具專注於快取值和函式，而這個選項可控制副作用。

---

`useMemo`

### --feedback--

記憶化工具專注於快取值和函式，而這個選項可控制副作用。

---

`useCallback`

### --feedback--

記憶化工具專注於快取值和函式，而這個選項可控制副作用。

---

`useEffect`

## --video-solution--

4
