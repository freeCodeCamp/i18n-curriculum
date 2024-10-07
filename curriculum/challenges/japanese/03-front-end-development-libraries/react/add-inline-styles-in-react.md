---
id: 5a24c314108439a4d4036182
title: React にインラインスタイルを追加する
challengeType: 6
forumTopicId: 301378
dashedName: add-inline-styles-in-react
---

# --description--

You may have noticed in the last challenge that there were several other syntax differences from HTML inline styles in addition to the `style` attribute set to a JavaScript object. First, the names of certain CSS style properties use camel case. For example, the last challenge set the size of the font with `fontSize` instead of `font-size`. Hyphenated words like `font-size` are invalid syntax for JavaScript object properties, so React uses camel case. As a rule, any hyphenated style properties are written using camel case in JSX.

プロパティ値 (`height`、`width`、`fontSize` など) の長さの単位はすべて、特に指定がない限り `px` とみなされます。 たとえば `em` を使用する場合は、`{fontSize: "4em"}` のように値と単位を引用符で囲みます。 デフォルトで `px` になる長さの値を除いて、それ以外の他のすべてのプロパティ値は引用符で囲む必要があります。

# --instructions--

スタイルセットがたくさんある場合、スタイル `object` を定数に割り当てることでコードを整理することができます。 ファイルの先頭で、styles 定数をグローバル変数として宣言してください。 `styles` 定数を初期化し、3 つのスタイルプロパティとそれらの値を持つ `object` を割り当ててください。 `div` の color を `purple` に、font-size を `40` に、border を `2px solid purple` に設定してください。 そして、`style` 属性を `styles` 定数と等しく設定してください。

# --hints--

`styles` 変数を、3 つのプロパティを持つ `object` にします。

```js
assert(Object.keys(styles).length === 3);
```

`styles` 変数の `color` プロパティの値を `purple` に設定します。

```js
assert(styles.color === 'purple');
```

`styles` 変数の `fontSize` プロパティの値を `40` に設定します。

```js
assert(styles.fontSize == 40);
```

`styles` 変数の `border` プロパティの値を `2px solid purple` に設定します。

```js
assert(styles.border === '2px solid purple');
```

コンポーネントで `div` 要素をレンダーします。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.shallow(React.createElement(Colorful));
    return mockedComponent.type() === 'div';
  })()
);
```

`div` 要素に、`styles` オブジェクトで定義したスタイルを付けます。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.shallow(React.createElement(Colorful));
    return (
      mockedComponent.props().style.color === 'purple' &&
      mockedComponent.props().style.fontSize == 40 &&
      mockedComponent.props().style.border === '2px solid purple'
    );
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<Colorful />, document.getElementById('root'))
```

## --seed-contents--

```jsx
// Change code above this line
class Colorful extends React.Component {
  render() {
    // Change code below this line
    return (
      <div style={{color: "yellow", fontSize: 24}}>Style Me!</div>
    );
    // Change code above this line
  }
};
```

# --solutions--

```jsx
const styles = {
  color: "purple",
  fontSize: 40,
  border: "2px solid purple"
};
// Change code above this line
class Colorful extends React.Component {
  render() {
    // Change code below this line
    return (
      <div style={styles}>Style Me!</div>
    );
    // Change code above this line
  }
};
```
