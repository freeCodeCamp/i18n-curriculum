---
id: 67d1ad82cff954a854bcbcaa
title: 什么是 Prop Drilling？
challengeType: 19
dashedName: what-is-prop-drilling
---

# --description--

Prop drilling 是 React 应用中状态管理的最基本方法。它看起来很简单，但很快就会变得混乱，而且非常难以扩展。

让我们来看一下什么是 prop drilling，为什么它是一个问题，以及随着应用增长，一个好的替代方案。

Prop drilling 是将 props 从父组件传递到深层嵌套子组件的过程，即使某些子组件不需要这些 props。

例如，假设你有三个名为 `Parent`、`Child` 和 `Grandchild` 的组件。如果你想在 `Grandchild` 组件中使用一些数据，但这些数据在 `Parent` 组件中，你需要先将数据从 `Parent` 传递到 `Child` 组件，然后再从 `Child` 传递到 `Grandchild` 组件。

或者如果数据在链条上更靠上，数据可能也必须传递给 `Parent` 组件。

这里，我想显示的数据是字串 `Hello, Prop Drilling!`。它被赋值给根 `App` 组件中的 `greeting` 变量：

```jsx
import "./App.css";
import Parent from "./Parent";

function App() {
  const greeting = "Hello, Prop Drilling!";

  return <Parent greeting={greeting} />;
}

export default App;
```

你可以看到 `Parent` 组件也在接收 `greeting` 变量作为 `greeting` 属性的值。这里 `Parent` 组件将其作为另一个 `greeting` 属性的值传递给 `Child` 组件：

```jsx
import Child from "./Child";

const Parent = ({ greeting }) => {
  return <Child greeting={greeting} />;
};

export default Parent;
```

这是将其传递给 `Grandchild` 组件的 `Child` 组件：

```jsx
import Grandchild from "./Grandchild";

const Child = ({ greeting }) => {
  return <Grandchild greeting={greeting} />;
};

export default Child;
```

最后，`Grandchild` 组件接收问候语并将其用作 `h1` 元素的内容：

```jsx
const Grandchild = ({ greeting }) => {
  return <h1>{greeting}</h1>;
};

export default Grandchild;
```

在浏览器中，你会看到一个页面，其中有一个带有文本 `Hello, Prop Drilling!` 的单个 `h1` 元素。

起初，prop drilling 可能看起来没那么严重。但随着你的应用增长，它变得更难理解、调试和维护。

如果你需要传递 props，尽量将它们全部保存在单个父组件中。这种集中所有必要数据的方法称为“single source of truth”。

例如，假设你想为你的 `greeting` 添加一个新的 `response`，并且你想在 `Grandchild` 组件中同时使用它们。由于 `greeting` 已经在 `App` 组件中， 将 `response` 也放在那里是合理的，然后将它们一起传递下去：

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

在浏览器中，你会看到一个页面，其中有一个 `h1` 元素，其文本为 `Hello, Prop Drilling!`，还有一个 `h2` 元素，其文本为 `I'm not here to play!`。

为了避免 prop drilling，特别是在大型、复杂的应用中，考虑使用 Context API 或状态管理库，如 Redux 和 Redux Toolkit、Zustand、Recoil 以及其他。

你将在接下来的课程中了解更多关于这些内容。

# --questions--

## --text--

一个 prop 如何从父组件传递到孙组件？

## --answers--

通过在孙组件内定义 prop。

### --feedback--

该属性必须先经过子组件，然后才能到达孙组件。

---

通过从父组件传递到子组件，再从子组件传递到孙组件。

---

通过使用 `useEffect` hook 动态获取 prop。

### --feedback--

该属性必须先经过子组件，然后才能到达孙组件。

---

通过在孙组件中使用 `useState` 钩子。

### --feedback--

该属性必须先经过子组件，然后才能到达孙组件。

## --video-solution--

2

## --text--

什么是 React 中的 prop drilling？

## --answers--

仅将 props 直接传递给需要它们的组件。

### --feedback--

当 props 被不必要地通过多个层级传递时会发生这种情况。

---

使用上下文在组件之间共享状态。

### --feedback--

当 props 被不必要地通过多个层级传递时会发生这种情况。

---

从父组件向深度嵌套的子组件传递 props。

---

使用 hooks 深入了解组件状态。

### --feedback--

当 props 被不必要地通过多个层级传递时会发生这种情况。

## --video-solution--

3

## --text--

为什么在较大的 `application` 中，`prop drilling` 被认为是一个问题？

## --answers--

它使管理状态更容易。

### --feedback--

通过多个组件传递过多的 props 会使代码变得混乱。

---

它通过减少重新渲染来提升性能。

### --feedback--

通过多个组件传递过多的 props 会使代码变得混乱。

---

这会使 `code` 更难以读取、调试和维护。

---

它消除了对状态管理库的需求。

### --feedback--

通过多个组件传递过多的 props 会使代码变得混乱。

## --video-solution--

3
