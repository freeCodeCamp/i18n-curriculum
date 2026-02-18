---
id: 67d1ad82cff954a854bcbcaa
title: 什麼是 Prop Drilling？
challengeType: 19
dashedName: what-is-prop-drilling
---

# --description--

Prop drilling 是 React 應用程式中最基本的狀態管理方法。它看起來很簡單，但很快就會變得混亂，且非常難以擴展。

讓我們來看看什麼是 prop drilling、為什麼它會是個問題，以及隨著應用程式成長時一個好的取代方案。

Prop drilling 是將 props 從父組件傳遞到深層巢狀子組件的處理程序，即使某些子組件不需要這些 props。

例如，假設你有三個名為 `Parent`、`Child` 和 `Grandchild` 的組件。如果你想在 `Grandchild` 組件中使用一些資料，但這些資料在 `Parent` 組件中，你需要先將它從 `Parent` 傳遞到 `Child` 組件，再從 `Child` 傳遞到 `Grandchild` 組件。

或者如果資料位於串鏈更上層，資料可能也必須傳遞給 `Parent` 組件。

這裡，我想顯示的資料是字串 `Hello, Prop Drilling!`。它被指定到根組件 `App` 中的 `greeting` 變數：

```jsx
import "./App.css";
import Parent from "./Parent";

function App() {
  const greeting = "Hello, Prop Drilling!";

  return <Parent greeting={greeting} />;
}

export default App;
```

你可以看到 `Parent` 組件也正在接收 `greeting` 變數作為 `greeting` prop 的值。這裡是 `Parent` 組件將它作為另一個 `greeting` prop 的值傳遞給 `Child` 組件：

```jsx
import Child from "./Child";

const Parent = ({ greeting }) => {
  return <Child greeting={greeting} />;
};

export default Parent;
```

這是將它傳遞給 `Grandchild` 組件的 `Child` 組件：

```jsx
import Grandchild from "./Grandchild";

const Child = ({ greeting }) => {
  return <Grandchild greeting={greeting} />;
};

export default Child;
```

最後，`Grandchild` 組件接收問候語並將其用作 `h1` 元素的內容：

```jsx
const Grandchild = ({ greeting }) => {
  return <h1>{greeting}</h1>;
};

export default Grandchild;
```

在瀏覽器中，你會看到一個頁面，該頁面有一個單一的 `h1` 元素，其文字為 `Hello, Prop Drilling!`。

一開始，prop drilling 可能看起來不是什麼大問題。但隨著你的應用程式成長，它會變得更難理解、偵錯和維護。

如果你需要傳遞 props，請嘗試將它們全部保存在單一的父組件中。這種將所有必要資料集中管理的方法稱為「單一資料來源」。

例如，假設你想為你的 `greeting` 添加一個新的 `response`，並且你想在 `Grandchild` 組件中同時使用它們。由於 `greeting` 已經在 `App` 組件中，因此將 `response` 也放在那裡並將它們一起傳遞下串鏈是合理的：

```jsx
function App() {
  const greeting = "Hello, Prop Drilling!";
  const response = "I'm not here to play!";

  return <Parent greeting={greeting} response={response} />;
}

const Parent = ({ greeting, response }) => {
  return <Child greeting={greeting} response={response} />;
};

const Child = ({ greeting, response }) => {
  return <Grandchild greeting={greeting} response={response} />;
};

const Grandchild = ({ greeting, response }) => {
  return (
    <>
      <h1>{greeting}</h1>
      <h2>{response}</h2>
    </>
  );
};

export default App;
```

在瀏覽器中，你會看到一個頁面，該頁面有一個 `h1` 元素，其文字為 `Hello, Prop Drilling!`，以及一個 `h2` 元素，其文字為 `I'm not here to play!`。

為避免 prop drilling，特別是在大型且複雜的應用程式中，請考慮使用 Context API 或像 Redux 和 Redux Toolkit、Zustand、Recoil 等狀態管理函式庫。

你將在接下來的課程中學到更多關於這些的內容。

# --questions--

## --text--

屬性如何從父組件傳遞到孫組件？

## --answers--

透過在孫組件內定義 prop。

### --feedback--

該 prop 必須先經過子元件，然後才能到達孫元件。

---

透過從父元件傳遞到子元件，再從子元件傳遞到孫元件。

---

透過使用 `useEffect` 掛鉤動態取得 prop。

### --feedback--

該 prop 必須先通過子元件，然後才能到達孫元件。

---

透過在孫元件中使用 `useState` 掛鉤。

### --feedback--

該 prop 必須先通過子元件，然後才能到達孫元件。

## --video-solution--

2

## --text--

什麼是 React 中的 prop drilling？

## --answers--

只將 props 直接傳遞給需要它們的組件。

### --feedback--

當 `props` 不必要地透過多個層次傳遞時，就會發生這種情況。

---

使用背景關係在組件之間共享狀態。

### --feedback--

當 `props` 不必要地透過多個層次傳遞時，就會發生這種情況。

---

從父組件傳遞 props 到深層巢狀子組件。

---

使用掛鉤深入探查組件狀態。

### --feedback--

當 `props` 不必要地透過多個層次傳遞時，就會發生這種情況。

## --video-solution--

3

## --text--

為什麼在較大型的應用程式中，prop drilling 被視為一個問題？

## --answers--

它讓管理狀態變得更容易。

### --feedback--

透過多個組件傳遞過多的 props 會使程式碼變得混亂。

---

它透過減少重新呈現來提升效率。

### --feedback--

透過多個組件傳遞過多的 props 會使程式碼變得混亂。

---

這會讓程式碼更難閱讀、偵錯和維護。

---

它消除了對狀態管理庫的需求。

### --feedback--

透過多個組件傳遞過多的 props 會使程式碼變得混亂。

## --video-solution--

3
