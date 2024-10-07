---
id: 5a24c314108439a4d403618b
title: 兄弟要素に一意のキー属性を付ける
challengeType: 6
forumTopicId: 301394
dashedName: give-sibling-elements-a-unique-key-attribute
---

# --description--

The last challenge showed how the `map` method is used to dynamically render a number of elements based on user input. However, there was an important piece missing from that example. When you create an array of elements, each one needs a `key` attribute set to a unique value. React uses these keys to keep track of which items are added, changed, or removed. This helps make the re-rendering process more efficient when the list is modified in any way.

**注:** キーは兄弟要素間でのみ一意であれば十分です。アプリケーションでグローバルに一意である必要はありません。

# --instructions--

コードエディターに配列があり、いくつかのフロントエンドフレームワークと、`Frameworks()` というステートレス関数型コンポーネントで構成されています。 `Frameworks()` では、前回のチャレンジと同様に、配列を順序なしリストにマッピングする必要があります。 `frontEndFrameworks` 配列内の各フレームワークの `li` 要素を返すように、`map` コールバックの記述を完成させてください。 今回は、それぞれの `li` に `key` 属性を付けて、一意の値を設定してください。 また、`li` 要素には `frontEndFrameworks` のテキストも含めてください。

通常は、レンダーされる要素を一意に識別するキーのようなものを作成します。 配列インデックスを使用する方法もありますが、通常は一意の識別子を使用するようにしてください。

# --hints--

`Frameworks` コンポーネントが存在し、ページにレンダーする必要があります。

```js
assert(
  Enzyme.mount(React.createElement(Frameworks)).find('Frameworks').length === 1
);
```

`Frameworks` で `h1` 要素をレンダーします。

```js
assert(Enzyme.mount(React.createElement(Frameworks)).find('h1').length === 1);
```

`Frameworks` で `ul` 要素をレンダーします。

```js
assert(Enzyme.mount(React.createElement(Frameworks)).find('ul').length === 1);
```

`ul` タグで 6 つの子の `li` 要素をレンダーします。

```js
assert(
  Enzyme.mount(React.createElement(Frameworks)).find('ul').children().length ===
    6 &&
    Enzyme.mount(React.createElement(Frameworks))
      .find('ul')
      .childAt(0)
      .name() === 'li' &&
    Enzyme.mount(React.createElement(Frameworks)).find('li').length === 6
);
```

各リストアイテム要素に一意の `key` 属性を持たせます。

```js
assert(
  (() => {
    const ul = Enzyme.mount(React.createElement(Frameworks)).find('ul');
    const keys = new Set([
      ul.childAt(0).key(),
      ul.childAt(1).key(),
      ul.childAt(2).key(),
      ul.childAt(3).key(),
      ul.childAt(4).key(),
      ul.childAt(5).key()
    ]);
    return keys.size === 6;
  })()
);
```

各リストアイテム要素に `frontEndFrameworks` のテキストを含めます。

```js
assert(
  (() => {
    const li = Enzyme.mount(React.createElement(Frameworks))
      .find('ul')
      .children();
    return [...Array(5)].every((_, i) =>
      frontEndFrameworks.includes(li.at(i).text())
    );
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<Frameworks />, document.getElementById('root'))
```

## --seed-contents--

```jsx
const frontEndFrameworks = [
  'React',
  'Angular',
  'Ember',
  'Knockout',
  'Backbone',
  'Vue'
];

function Frameworks() {
  const renderFrameworks = null; // Change this line
  return (
    <div>
      <h1>Popular Front End JavaScript Frameworks</h1>
      <ul>
        {renderFrameworks}
      </ul>
    </div>
  );
};
```

# --solutions--

```jsx
const frontEndFrameworks = [
  'React',
  'Angular',
  'Ember',
  'Knockout',
  'Backbone',
  'Vue'
];

function Frameworks() {
  const renderFrameworks = frontEndFrameworks.map((fw, i) => <li key={i}>{fw}</li>);
  return (
    <div>
      <h1>Popular Front End JavaScript Frameworks</h1>
      <ul>
        {renderFrameworks}
      </ul>
    </div>
  );
};
```
