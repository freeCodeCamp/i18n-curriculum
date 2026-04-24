---
id: 67d2f4ddb4a4306fdf5bbaee
title: メモ化とは何か、そして useMemo フックはどのように動作するのか？
challengeType: 19
dashedName: what-is-memoization-and-how-does-the-usememo-hook-work
---

# --description--

React アプリが大きくなるにつれて、不必要な再レンダリングや高コストな計算がパフォーマンスを低下させ、UI の更新が遅くなったりリソースの使用量が増えたりします。

これは特に、複雑な状態管理、大きなリスト、重い計算を必要とする関数、そして単一の親を持つ多くのコンポーネントがあるアプリで問題になります。

このため、冗長な計算を最小限に抑え、よりスムーズな操作を実現することで、React アプリのパフォーマンスを最適化する必要があります。

React はこの問題をメモ化というプロセスで解決します。メモ化は値や関数をキャッシュして不必要な再計算を防ぐ手法で、アプリをより高速かつレスポンシブにします。

メモ化とは、高コストな関数呼び出しの結果を特定の引数に基づいてキャッシュ（記憶）する最適化手法です。同じ引数が再度与えられた場合、関数を再計算する代わりにキャッシュされた結果を返します。

メモ化の流れは次の通りです：

- 関数呼び出しの結果とその入力引数を保存する。

- 関数を実行する前に、現在の引数に対する結果がキャッシュに存在するか確認する。

- 存在すれば、計算を再度行わずにキャッシュされた結果を返す。

- 存在しなければ、結果を計算しキャッシュに保存してから返す。

メモ化の開発者体験を向上させるために、React は `React.memo`（または `memo`）、`useMemo`、`useCallback` の3つのツールを提供しています。

ご想像の通り、`useMemo` と `useCallback` はフックですが、`React.memo` はコンポーネントラッパーであり、高階コンポーネント（HOC）です。

次のレッスンでは、`useCallback` フックと `React.memo` の動作を見ていきます。

`useMemo` は計算された値をメモ化し、`useCallback` は関数の参照をメモ化します。

計算された値と関数の参照とは何か気になる場合、計算された値は関数を実行した結果を指し、関数の参照は関数へのポインタ、つまりメモリ上の関数オブジェクトを指します。

まずは `useMemo` フックの使い方を見てみましょう。`useMemo` フックの基本構文は以下の通りです：

```js
const memoizedValue = useMemo(
  function () {
    return computeExpensiveValue(a, b);
  },
  [a, b]
);
```

必要なのは `useMemo` フックを関数の周りにラップするだけです。

この `ExpensiveSquare` コンポーネントは `num` プロップを受け取り、それを使って平方を計算します：

```jsx
function ExpensiveSquare({ num }) {
  function calculateSquare(n) {
    console.log("Calculating square...");
    return n * n;
  }

  const squared = calculateSquare(num);
  return (
    <p>
      Square of {num}: {squared}
    </p>
  );
}
export default ExpensiveSquare;
```

こちらは `App` コンポーネントで `ExpensiveSquare` が使われている例です：

```jsx
import { useState, useEffect } from "react";
import ExpensiveSquare from "./components/ExpensiveSquare";

function App() {
 const [timer, setTimer] = useState(0);
 const [num, setNum] = useState(0);

 useEffect(() => {
   const interval = setInterval(() => setTimer((c) => c + 1), 1000);
   return () => clearInterval(interval);
 }, []);

 return (
   <div>
     <h1>Timer: {timer} seconds gone</h1>
     <ExpensiveSquare num={num} />
     <button onClick={() => setNum((n) => n + 1)}>Increase Number</button>
   </div>
 );
}

export default App;
```

`timer` の中の `useEffect` は毎秒実行され、`calculateSquare` 関数を実行します。これにより、`num` 状態変数を増やさなくても関数が毎回実行されてしまいます。

この問題を解決するために、関数呼び出しを `useMemo` フックでラップし、`num` 変数を依存関係として指定します：

```jsx
// import the useMemo hook
import { useMemo } from "react";

function ExpensiveSquare({ num }) {
  function calculateSquare(n) {
    console.log("Calculating square...");
    return n * n;
  }

  // const squared = calculateSquare(num);
  // Wrap the function call in useMemo instead
  const squared = useMemo(() => calculateSquare(num), [num]);

  return (
    <p>
      Square of {num}: {squared}
    </p>
  );
}

export default ExpensiveSquare;
```

これにより、関数は結果をキャッシュしてメモ化され、`num` 変数が変わった時だけ計算が行われ、コンポーネント内の他の変更では計算されません。

`calculateSquare` 関数呼び出しは `timer` が変わるたびに実行されるのではなく、初回レンダリング時と `num` が変わった時だけ実行されます。

# --questions--

## --text--

React におけるメモ化とは何ですか？

## --answers--

不必要な再計算を防ぐために値や関数をキャッシュする手法です。

---

コンポーネントの状態更新を管理して不必要な再計算を防ぐ手法です。

### --feedback--

以前計算した結果を保存することでパフォーマンスを最適化します。

---

仮想 DOM と実際の DOM を調整するプロセスです。

### --feedback--

以前計算した結果を保存することでパフォーマンスを最適化します。

---

関数コンポーネントで副作用を扱う方法です。

### --feedback--

以前計算した結果を保存することでパフォーマンスを最適化します。

## --video-solution--

1

## --text--

計算された値と関数の参照の違いは何ですか？

## --answers--

計算された値は関数オブジェクトで、関数の参照は実行結果です。

### --feedback--

一方は関数の出力で、もう一方は関数へのポインタです。

---

計算された値は関数を実行した結果で、関数の参照はメモリ上の関数オブジェクトです。

---

計算された値と関数の参照は同じものです。

### --feedback--

一方は関数の出力で、もう一方は関数へのポインタです。

---

関数の参照は計算された値を保存します。

### --feedback--

一方は関数の出力で、もう一方は関数へのポインタです。

## --video-solution--

2

## --text--

次のうち、React がメモ化のために提供しているツールではないものはどれですか？

## --answers--

`React.memo`

### --feedback--

メモ化ツールは値や関数のキャッシュに焦点を当てていますが、この選択肢は副作用を扱います。

---

`useMemo`

### --feedback--

メモ化ツールは値や関数のキャッシュに焦点を当てていますが、この選択肢は副作用を扱います。

---

`useCallback`

### --feedback--

メモ化ツールは値や関数のキャッシュに焦点を当てていますが、この選択肢は副作用を扱います。

---

`useEffect`

## --video-solution--

4
