---
id: 5a24c314108439a4d4036170
title: 상태가 있는 컴포넌트 만들기
challengeType: 6
forumTopicId: 301391
dashedName: create-a-stateful-component
---

# --description--

One of the most important topics in React is `state`. State consists of any data your application needs to know about, that can change over time. You want your apps to respond to state changes and present an updated UI when necessary. React offers a nice solution for the state management of modern web applications.

리액트 컴포넌트에서 상태를 생성하려면, `state` 속성을 컴포넌트 클래스의 `constructor`에 선언합니다. 그러면 컴포넌트가 생성될 때 상태(`state`)도 초기화됩니다. `state` 속성은 반드시 자바스크립트 객체(`object`)로 설정되어야 합니다. 이렇게 선언합니다:

```jsx
this.state = {

}
```

컴포넌트의 수명이 다할 때 까지 `state` 객체에 접근할 수 있습니다. 또한 업데이트 하거나, UI에 렌더링 그리고 자식 컴포넌트에 프로퍼티로도 전달할 수 있습니다. `state` 객체는 필요에 따라 간단할 수도, 복잡할 수도 있습니다. 위 처럼 `state`를 만들기 위해, 반드시 `React.Component`를 상속한 클래스 컴포넌트를 만들어야 한다는 것을 알아두세요.

# --instructions--

코드 편집기에는 `state`에서 `firstName` 속성을 렌더링하려고 하는 구성 요소가 있습니다. 하지만 `state` 선언이 없습니다. `constructor`에서 `state`를 초기화하고 `firstName` 속성에 이름을 할당하여 구성 요소를 초기화하십시오.

# --hints--

`StatefulComponent`는 존재하며 렌더링 되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    return mockedComponent.find('StatefulComponent').length === 1;
  })()
);
```

`StatefulComponent`는 `div`와 `h1` 엘리먼트를 반환해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    return (
      mockedComponent.find('div').length === 1 &&
      mockedComponent.find('h1').length === 1
    );
  })()
);
```

`StatefulComponent`의 상태는 문자열로 설정된 `firstName` 속성으로 초기화되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    const initialState = mockedComponent.state();
    return (
      typeof initialState === 'object' && typeof initialState.firstName === 'string'
    );
  })()
);
```

`StatefulComponent`의 상태의 `firstName` 속성은 `h1` 요소에서 렌더링되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    const initialState = mockedComponent.state();
    return mockedComponent.find('h1').text() === initialState.firstName;
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<StatefulComponent />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class StatefulComponent extends React.Component {
  constructor(props) {
    super(props);
    // Only change code below this line

    // Only change code above this line
  }
  render() {
    return (
      <div>
        <h1>{this.state.firstName}</h1>
      </div>
    );
  }
};
```

# --solutions--

```jsx
class StatefulComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      firstName: 'freeCodeCamp!'
    }
  }
  render() {
    return (
      <div>
        <h1>{this.state.firstName}</h1>
      </div>
    );
  }
};
```
