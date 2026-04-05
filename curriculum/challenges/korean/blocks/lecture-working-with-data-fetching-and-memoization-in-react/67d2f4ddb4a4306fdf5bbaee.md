---
id: 67d2f4ddb4a4306fdf5bbaee
title: 메모이제이션이란 무엇이며 useMemo 훅은 어떻게 작동하나요?
challengeType: 19
dashedName: what-is-memoization-and-how-does-the-usememo-hook-work
---

# --description--

React 앱이 커질수록 불필요한 재렌더링과 비용이 많이 드는 계산이 성능을 저하시켜 UI 업데이트가 느려지고 리소스 사용량이 증가할 수 있습니다.

특히 복잡한 상태 관리, 큰 목록, 무거운 계산이 필요한 함수, 그리고 단일 부모를 가진 많은 컴포넌트가 있는 앱에서 이런 문제가 더 심각해질 수 있습니다.

이로 인해 중복 계산을 최소화하고 더 부드러운 상호작용을 보장하여 React 앱의 성능을 최적화할 필요가 생깁니다.

React는 메모이제이션이라는 과정을 통해 이 문제를 해결합니다. 메모이제이션은 값을 캐시하여 불필요한 재계산을 방지하는 기법으로, 앱이 더 빠르고 반응형이 되도록 합니다.

메모이제이션은 비용이 많이 드는 함수 호출 결과를 특정 인수에 따라 캐시(기억)하는 최적화 기법입니다. 같은 인수가 다시 주어지면, 함수를 다시 계산하지 않고 캐시된 결과를 반환합니다.

메모이제이션 과정은 다음과 같습니다:

- 함수 호출 결과와 입력 인수를 저장합니다.

- 함수를 실행하기 전에 현재 인수에 대한 결과가 캐시에 이미 있는지 확인합니다.

- 있으면, 계산을 다시 하지 않고 캐시된 결과를 반환합니다.

- 없으면, 결과를 계산하고 캐시에 저장한 후 반환합니다.

메모이제이션을 더 쉽게 사용하도록 React는 세 가지 도구를 제공합니다 – `React.memo` (또는 `memo`), `useMemo` 그리고 `useCallback`.

예상하셨겠지만, `useMemo`와 `useCallback`는 훅이고 `React.memo`는 컴포넌트 래퍼인 고차 컴포넌트(HOC)입니다.

다음 수업에서는 `useCallback` 훅과 `React.memo`이 어떻게 작동하는지 살펴보겠습니다.

`useMemo`는 계산된 값을 메모이제이션할 수 있게 해주고 `useCallback`는 함수 참조에 대해 같은 역할을 합니다.

계산된 값과 함수 참조가 무엇인지 궁금하다면, 계산된 값은 함수 실행 결과를 의미하고 함수 참조는 함수에 대한 포인터, 즉 메모리 내 함수 객체를 뜻합니다.

먼저 `useMemo` 훅을 사용하는 방법을 살펴보겠습니다. `useMemo` 훅의 기본 구문은 다음과 같습니다:

```js
const memoizedValue = useMemo(
  function () {
    return computeExpensiveValue(a, b);
  },
  [a, b]
);
```

필요한 것은 `useMemo` 훅을 함수 주위에 감싸는 것뿐임을 알 수 있습니다.

이 `ExpensiveSquare` 컴포넌트는 제곱을 계산하는 데 사용할 `num` 프로프를 받습니다:

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

다음은 `App` 컴포넌트로 `ExpensiveSquare`가 사용되고 있습니다:

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

`timer`가 `useEffect`에서 1초마다 실행되는데, `calculateSquare` 함수가 `num` 상태 변수를 증가시키지 않아도 매번 실행됩니다.

이 문제를 해결하려면 `useMemo` 훅을 사용해 함수 호출을 감싸고 `num` 변수를 의존성으로 지정하면 됩니다:

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

이렇게 하면 함수가 결과를 캐시하여 메모이제이션되므로 `num` 변수가 변경될 때만 계산이 이루어지고, 컴포넌트 내 다른 변경 사항에는 영향을 받지 않습니다.

`calculateSquare` 함수 호출은 더 이상 `timer`가 변경될 때마다 실행되지 않고, 초기 렌더링 시와 `num`가 변경될 때만 실행됩니다.

# --questions--

## --text--

React에서 메모이제이션이란 무엇인가요?

## --answers--

불필요한 재계산을 방지하기 위해 값과 함수를 캐시하는 기법입니다.

---

컴포넌트 상태 업데이트를 관리하여 불필요한 재계산을 방지하는 기법입니다.

### --feedback--

이전 계산 결과를 저장해 성능을 최적화하는 데 도움이 됩니다.

---

가상 DOM과 실제 DOM을 조정하는 과정입니다.

### --feedback--

이전 계산 결과를 저장해 성능을 최적화하는 데 도움이 됩니다.

---

함수형 컴포넌트에서 부수 효과를 처리하는 방법입니다.

### --feedback--

이전 계산 결과를 저장해 성능을 최적화하는 데 도움이 됩니다.

## --video-solution--

1

## --text--

계산된 값과 함수 참조의 차이는 무엇인가요?

## --answers--

계산된 값은 함수 객체이고, 함수 참조는 실행 결과입니다.

### --feedback--

하나는 함수의 출력이고, 다른 하나는 함수에 대한 포인터입니다.

---

계산된 값은 함수 실행 결과이고, 함수 참조는 메모리 내 함수 객체입니다.

---

계산된 값과 함수 참조는 같은 것입니다.

### --feedback--

하나는 함수의 출력이고, 다른 하나는 함수에 대한 포인터입니다.

---

함수 참조는 계산된 값을 저장합니다.

### --feedback--

하나는 함수의 출력이고, 다른 하나는 함수에 대한 포인터입니다.

## --video-solution--

2

## --text--

다음 중 React가 메모이제이션을 위해 제공하지 않는 도구는 무엇인가요?

## --answers--

`React.memo`

### --feedback--

메모이제이션 도구는 값과 함수를 캐시하는 데 집중하며, 이 옵션은 부수 효과를 처리합니다.

---

`useMemo`

### --feedback--

메모이제이션 도구는 값과 함수를 캐시하는 데 집중하며, 이 옵션은 부수 효과를 처리합니다.

---

`useCallback`

### --feedback--

메모이제이션 도구는 값과 함수를 캐시하는 데 집중하며, 이 옵션은 부수 효과를 처리합니다.

---

`useEffect`

## --video-solution--

4
