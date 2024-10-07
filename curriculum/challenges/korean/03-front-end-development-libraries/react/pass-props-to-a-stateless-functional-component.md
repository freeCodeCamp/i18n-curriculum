---
id: 5a24c314108439a4d4036169
title: 상태가 없는 함수형 컴포넌트에 Props 전달하기
challengeType: 6
forumTopicId: 301402
dashedName: pass-props-to-a-stateless-functional-component
---

# --description--

The previous challenges covered a lot about creating and composing JSX elements, functional components, and ES6 style class components in React. With this foundation, it's time to look at another feature very common in React: **props**. In React, you can pass props, or properties, to child components. Say you have an `App` component which renders a child component called `Welcome` which is a stateless functional component. You can pass `Welcome` a `user` property by writing:

```jsx
<App>
  <Welcome user='Mark' />
</App>
```

**직접 만든 HTML 속성**을 리액트가 다른 컴포넌트로 전달시켜 주는 겁니다. 위의 예시의 경우, 직접 만든 `user`라는 프로퍼티가 `Welcome` 컴포넌트로 전달됩니다. `Welcome`은 상태가 없는 함수형 컴포넌트로, 다음과 같이 값에 접근할 수 있습니다:

```jsx
const Welcome = (props) => <h1>Hello, {props.user}!</h1>
```

이 값을 일반적으로 `props`라고 부르며, 상태가 없는 함수형 컴포넌트를 다룰 때, 기본적으로 (JSX를 반환하는) 함수의 인자라고 간주합니다. 그리고 그 함수 안에서 인자의 값에 접근할 수 있습니다. 추후 클래스 컴포넌트에서는 조금 다른 것을 보게 될 것입니다.

# --instructions--

코드 편집기에 `Calendar`와 `CurrentDate` 컴포넌트가 있습니다. `Calendar` 컴포넌트에서 `CurrentDate`를 렌더링 할 때, 자바스크립트의 `Date` 객체에서 현재 날짜를 `date` 프로퍼티로 전달해보세요. 그리고 `CurrentDate` 컴포넌트에서 이 `prop`에 접근해서, 값을 `p` 태그로 보여주세요. `prop`의 값을 자바스크립트처럼 사용하려면 중괄호로 묶어야 합니다. 예를 들면 `date={Date()}`.

# --hints--

`Calendar` 컴포넌트는 하나의 `div` 엘리먼트를 반환해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().type() === 'div';
  })()
);
```

`Calendar` 컴포넌트의 두 번째 자식은 `CurrentDate` 컴포넌트이어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().childAt(1).name() === 'CurrentDate';
  })()
);
```

`CurrentDate` 컴포넌트는 하나의 프로퍼티 `date`를 가져야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().childAt(1).props().date;
  })()
);
```

`CurrentDate`의 프로퍼티 `date`는 문자열을 포함해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    const prop = mockedComponent.children().childAt(1).props().date;
    return typeof prop === 'string' && prop.length > 0;
  })()
);
```

`date` 프로퍼티는 `Date()`를 호출해서 생성되어야 합니다.

```js
assert(/<CurrentDatedate={Date\(\)}\/>/.test(__helpers.removeWhiteSpace(code)));
```

`CurrentDate` 컴포넌트는 `date` 프로퍼티의 값을 `p` 태그에 렌더링해야 합니다.

```js
let date = 'dummy date';
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(CurrentDate, { date })
    );
    return mockedComponent.find('p').html().includes(date);
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<Calendar />, document.getElementById('root'))
```

## --seed-contents--

```jsx
const CurrentDate = (props) => {
  return (
    <div>
      { /* Change code below this line */ }
      <p>The current date is: </p>
      { /* Change code above this line */ }
    </div>
  );
};

class Calendar extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h3>What date is it?</h3>
        { /* Change code below this line */ }
        <CurrentDate />
        { /* Change code above this line */ }
      </div>
    );
  }
};
```

# --solutions--

```jsx
const CurrentDate = (props) => {
  return (
    <div>
      { /* Change code below this line */ }
      <p>The current date is: {props.date}</p>
      { /* Change code above this line */ }
    </div>
  );
};

class Calendar extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h3>What date is it?</h3>
        { /* Change code below this line */ }
        <CurrentDate date={Date()} />
        { /* Change code above this line */ }
      </div>
    );
  }
};
```
