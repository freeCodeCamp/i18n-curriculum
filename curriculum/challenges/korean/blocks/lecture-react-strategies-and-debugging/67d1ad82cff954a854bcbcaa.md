---
id: 67d1ad82cff954a854bcbcaa
title: 프로프 드릴링이란 무엇인가요?
challengeType: 19
dashedName: what-is-prop-drilling
---

# --description--

프로프 드릴링은 React 애플리케이션에서 상태 관리를 하는 가장 기본적인 방법입니다. 간단해 보이지만 금방 복잡해지고 확장하기 매우 어렵습니다.

프로프 드릴링이 무엇인지, 왜 문제가 되는지, 그리고 애플리케이션이 커질 때 좋은 대체 방법이 무엇인지 살펴보겠습니다.

프로프 드릴링은 부모 컴포넌트에서 깊게 중첩된 자식 컴포넌트로 프로프를 전달하는 과정입니다. 이때 일부 자식 컴포넌트는 그 프로프가 필요하지 않아도 전달됩니다.

예를 들어, `Parent`, `Child`, `Grandchild`라는 세 개의 컴포넌트가 있다고 가정해 보겠습니다. `Grandchild` 컴포넌트에서 어떤 데이터를 사용하고 싶은데 그 데이터가 `Parent` 컴포넌트에 있다면, `Parent`에서 `Child` 컴포넌트로, 그리고 `Child`에서 `Grandchild` 컴포넌트로 데이터를 전달해야 합니다.

또는 데이터가 더 상위에 있다면, `Parent` 컴포넌트에도 데이터를 전달해야 할 수 있습니다.

여기서 제가 표시하고 싶은 데이터는 문자열 `Hello, Prop Drilling!`입니다. 이 문자열은 루트 `greeting` 컴포넌트의 `App` 변수에 할당되어 있습니다:

```jsx
import "./App.css";
import Parent from "./Parent";

function App() {
  const greeting = "Hello, Prop Drilling!";

  return <Parent greeting={greeting} />;
}

export default App;
```

`Parent` 컴포넌트가 `greeting` 변수를 `greeting` 프로프의 값으로 받고 있는 것도 볼 수 있습니다. `Parent` 컴포넌트가 `Child` 컴포넌트에 또 다른 `greeting` 프로프의 값으로 전달하는 모습입니다 `Child`:

```jsx
import Child from "./Child";

const Parent = ({ greeting }) => {
  return <Child greeting={greeting} />;
};

export default Parent;
```

그리고 `Child` 컴포넌트가 `Grandchild` 컴포넌트에 전달하는 모습입니다:

```jsx
import Grandchild from "./Grandchild";

const Child = ({ greeting }) => {
  return <Grandchild greeting={greeting} />;
};

export default Child;
```

마지막으로 `Grandchild` 컴포넌트가 인사를 받아 `h1` 요소의 내용으로 사용합니다:

```jsx
const Grandchild = ({ greeting }) => {
  return <h1>{greeting}</h1>;
};

export default Grandchild;
```

브라우저에서는 `h1` 요소 하나에 `Hello, Prop Drilling!` 텍스트가 있는 페이지가 보일 것입니다.

처음에는 프로프 드릴링이 그렇게 큰 문제처럼 보이지 않을 수 있습니다. 하지만 애플리케이션이 커질수록 이해하고 디버그하며 유지보수하기가 점점 어려워집니다.

프로프를 전달해야 한다면, 가능한 한 모두 한 부모 컴포넌트에 모아 두세요. 이렇게 필요한 모든 데이터를 중앙 집중화하는 방식을 "단일 진실의 출처"라고 합니다.

예를 들어, `response`와 함께 사용할 새로운 `greeting`을 추가하고 싶고, 둘 다 `Grandchild` 컴포넌트에서 사용하고 싶다고 가정해 보겠습니다. `greeting`가 이미 `App` 컴포넌트에 있으니 `response`도 거기에 두고 둘 다 하위 컴포넌트로 전달하는 것이 합리적입니다:

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

브라우저에서는 `h1` 요소에 `Hello, Prop Drilling!` 텍스트가, `h2` 요소에 `I'm not here to play!` 텍스트가 있는 페이지가 보일 것입니다.

특히 크고 복잡한 애플리케이션에서는 프로프 드릴링을 피하려면 Context API나 Redux, Redux Toolkit, Zustand, Recoil 같은 상태 관리 라이브러리를 사용하는 것을 고려하세요.

이 내용들은 앞으로 수업에서 더 자세히 배우게 됩니다.

# --questions--

## --text--

부모 컴포넌트에서 손자 컴포넌트로 프로프가 어떻게 전달되나요?

## --answers--

손자 컴포넌트 내부에 프로프를 정의함으로써.

### --feedback--

프로프는 손자 컴포넌트에 도달하기 전에 반드시 자식 컴포넌트를 거쳐야 합니다.

---

부모에서 자식으로, 그리고 자식에서 손자로 전달함으로써.

---

프로프를 동적으로 가져오기 위해 `useEffect` 훅을 사용함으로써.

### --feedback--

프로프는 손자 컴포넌트에 도달하기 전에 반드시 자식 컴포넌트를 거쳐야 합니다.

---

손자 컴포넌트에서 `useState` 훅을 사용함으로써.

### --feedback--

프로프는 손자 컴포넌트에 도달하기 전에 반드시 자식 컴포넌트를 거쳐야 합니다.

## --video-solution--

2

## --text--

React에서 프로프 드릴링이란 무엇인가요?

## --answers--

프로프를 필요한 컴포넌트에만 직접 전달하는 것.

### --feedback--

프로프가 불필요하게 여러 단계로 전달될 때 발생합니다.

---

컴포넌트 간 상태 공유를 위해 컨텍스트를 사용하는 것.

### --feedback--

프로프가 불필요하게 여러 단계로 전달될 때 발생합니다.

---

부모에서 깊게 중첩된 자식 컴포넌트로 프로프를 전달하는 것.

---

훅을 사용해 컴포넌트 상태를 깊게 탐색하는 것.

### --feedback--

프로프가 불필요하게 여러 단계로 전달될 때 발생합니다.

## --video-solution--

3

## --text--

왜 프로프 드릴링이 큰 애플리케이션에서 문제로 여겨지나요?

## --answers--

상태 관리를 더 쉽게 만들어 줍니다.

### --feedback--

너무 많은 프로프가 여러 컴포넌트를 거치면 코드가 복잡해집니다.

---

리렌더링을 줄여 성능을 향상시킵니다.

### --feedback--

너무 많은 프로프가 여러 컴포넌트를 거치면 코드가 복잡해집니다.

---

코드를 읽고 디버그하며 유지보수하기 어렵게 만듭니다.

---

상태 관리 라이브러리가 필요 없게 만듭니다.

### --feedback--

너무 많은 프로프가 여러 컴포넌트를 거치면 코드가 복잡해집니다.

## --video-solution--

3
