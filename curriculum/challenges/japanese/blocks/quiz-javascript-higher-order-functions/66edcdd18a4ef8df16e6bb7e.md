---
id: 66edcdd18a4ef8df16e6bb7e
title: JavaScript 高階関数クイズ
challengeType: 8
dashedName: quiz-javascript-higher-order-functions
---

# --description--

このクイズに合格するには、以下の20問中少なくとも18問に正しく答える必要があります。

# --quizzes--

## --quiz--

### --question--

#### --text--

JavaScriptの高階関数について、正しくない説明はどれですか？

#### --distractors--

高階関数は関数型プログラミングの手法を可能にし、コードの可読性と保守性を大幅に向上させることができます。

---

map、filter、reduceのような高階関数は配列操作に強力なツールですが、関数型プログラミングに特有のものではありません。

---

高階関数はコードの理解を複雑にする場合がありますが、より表現力豊かで簡潔な解決策につながることもあります。

#### --answer--

JavaScriptのすべての関数は、他の関数を引数に取ったり返したりしなくても高階関数として分類されます。

### --question--

#### --text--

高階関数の文脈で、ファクトリー関数とは何ですか？

#### --distractors--

新しい変数を作成する関数。

---

文字列だけを扱う関数。

---

自動的にコードコメントを生成する関数。

#### --answer--

特定のパラメータに基づいて新しい関数を返す関数。

### --question--

#### --text--

コード実行後、`forEachRes` と `mapRes` の値は何になりますか？

```js
const numbers = [1, 1, 1, 1, 1];
let sum = 0;
const forEachRes = numbers.forEach(num => {
  return (sum += num);
});
const mapRes = numbers.map(num => {
  return (sum += num);
});
```

#### --distractors--

`forEachRes` は `undefined` で、`mapRes` は `[1,2,3,4,5]`

---

`forEachRes` は `0` で、`mapRes` は `[1,2,3,4,5]`

---

`forEachRes` は `5` で、`mapRes` は `[1,2,3,4,5]`

#### --answer--

`forEachRes` は `undefined` で、`mapRes` は `[6,7,8,9,10]`

### --question--

#### --text--

このコードの結果は何ですか？

```js
[, undefined, 'a', 'b', { 20: 5 }].sort();
```

#### --distractors--

配列をソートするためのサポートされていない要素があるためエラー。

---

コールバックが渡されていないためエラー。

---

```js
[empty, 'a', 'b', undefined, { '20': 5 }]
```

#### --answer--

```js
[{ '20': 5 }, 'a', 'b', undefined, empty]
```

### --question--

#### --text--

JavaScriptにおけるコールバック関数とはどのようなものですか？

#### --distractors--

宣言と同時に即座に呼び出される関数。

---

特定のコンテキストで呼び出される関数。

---

別の関数を返す関数。

#### --answer--

別の関数に引数として渡され、その関数のロジックによって実行される関数。

### --question--

#### --text--

配列に`reduce()`を使うとどのような結果になりますか？

#### --distractors--

条件を満たす要素があるかどうかを示すブール値。

---

指定したコールバック関数で全要素を縮小した配列。

---

ブール値の配列。

#### --answer--

アキュムレータの初期値とコールバック関数によって結果が異なります。

### --question--

#### --text--

数値のソートで比較関数が提供されない場合、`sort()`メソッドはどのように動作しますか？

#### --distractors--

空のスロットを`null`で埋める。

---

特殊文字の配列を返す。

---

配列を逆順にソートする。

#### --answer--

UTF-16コード単位に基づいて文字列として配列をソートします。

### --question--

#### --text--

JavaScriptの`some()`メソッドの目的は何ですか？

#### --distractors--

各要素に関数を適用した結果で新しい配列を作成する。

---

結果を生成せずに配列を繰り返し処理する。

---

コールバック関数に基づいて配列を単一の値に縮小する。

#### --answer--

配列内のいずれかの要素が指定されたテストに合格するかどうかを判定する。

### --question--

#### --text--

次のうちメソッドチェーンの有効な例はどれですか？

#### --distractors--

```js
Math.random();
```

---

```js
array.push(1).pop();
```

---

```js
console.log('Hello');
```

