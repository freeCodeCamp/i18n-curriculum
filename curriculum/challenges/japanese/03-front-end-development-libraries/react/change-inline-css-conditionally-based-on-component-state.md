---
id: 5a24c314108439a4d4036189
title: コンポーネントの状態に基づいてインライン CSS を条件付きで変更する
challengeType: 6
forumTopicId: 301380
dashedName: change-inline-css-conditionally-based-on-component-state
---

# --description--

At this point, you've seen several applications of conditional rendering and the use of inline styles. Here's one more example that combines both of these topics. You can also render CSS conditionally based on the state of a React component. To do this, you check for a condition, and if that condition is met, you modify the styles object that's assigned to the JSX elements in the render method.

この方法は、DOM 要素を直接変更してスタイルを適用するという従来のアプローチと比べて、かなり大きな変更となるため、理解することが重要です (たとえば jQuery ではごく一般的です)。 このアプローチでは、要素がいつ変更されたのかを追跡する必要があり、実際の操作を直接処理する必要もあります。 変更の追跡が困難になり、UI が予測できなくなる可能性があります。 条件に基づいてスタイルオブジェクトを設定するときは、UI をアプリケーションの状態の関数としてどのように表示するかを記述します。 情報の流れは明確で、一方向にしか流れません。 React でアプリケーションを記述するときは、こうした方法が適切です。

# --instructions--

コードエディターに、スタイル付きの境界線を持つ、シンプルな制御された入力コンポーネントがあります。 ユーザーが入力ボックスに 15 文字を超えるテキストを入力した場合に、この境界線を赤色に変更する必要があります。 このことをチェックする条件を追加し、条件が有効な場合に入力の境界線のスタイルを `3px solid red` に設定してください。 入力欄にテキストを入力して試すことができます。

# --hints--

`GateKeeper` コンポーネントで `div` 要素をレンダーします。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(GateKeeper));
    return mockedComponent.find('div').length === 1;
  })()
);
```

`GateKeeper` コンポーネントを初期化し、状態のキー `input` に空文字列を設定します。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(GateKeeper));
    return mockedComponent.state().input === '';
  })()
);
```

`GateKeeper` コンポーネントで `h3` タグと `input` タグをレンダーします。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(GateKeeper));
    return (
      mockedComponent.find('h3').length === 1 &&
      mockedComponent.find('input').length === 1
    );
  })()
);
```

`input` タグの `border` プロパティに、初期状態でスタイル `1px solid black` を設定します。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(GateKeeper));
    return (
      mockedComponent.find('input').props().style.border === '1px solid black'
    );
  })()
);
```

状態の入力値が 15 文字を超える場合は、`input` タグの境界線のスタイルを `3px solid red` に設定します。

```js
async () => {
  const waitForIt = (fn) =>
    new Promise((resolve, reject) => setTimeout(() => resolve(fn()), 100));
  const mockedComponent = Enzyme.mount(React.createElement(GateKeeper));
  const simulateChange = (el, value) =>
    el.simulate('change', { target: { value } });
  let initialStyle = mockedComponent.find('input').props().style.border;
  const state_1 = () => {
    mockedComponent.setState({ input: 'this is 15 char' });
    return waitForIt(() => mockedComponent.find('input').props().style.border);
  };
  const state_2 = () => {
    mockedComponent.setState({
      input: 'A very long string longer than 15 characters.'
    });
    return waitForIt(() => mockedComponent.find('input').props().style.border);
  };
  const style_1 = await state_1();
  const style_2 = await state_2();
  assert(
    initialStyle === '1px solid black' &&
      style_1 === '1px solid black' &&
      style_2 === '3px solid red'
  );
};
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<GateKeeper />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class GateKeeper extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: ''
    };
    this.handleChange = this.handleChange.bind(this);
  }
  handleChange(event) {
    this.setState({ input: event.target.value })
  }
  render() {
    let inputStyle = {
      border: '1px solid black'
    };
    // Change code below this line

    // Change code above this line
    return (
      <div>
        <h3>Don't Type Too Much:</h3>
        <input
          type="text"
          style={inputStyle}
          value={this.state.input}
          onChange={this.handleChange} />
      </div>
    );
  }
};
```

# --solutions--

```jsx
class GateKeeper extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: ''
    };
    this.handleChange = this.handleChange.bind(this);
  }
  handleChange(event) {
    this.setState({ input: event.target.value })
  }
  render() {
    let inputStyle = {
      border: '1px solid black'
    };
    if (this.state.input.length > 15) {
      inputStyle.border = '3px solid red';
    };
    return (
      <div>
        <h3>Don't Type Too Much:</h3>
        <input
          type="text"
          style={inputStyle}
          value={this.state.input}
          onChange={this.handleChange} />
      </div>
    );
  }
};
```
