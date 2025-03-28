---
id: 5a24c314108439a4d4036141
title: 리액트 리덕스 시작하기
challengeType: 6
forumTopicId: 301430
dashedName: getting-started-with-react-redux
---

# --description--

This series of challenges introduces how to use Redux with React. First, here's a review of some of the key principles of each technology. React is a view library that you provide with data, then it renders the view in an efficient, predictable way. Redux is a state management framework that you can use to simplify the management of your application's state. Typically, in a React Redux app, you create a single Redux store that manages the state of your entire app. Your React components subscribe to only the pieces of data in the store that are relevant to their role. Then, you dispatch actions directly from React components, which then trigger store updates.

리액트 컴포넌트가 로컬 상태를 직접 관리할 수 있지만, 복잡한 앱을 개발할 때는 일반적으로 리덕스를 사용하여 앱 상태를 단일 위치에 유지하는 것이 좋습니다. 개별 컴포넌트에만 해당되는 로컬 상태가 있는 경우 예외가 있습니다. 마지막으로, 리덕스는 기본적으로 리액트와 함께 작동하도록 설계되지 않았으므로, `react-redux` 패키지를 사용해야 합니다. 리덕스 `state`와 `dispatch`를 리액트 컴포넌트에 `props`으로써 전달하는 방법을 제공합니다.

다음 몇 가지 도전 과제에서 먼저, 새로운 문자 메시지를 입력할 수 있는 간단한 리액트 컴포넌트를 만들 것입니다. 이러한 메시지는 화면에 표시되는 배열에 추가됩니다. 이는 리액트 수업에서 배운 내용을 다시 한 번 리뷰하는 좋은 기회가 될 것입니다. 다음으로, 리덕스 스토어 및 메시지 배열의 상태를 관리하는 액션을 만들 것입니다. 마지막으로, `react-redux`를 사용해서 리덕스 스토어를 컴포넌트에 연결하여 로컬 상태를 리덕스 스토어로 추출할 것입니다.

# --instructions--

먼저 `DisplayMessages` 컴포넌트부터 시작하세요. 이 컴포넌트에 생성자를 추가하고 두 가지 속성을 가진 상태로 초기화하세요. `input`은 빈 문자열로 설정하고, `messages`는 빈 배열로 설정합니다.

# --hints--

`DisplayMessages` 컴포넌트는 빈 `div` 요소를 렌더링해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
    return mockedComponent.find('div').text() === '';
  })()
);
```

`DisplayMessages` 생성자는 `super`를 올바르게 호출해야 하며, 이때 `props`를 전달해야 합니다.

```js
assert(
    (function () {
      const noWhiteSpace = __helpers.removeWhiteSpace(code);
      return (
        noWhiteSpace.includes('constructor(props)') &&
        noWhiteSpace.includes('super(props')
      );
    })()
  );
```

`DisplayMessages` 컴포넌트의 초기 상태는 `{input: "", messages: []}`와 같아야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
    const initialState = mockedComponent.state();
    return (
      typeof initialState === 'object' &&
      initialState.input === '' &&
      Array.isArray(initialState.messages) &&
      initialState.messages.length === 0
    );
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<DisplayMessages />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class DisplayMessages extends React.Component {
  // Change code below this line

  // Change code above this line
  render() {
    return <div />
  }
};
```

# --solutions--

```jsx
class DisplayMessages extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: '',
      messages: []
    }
  }
  render() {
    return <div/>
  }
};
```