#### --answer--

```js
str.toLowerCase().trim().replace(' ', '_');
```

### --question--

#### --text--

次のコードの出力は何ですか？

```js
let numbers = [2, 4, 8, 10];

numbers.forEach(function(number) {
    console.log(number % 2);
});
```

#### --distractors--

`2 4 8 10`

---

`null null null null`

---

`1 2 4 5`

#### --answer--

`0 0 0 0`

### --question--

#### --text--

メソッドチェーンの利点はどれですか？

#### --distractors--

関数の実行時間を短縮してパフォーマンスを自動的に最適化する。

---

一時変数の必要性をなくすが、場合によってはメモリ使用量が増える。

---

エラー処理やデバッグがより簡単になる。

#### --answer--

複数の操作を1つの式で行えるため、構文が簡潔でコードの可読性が向上する。

### --question--

#### --text--

`sort`メソッドを使って特定のプロパティでオブジェクトの配列をソートするにはどうしますか？

#### --distractors--

`sort`メソッドはオブジェクトをソートできない。

---

ソート後に`reverse`メソッドを使う。

---

オブジェクトを文字列に変換してからソートする。

#### --answer--

プロパティの値を比較する比較関数を使う。

### --question--

#### --text--

メソッドチェーンで明確さとデバッグを向上させる一般的な方法は何ですか？

#### --distractors--

チェーン内のメソッド数を減らす。

---

プリミティブ値のみを返すメソッドのチェーンは避ける。

---

組み込みメソッドのみを使う。

#### --answer--

長いチェーンは複数のステップに分ける。

### --question--

#### --text--

コードでメソッドチェーンを過度に使うことの潜在的な欠点は何ですか？

#### --distractors--

コードの実行速度が遅くなる。

---

コメントの使用ができなくなる。

---

ファイルサイズが大きくなる。

#### --answer--

コードのデバッグが難しくなる可能性がある。

### --question--

#### --text--

配列のすべての要素が文字列かどうかを判定するにはどのメソッドを使いますか？

#### --distractors--

`some()`

---

`everyInstance()`

---

`filter()`

#### --answer--

`every()`

### --question--

#### --text--

次のコード実行後、`originalArray`の値は何になりますか？

```js
const originalArray = [{ id: 1 }, { id: 2 }, { id: 3 }];
const filteredArray = originalArray.filter(item => item.id > 1);
filteredArray[0].id = 4;
```

#### --distractors--

`[{ id: 1 }, { id: 2 }, { id: 3 }]`

---

`[{ id: 1 }]`

---

`[{ id: 4 }, { id: 2 }, { id: 3 }]`

#### --answer--

`[{ id: 1 }, { id: 4 }, { id: 3 }]`
### --question--

#### --text--

次のコード実行後、`shortWords`の値は何になりますか？

```js
const words = ['apple', 'banana', 'pear', 'kiwi'];
const shortWords = words.filter(word => word.length <= 5);
```

#### --distractors--

`[]`

---

`['pear', 'kiwi']`

---

`['apple', 'banana']`

#### --answer--

`['apple', 'pear', 'kiwi']`

### --question--

#### --text--

`reduce()`メソッドに初期値を引数として渡す目的は何ですか？

#### --distractors--

配列の長さを設定するため。

---

反復回数を制限するため。

---

関数の戻り値の型を指定するため。

#### --answer--

アキュムレータの開始値を定義するため。

### --question--

#### --text--

`map`メソッドは配列以外のオブジェクトに使えますか？

#### --distractors--

はい、どんなオブジェクトにも使えます。

---

はい、ただし数値プロパティを持つオブジェクトのみ。

---

JavaScriptのバージョンによります。

#### --answer--

いいえ、配列専用に設計されています。

### --question--

#### --text--

JavaScriptの`map`メソッドの主な目的は何ですか？

#### --distractors--

配列をソートし、元の順序を維持しながら新しい配列を返す。

---

条件に基づいて配列の要素をフィルターし、削除または追加する。

---

特定の要素を見つけ、そのインデックスと要素を返す。

#### --answer--

元の配列の各要素に指定した関数を呼び出した結果を含む新しい配列を作成する。
