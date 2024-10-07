---
id: 5a24c314108439a4d403618a
title: Array.map() 사용해서 동적으로 렌더링하기
challengeType: 6
forumTopicId: 301417
dashedName: use-array-map-to-dynamically-render-elements
---

# --description--

Conditional rendering is useful, but you may need your components to render an unknown number of elements. Often in reactive programming, a programmer has no way to know what the state of an application is until runtime, because so much depends on a user's interaction with that program. Programmers need to write their code to correctly handle that unknown state ahead of time. Using `Array.map()` in React illustrates this concept.

예를 들면, 간단한 'To Do List' 앱을 만든다고 하면, 프로그래머로써 유저가 목록에 얼마나 많은 아이템을 가지게 될 지 알 방법이 없습니다. 가령 유저가 오늘은 세탁하는 날로 정하기 전에, 컴포넌트가 올바른 수의 목록을 동적으로 렌더링하도록 설정해야 합니다.

# --instructions--

코드 편집기에는 대부분의 `MyToDoList` 컴포넌트가 만들어져 있습니다. 제어된 폼 도전을 완료했다면, 이 코드 중 일부는 친숙해 보일 것입니다. `textarea`와 `button`이 상태를 추적하는 몇 가지 메서드와 함께 있지만, 아직 페이지에 렌더링되지 않았습니다.

`constructor`안에 `this.state` 객체를 만들고 두 개의 상태를 정의해보세요: `userInput`는 빈 문자열로 초기화되어야 하고, `toDoList`는 빈 배열로 초기화되어야 합니다. 다음으로, `render()` 메서드에서 `items` 변수 옆의 `null` 값을 삭제하세요. 삭제한 자리에 컴포넌트 상태에 저장된 `toDoList` 배열을 map을 이용해서 동적으로 각 아이템에 대해 `li`로 렌더링해보세요. `textarea`에 `eat, code, sleep, repeat` 문자열을 입력하고 버튼을 클릭해서 어떤 일이 생기는지 확인해보세요.

**참고:** map을 통해서 생긴 모든 형제 엘리먼트는 고유한 `key` 속성을 제공받아야 합니다. 이 주제는 다음 도전에서 나오니 지금은 걱정마세요.

# --hints--

MyToDoList 컴포넌트는 존재하고, 페이지에 렌더링되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyToDoList));
    return mockedComponent.find('MyToDoList').length === 1;
  })()
);
```

`MyToDoList` 컴포넌트의 첫 번째 자식은 `textarea` 엘리먼트이어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyToDoList));
    return (
      mockedComponent.find('MyToDoList').children().childAt(0).type() ===
      'textarea'
    );
  })()
);
```

`MyToDoList` 컴포넌트의 두 번째 자식은 `br` 엘리먼트이어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyToDoList));
    return (
      mockedComponent.find('MyToDoList').children().childAt(1).type() === 'br'
    );
  })()
);
```

`MyToDoList` 컴포넌트의 세 번째 자식은 `button` 엘리먼트이어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyToDoList));
    return (
      mockedComponent.find('MyToDoList').children().childAt(2).type() ===
      'button'
    );
  })()
);
```

`MyToDoList`의 상태는 빈 배열의 `toDoList` 로 초기화되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyToDoList));
    const initialState = mockedComponent.state();
    return (
      Array.isArray(initialState.toDoList) === true &&
      initialState.toDoList.length === 0
    );
  })()
);
```

`MyToDoList`의 상태는 빈 문자열의 `userInput` 로 초기화되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyToDoList));
    const initialState = mockedComponent.state();
    return (
      typeof initialState.userInput === 'string' &&
      initialState.userInput.length === 0
    );
  })()
);
```

`Create List` 버튼이 클릭되면, `MyToDoList` 컴포넌트는 `textarea` 엘리먼트에 쉼표로 구분된 목록의 모든 아이템을 순서가 없는 목록으로 동적 반환해야 합니다.

```js
(() => {
  const mockedComponent = Enzyme.mount(React.createElement(MyToDoList));
  const simulateChange = (el, value) =>
    el.simulate('change', { target: { value } });
  const state_1 = () => {
    return mockedComponent.find('ul').find('li');
  };
  const setInput = () => {
    return simulateChange(
      mockedComponent.find('textarea'),
      'testA, testB, testC'
    );
  };
  const click = () => {
    return mockedComponent.find('button').simulate('click');
  };
  const state_2 = () => {
    const nodes = mockedComponent.find('ul').find('li');
    return { nodes, text: nodes.reduce((t, n) => t + n.text().trim(), '') };
  };
  const setInput_2 = () => {
    return simulateChange(
      mockedComponent.find('textarea'),
      't1, t2, t3, t4, t5, t6'
    );
  };
  const click_1 = () => {
    return mockedComponent.find('button').simulate('click');
  };
  const state_3 = () => {
    const nodes = mockedComponent.find('ul').find('li');
    return { nodes, text: nodes.reduce((t, n) => t + n.text().trim(), '') };
  };
  const awaited_state_1 = state_1();
  const awaited_setInput = setInput();
  const awaited_click = click();
  const awaited_state_2 = state_2();
  const awaited_setInput_2 = setInput_2();
  const awaited_click_1 = click_1();
  const awaited_state_3 = state_3();
  assert(
    awaited_state_1.length === 0 &&
      awaited_state_2.nodes.length === 3 &&
      awaited_state_3.nodes.length === 6 &&
      awaited_state_2.text === 'testAtestBtestC' &&
      awaited_state_3.text === 't1t2t3t4t5t6'
  );
})();
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<MyToDoList />, document.getElementById('root'));
```

## --seed-contents--

```jsx
const textAreaStyles = {
  width: 235,
  margin: 5
};

class MyToDoList extends React.Component {
  constructor(props) {
    super(props);
    // Change code below this line

    // Change code above this line
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleChange = this.handleChange.bind(this);
  }
  handleSubmit() {
    const itemsArray = this.state.userInput.split(',');
    this.setState({
      toDoList: itemsArray
    });
  }
  handleChange(e) {
    this.setState({
      userInput: e.target.value
    });
  }
  render() {
    const items = null; // Change this line
    return (
      <div>
        <textarea
          onChange={this.handleChange}
          value={this.state.userInput}
          style={textAreaStyles}
          placeholder='Separate Items With Commas'
        />
        <br />
        <button onClick={this.handleSubmit}>Create List</button>
        <h1>My "To Do" List:</h1>
        <ul>{items}</ul>
      </div>
    );
  }
}
```

# --solutions--

```jsx
const textAreaStyles = {
  width: 235,
  margin: 5
};

class MyToDoList extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      toDoList: [],
      userInput: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleChange = this.handleChange.bind(this);
  }
  handleSubmit() {
    const itemsArray = this.state.userInput.split(',');
    this.setState({
      toDoList: itemsArray
    });
  }
  handleChange(e) {
    this.setState({
      userInput: e.target.value
    });
  }
  render() {
    const items = this.state.toDoList.map((item, i) => {
      return <li key={i}>{item}</li>;
    });
    return (
      <div>
        <textarea
          onChange={this.handleChange}
          value={this.state.userInput}
          style={textAreaStyles}
          placeholder='Separate Items With Commas'
        />
        <br />
        <button onClick={this.handleSubmit}>Create List</button>
        <h1>My "To Do" List:</h1>
        <ul>{items}</ul>
      </div>
    );
  }
}
```
