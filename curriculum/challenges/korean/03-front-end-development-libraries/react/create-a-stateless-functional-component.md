---
id: 5a24c314108439a4d4036162
title: 상태가 없는 함수 컴포넌트 만들기
challengeType: 6
forumTopicId: 301392
dashedName: create-a-stateless-functional-component
---

# --description--

Components are the core of React. Everything in React is a component and here you will learn how to create one.

리액트 컴포넌트를 만드는 두 가지 방법이 있습니다. 첫 번째 방법은 자바스크립트 함수(function)를 이용합니다. 이 방법으로 컴포넌트를 정의하면 *상태가 없는 함수 컴포넌트(stateless functional component)*를 만들 수 있습니다. 어플리케이션에서 상태(state)라는 개념은 뒤의 도전에서 다루겠습니다. 지금은, 상태가 없는 컴포넌트란 데이터를 받고 렌더링 하지만, 데이터를 관리하거나 변화를 추적하지는 않는다고 알고계세요. (다음 도전에선 리액트 컴포넌트를 생성하는 두 번째 방법을 알아보겠습니다.)

함수를 이용해서 컴포넌트를 생성하려면, 그저 자바스크립트의 함수를 작성하고 JSX 혹은 `null`을 반환해주면 됩니다. 한 가지 주의할 점은 리액트에서는 함수 이름을 꼭 대문자로 시작해야 합니다. 다음은 JSX에서 HTML 클래스를 할당하는 상태가 없는 컴포넌트의 예시입니다.

```jsx
const DemoComponent = function() {
  return (
    <div className='customClass' />
  );
};
```

변환(transplie) 된 후, `<div>`는 `customClass`라는 CSS 클래스를 가지게 됩니다.

JSX 컴포넌트는 HTML을 표현하기에, 여러 컴포넌트를 넣어서 더 복잡한 HTML 페이지를 만들 수 있습니다. 이는 리액트가 제공하는 컴포넌트 구조의 여러 이점 중 하나입니다. 별도로 분리된 여러 컴포넌트로 UI를 구성할 수 있게 해주고, 이를 통해 복잡합 사용자 인터페이스를 더 쉽게 구축하고 관리할 수 있습니다.

# --instructions--

코드 편집기에 `MyComponent`라는 이름의 함수가 있습니다. 몇 글자를 포함한 하나의 `div` 엘리먼트를 반환하도록 함수를 완성하세요.

**참고:** 글자는 `div`의 자식 요소로 간주되기 때문에 자체 닫기(self-closing) 태그를 사용할 수 없습니다.

# --hints--

`MyComponent`는 JSX를 반환해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
    return mockedComponent.length === 1;
  })()
);
```

`MyComponent`는 하나의 `div` 엘리먼트를 반환해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
    return mockedComponent.children().type() === 'div';
  })()
);
```

`div` 엘리먼트는 글자를 포함해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
    return mockedComponent.find('div').text() !== '';
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<MyComponent />, document.getElementById('root'))
```

## --seed-contents--

```jsx
const MyComponent = function() {
  // Change code below this line



  // Change code above this line
}
```

# --solutions--

```jsx
const MyComponent = function() {
  // Change code below this line
  return (
    <div>
      Demo Solution
    </div>
  );
  // Change code above this line
}
```
