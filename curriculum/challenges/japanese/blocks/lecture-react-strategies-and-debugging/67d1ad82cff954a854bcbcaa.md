---
id: 67d1ad82cff954a854bcbcaa
title: プロップドリリングとは何か？
challengeType: 19
dashedName: what-is-prop-drilling
---

# --description--

プロップドリリングは、Reactアプリケーションにおける最も基本的な状態管理の方法です。一見シンプルに見えますが、すぐに複雑になりやすく、スケールさせるのが非常に難しくなります。

ここでは、プロップドリリングとは何か、なぜ問題になるのか、そしてアプリケーションが成長するにつれてそれに代わる良い方法について見ていきましょう。

プロップドリリングとは、親コンポーネントから深くネストされた子コンポーネントにプロップスを渡すプロセスのことです。たとえその子コンポーネントの一部がそのプロップスを必要としていなくても渡します。

例えば、`Parent`、`Child`、`Grandchild`という3つのコンポーネントがあるとします。`Grandchild`コンポーネントであるデータを使いたいけれど、それが`Parent`コンポーネントにある場合、`Parent`から`Child`へ、そして`Child`から`Grandchild`へと渡す必要があります。

さらにデータがもっと上の階層にある場合は、`Parent`コンポーネントにも渡さなければならないかもしれません。

ここで、表示したいデータは文字列の`Hello, Prop Drilling!`です。これはルートの`greeting`コンポーネント内の`App`変数に代入されています。

```jsx
import "./App.css";
import Parent from "./Parent";

function App() {
  const greeting = "Hello, Prop Drilling!";

  return <Parent greeting={greeting} />;
}

export default App;
```

`Parent`コンポーネントも`greeting`変数を`greeting`プロップの値として受け取っているのがわかります。こちらは`Parent`コンポーネントが`Child`コンポーネントに、別の`greeting`プロップの値として渡している様子です。`Child`内でのことです。

```jsx
import Child from "./Child";

const Parent = ({ greeting }) => {
  return <Child greeting={greeting} />;
};

export default Parent;
```

こちらは`Child`コンポーネントが`Grandchild`コンポーネントに渡している例です。

```jsx
import Grandchild from "./Grandchild";

const Child = ({ greeting }) => {
  return <Grandchild greeting={greeting} />;
};

export default Child;
```

そして最後に`Grandchild`コンポーネントがgreetingを受け取り、`h1`要素の内容として使っています。

```jsx
const Grandchild = ({ greeting }) => {
  return <h1>{greeting}</h1>;
};

export default Grandchild;
```

ブラウザでは、テキストが`h1`の単一の`Hello, Prop Drilling!`要素が表示されます。

最初はプロップドリリングはそれほど大きな問題に見えないかもしれません。しかしアプリが成長するにつれて、理解、デバッグ、メンテナンスが難しくなります。

プロップスを渡す必要がある場合は、できるだけすべてを単一の親コンポーネントにまとめるようにしてください。この必要なデータを一元化する方法を「単一の真実の情報源」と呼びます。

例えば、`response`に加えて新しい`greeting`を追加し、両方を`Grandchild`コンポーネントで使いたいとします。`greeting`はすでに`App`コンポーネントにあるので、`response`もそこに置いて、両方をチェーンに沿って渡すのが理にかなっています。

```jsx
function App() {
  const greeting = "Hello, Prop Drilling!";
  const response = "I'm not here to play!";

  return <Parent greeting={greeting} response={response} />;
}

const Parent = ({ greeting, response }) => {
  return <Child greeting={greeting} response={response} />;
};

const Child = ({ greeting, response }) => {
  return <Grandchild greeting={greeting} response={response} />;
};

const Grandchild = ({ greeting, response }) => {
  return (
    <>
      <h1>{greeting}</h1>
      <h2>{response}</h2>
    </>
  );
};

export default App;
```

ブラウザでは、テキストが`h1`の`Hello, Prop Drilling!`要素と、テキストが`h2`の`I'm not here to play!`要素が表示されます。

特に大規模で複雑なアプリケーションでは、プロップドリリングを避けるためにContext APIやRedux、Redux Toolkit、Zustand、Recoilなどの状態管理ライブラリを使うことを検討してください。

これらについては今後のレッスンで詳しく学びます。

# --questions--

## --text--

親コンポーネントから孫コンポーネントへプロップはどのように流れますか？

## --answers--

孫コンポーネント内でプロップを定義することによって。

### --feedback--

プロップは孫に届く前に子を経由する必要があります。

---

親から子へ、そして子から孫へ渡すことによって。

---

`useEffect`フックを使ってプロップを動的に取得することによって。

### --feedback--

プロップは孫に届く前に子を経由する必要があります。

---

孫コンポーネントで`useState`フックを使うことによって。

### --feedback--

プロップは孫に届く前に子を経由する必要があります。

## --video-solution--

2

## --text--

Reactにおけるプロップドリリングとは何ですか？

## --answers--

必要なコンポーネントにだけ直接プロップを渡すこと。

### --feedback--

複数の階層を不必要にプロップが渡されることが起こります。

---

コンテキストを使ってコンポーネント間で状態を共有すること。

### --feedback--

複数の階層を不必要にプロップが渡されることが起こります。

---

親から深くネストされた子コンポーネントにプロップを渡すこと。

---

フックを使ってコンポーネントの状態を掘り下げること。

### --feedback--

複数の階層を不必要にプロップが渡されることが起こります。

## --video-solution--

3

## --text--

なぜ大規模なアプリケーションでプロップドリリングは問題とされるのですか？

## --answers--

状態管理がしやすくなるから。

### --feedback--

複数のコンポーネントを通して多くのプロップが渡されるとコードが複雑になります。

---

再レンダリングを減らしてパフォーマンスが向上するから。

### --feedback--

複数のコンポーネントを通して多くのプロップが渡されるとコードが複雑になります。

---

コードの読みやすさ、デバッグ、メンテナンスが難しくなるから。

---

状態管理ライブラリが不要になるから。

### --feedback--

複数のコンポーネントを通して多くのプロップが渡されるとコードが複雑になります。

## --video-solution--

3
