---
id: 5a24c314108439a4d4036180
title: shouldComponentUpdate로 재렌더링 최적화
challengeType: 6
forumTopicId: 301398
dashedName: optimize-re-renders-with-shouldcomponentupdate
---

# --description--

So far, if any component receives new `state` or new `props`, it re-renders itself and all its children. This is usually okay. But React provides a lifecycle method you can call when child components receive new `state` or `props`, and declare specifically if the components should update or not. The method is `shouldComponentUpdate()`, and it takes `nextProps` and `nextState` as parameters.

이 메서드는 성능을 최적화하는데 유용합니다. 예룰 들면, 컴포넌트는 새로운 `프로퍼티`를 받을 때 기본적으로 재렌더링을 합니다. `프로퍼티`가 변하지 않아도 말이죠. `shouldComponentUpdate()`로 `프로퍼티`를 비교해서 이 문제를 방지할 수 있습니다. 이 메서드는 리액트한테 컴포넌트를 업데이트할지 말지 알려주는 `boolean` 값을 반환해야 합니다. 현재 프로퍼티(`this.props`)와 다음 프로퍼티(`nextProps`)를 비교해서 업데이트가 필요한지 결정하고 `true` 혹은 `false`를 반환하면 됩니다.

# --instructions--

`OnlyEvens`라는 컴포넌트에 `shouldComponentUpdate()` 메서드가 추가되어 있습니다. 현재 이 메서드는 `true`를 반환하기 때문에 `OnlyEvens`는 새로운 `프로퍼티`를 받을 때마다 재렌더링 합니다. `OnlyEvens`를 새로운 프로퍼티의 `value`가 짝수일 때만 업데이트되도록 수정해보세요. `Add` 버튼을 클릭하고 라이프사이클 훅이 실행될 때 브라우저 콘솔에서 이벤트 순서를 확인해보세요.

# --hints--

`Controller` 컴포넌트는 `OnlyEvens`를 자식 컴포넌트로 렌더링해야 합니다.

```js
assert(
  (() => {
    const mockedComponent = Enzyme.mount(React.createElement(Controller));
    return (
      mockedComponent.find('Controller').length === 1 &&
      mockedComponent.find('OnlyEvens').length === 1
    );
  })()
);
```

`shouldComponentUpdate` 메서드는 `OnlyEvens` 컴포넌트안에 정의되어야 합니다.

```js
assert(
  (() => {
    const child = React.createElement(OnlyEvens)
      .type.prototype.shouldComponentUpdate.toString()
      .replace(/s/g, '');
    return child !== 'undefined';
  })()
);
```

`OnlyEvens` 컴포넌트는 `this.props.value`의 값을 렌더링하는 `h1`를 반환해야 합니다.

```js
(() => {
  const mockedComponent = Enzyme.mount(React.createElement(Controller));
  const first = () => {
    mockedComponent.setState({ value: 1000 });
    return mockedComponent.find('h1').html();
  };
  const second = () => {
    mockedComponent.setState({ value: 10 });
    return mockedComponent.find('h1').html();
  };
  const firstValue = first();
  const secondValue = second();
  assert(firstValue === '<h1>1000</h1>' && secondValue === '<h1>10</h1>');
})();
```

`OnlyEvens`는 `nextProps.value`가 짝수일 때만 재렌더링해야 합니다.

```js
(() => {
  const mockedComponent = Enzyme.mount(React.createElement(Controller));
  const first = () => {
    mockedComponent.setState({ value: 8 });
    return mockedComponent.find('h1').text();
  };
  const second = () => {
    mockedComponent.setState({ value: 7 });
    return mockedComponent.find('h1').text();
  };
  const third = () => {
    mockedComponent.setState({ value: 42 });
    return mockedComponent.find('h1').text();
  };
  const firstValue = first();
  const secondValue = second();
  const thirdValue = third();
  assert(firstValue === '8' && secondValue === '8' && thirdValue === '42');
})();
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<Controller />, document.getElementById('root'));
```

## --seed-contents--

```jsx
class OnlyEvens extends React.Component {
  constructor(props) {
    super(props);
  }
  shouldComponentUpdate(nextProps, nextState) {
    console.log('Should I update?');
    // Change code below this line
    return true;
    // Change code above this line
  }
  componentDidUpdate() {
    console.log('Component re-rendered.');
  }
  render() {
    return <h1>{this.props.value}</h1>;
  }
}

class Controller extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      value: 0
    };
    this.addValue = this.addValue.bind(this);
  }
  addValue() {
    this.setState(state => ({
      value: state.value + 1
    }));
  }
  render() {
    return (
      <div>
        <button onClick={this.addValue}>Add</button>
        <OnlyEvens value={this.state.value} />
      </div>
    );
  }
}
```

# --solutions--

```jsx
class OnlyEvens extends React.Component {
  constructor(props) {
    super(props);
  }
  shouldComponentUpdate(nextProps, nextState) {
    console.log('Should I update?');
    // Change code below this line
    return nextProps.value % 2 === 0;
    // Change code above this line
  }
  componentDidUpdate() {
    console.log('Component re-rendered.');
  }
  render() {
    return <h1>{this.props.value}</h1>;
  }
}

class Controller extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      value: 0
    };
    this.addValue = this.addValue.bind(this);
  }
  addValue() {
    this.setState(state => ({
      value: state.value + 1
    }));
  }
  render() {
    return (
      <div>
        <button onClick={this.addValue}>Add</button>
        <OnlyEvens value={this.state.value} />
      </div>
    );
  }
}
```
