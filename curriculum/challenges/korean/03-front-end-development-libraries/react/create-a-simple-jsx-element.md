---
id: 587d7dbc367417b2b2512bb1
title: 간단한 JSX 엘리먼트 만들기
challengeType: 6
forumTopicId: 301390
dashedName: create-a-simple-jsx-element
---

# --description--

React is an Open Source view library created and maintained by Facebook. It's a great tool to render the User Interface (UI) of modern web applications.

리액트는 자바스크립트에서 문법적으로 확장된 'JSX'라는 프로그래밍 언어를 사용하며, 자바스크립트 내에서 직접 HTML을 작성할 수 있습니다. JSX에 여러 이점이 있습니다. JSX는 HTML 내에서 자바스크립트의 강력한 프로그래밍적 기능을 모두 사용할 수 있을 뿐만 아니라, 코드를 읽기 쉽게 도와줍니다. JSX는 앞서 배운 HTML과 대부분 비슷하지만, 앞으로 학습에서 몇 가지 중요한 차이점을 알아보겠습니다.

예를 들면, JSX는 자바스크립트에서 문법적으로 확장된 언어라서, JSX 안에 자바스크립트를 작성합니다. 자바스크립트로 처리되기 원하는 코드를 그냥 중괄호 안에 넣어주면 됩니다: `{'여기는 자바스크립트 코드로 처리됩니다'}` 앞으로 걔속 사용하게 될 테니 기억해 두세요.

하지만 JSX는 자바스크립트가 아니기 때문에, JSX 코드는 반드시 자바스크립트로 컴파일(변환) 되어야 합니다. 이 변환을 해주는 도구로 '바벨'이라는 것이 유명합니다. 여러분의 편의를 위해, 여기서의 코드 도전에 이미 '바벨'이 추가되어 있습니다. 만약 JSX 문법에 어긋난 코드를 작성하면, 학습의 첫 번째 테스트에서 통과하지 못하게 됩니다.

코드 도전에서는 안보이는 곳에 `ReactDOM.render(JSX, document.getElementById('root'))`를 호출하고 있습니다. 이 함수 호출은 JSX를 DOM의 가벼운 형태를 가진 리액트 자체 공간에 위치시킵니다. 그런 다음 자체 DOM의 스냅샷을 이용해서 실제 DOM의 특정 부분만 업데이트하며 최적화합니다.

# --instructions--

현재 JSX 코드는 `div` 엘리먼트를 상수 변수 `JSX`에 할당하고 있습니다. `div` 태그를 `h1` 태그로 바꿔 준 후, 그 안에 `Hello JSX!` 텍스트를 추가해보세요.

# --hints--

상수 변수 `JSX`는 `h1` 엘리먼트를 반환해야 합니다.

```js
assert(JSX.type === 'h1');
```

`h1` 태그는 문자열 `Hello JSX!`를 포함해야 합니다.

```js
assert(Enzyme.shallow(JSX).contains('Hello JSX!'));
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(JSX, document.getElementById('root'))
```

## --seed-contents--

```jsx
const JSX = <div></div>;
```

# --solutions--

```jsx
const JSX = <h1>Hello JSX!</h1>;
```
