---
id: 5a24c314108439a4d4036177
title: 간단한 카운터 만들기
challengeType: 6
forumTopicId: 301425
dashedName: write-a-simple-counter
---

# --description--

You can design a more complex stateful component by combining the concepts covered so far. These include initializing `state`, writing methods that set `state`, and assigning click handlers to trigger these methods.

# --instructions--

`Counter` 컴포넌트는 `상태`의 `count` 값을 추적하고 있습니다. `increment()`와 `decrement()` 메서드를 호출하는 두 개의 버튼도 있습니다. 버튼이 클릭되었을 때 카운터 값이 1이 증가하거나 감소하는 메서드를 작성해보세요. 리셋 버튼이 클릭되었을 때 카운트를 0으로 설정하는 `reset()` 메서드도 작성해보세요.

**참고:** 버튼의 `className` 변경하지 마세요. 또한, 생성자(constructor)에서 새로 만든 메서드를 바인딩 해주는 것도 잊지마세요.

# --hints--

`Counter`는 다음 세 가지의 버튼을 순서대로 가진 `div`를 반환해야 합니다. `Increment!`, `Decrement!`, `Reset`.

```js
assert(
  (() => {
    const mockedComponent = Enzyme.mount(React.createElement(Counter));
    return (
      mockedComponent.find('.inc').text() === 'Increment!' &&
      mockedComponent.find('.dec').text() === 'Decrement!' &&
      mockedComponent.find('.reset').text() === 'Reset'
    );
  })()
);
```

`Counter`의 상태는 `count` 프로퍼티를 `0`으로 초기화해야 합니다.

```js
const mockedComponent = Enzyme.mount(React.createElement(Counter));
assert(mockedComponent.find('h1').text() === 'Current Count: 0');
```

증가(increment) 버튼 클릭시 카운트를 `1` 증가해야 합니다.

```js
const mockedComponent = Enzyme.mount(React.createElement(Counter));
mockedComponent.find('.inc').simulate('click');
assert(mockedComponent.find('h1').text() === 'Current Count: 1');
```

감소(decrement) 버튼 클릭시 카운트를 `1` 감소해야 합니다.

```js
const mockedComponent = Enzyme.mount(React.createElement(Counter));
mockedComponent.find('.dec').simulate('click');
assert(mockedComponent.find('h1').text() === 'Current Count: -1');
```

리셋(reset) 버튼 클릭시 카운트를 `0`으로 리셋해야 합니다.

```js
const mockedComponent = Enzyme.mount(React.createElement(Counter));
mockedComponent.setState({ count: 5 });
const currentCountElement = mockedComponent.find('h1');
assert(currentCountElement.text() === 'Current Count: 5');
mockedComponent.find('.reset').simulate('click');
assert(currentCountElement.text() === 'Current Count: 0');
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<Counter />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class Counter extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      count: 0
    };
    // Change code below this line

    // Change code above this line
  }
  // Change code below this line

  // Change code above this line
  render() {
    return (
      <div>
        <button className='inc' onClick={this.increment}>Increment!</button>
        <button className='dec' onClick={this.decrement}>Decrement!</button>
        <button className='reset' onClick={this.reset}>Reset</button>
        <h1>Current Count: {this.state.count}</h1>
      </div>
    );
  }
};
```

# --solutions--

```jsx
class Counter extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      count: 0
    };
  this.increment = this.increment.bind(this);
 this.decrement = this.decrement.bind(this);
 this.reset = this.reset.bind(this);
 }
  reset() {
    this.setState({
      count: 0
    });
  }
  increment() {
    this.setState(state => ({
      count: state.count + 1
    }));
  }
  decrement() {
    this.setState(state => ({
      count: state.count - 1
    }));
  }
  render() {
    return (
      <div>
        <button className='inc' onClick={this.increment}>Increment!</button>
        <button className='dec' onClick={this.decrement}>Decrement!</button>
        <button className='reset' onClick={this.reset}>Reset</button>
        <h1>Current Count: {this.state.count}</h1>
      </div>
    );
  }
};
```
