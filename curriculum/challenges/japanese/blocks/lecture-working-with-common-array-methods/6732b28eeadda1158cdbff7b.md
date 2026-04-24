---
id: 6732b28eeadda1158cdbff7b
title: 配列に特定の値が含まれているかどうかを確認するには？
challengeType: 19
dashedName: how-can-you-check-if-an-array-contains-a-certain-value
---

# --interactive--

JavaScriptでは、`includes()`メソッドが配列に特定の値が含まれているかどうかを簡単かつ効率的に確認する方法です。このメソッドはブール値を返します。配列に指定した要素が含まれていれば`true`、そうでなければ`false`です。

`includes()`メソッドは、要素の正確な位置を知る必要がない場合に、配列内に要素が存在するかどうかを素早く確認するのに特に便利です。まずは`includes()`メソッドの使い方の例を見てみましょう。

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange", "mango"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("grape"));  // false
```

:::

この例では、果物の配列があります。`includes()`メソッドを使って`banana`が配列にあるかどうかを確認しています。`true`が確かに存在するので`banana`を返します。次に`grape`を確認すると、配列にないため`false`を返します。

`includes()`メソッドは文字列を扱う場合に大文字と小文字を区別します。つまり、先頭が大文字の`Banana`とすべて小文字の`banana`は異なる値とみなされます。これを示す例を見てみましょう。

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("Banana")); // false
```

:::

この場合、すべて小文字の`banana`は配列に見つかりますが、先頭が大文字の`Banana`は見つからないため、2回目の`includes()`の呼び出しは`false`を返します。

`includes()`メソッドは、検索を開始する配列内の位置を指定するオプションの第2パラメータも受け取れます。これは配列の特定の部分で要素の存在を確認したい場合に便利です。この機能の使い方は次の通りです。

:::interactive_editor

```js
let numbers = [10, 20, 30, 40, 50, 30, 60];
console.log(numbers.includes(30, 3)); // true
console.log(numbers.includes(30, 4)); // true
```

:::

最初の`console.log`では、インデックス`30`から始めて数値`3`を探しています。この場合、インデックス`30`以降に数値`3`が現れるので、`includes()`メソッドは`true`を返します。

2回目の`console.log`も同様です。インデックス`30`から始めて数値`4`を探しています。そのインデックス以降に数値`30`が現れるため、`true`を返します。

`includes()`は厳密な等価比較（`===`）を使うため、異なる型を区別できます。例えば：

:::interactive_editor

```js
let mixedArray = [1, "2", 3, "4", 5];
console.log(mixedArray.includes(2));  // false
console.log(mixedArray.includes("2")); // true
```

:::

この場合、数値の`2`と文字列の`"2"`は異なるデータ型とみなされます。したがって、最初の`console.log`は`false`を返し、2回目の`console.log`は`true`を返します。

`includes()`メソッドは配列内の要素の存在を確認する強力なツールです。使い方が簡単で効率的なため、配列を検索するために複雑なループや条件を書く手間を省けます。文字列、数値、または混合データ型を扱う場合でも、`includes()`は値が配列に存在するかどうかを簡単に確認できます。

# --questions--

## --text--

次のコードの出力は何になりますか？

```js
let arr = [1, 2, 3, 4, 5];
console.log(arr.includes(3, 3));
```

## --answers--

`true`

### --feedback--

`includes()`の第2パラメータは検索開始位置を指定します。

---

`false`

---

`undefined`

### --feedback--

`includes()`の第2パラメータは検索開始位置を指定します。

---

エラーが発生します。

### --feedback--

`includes()`の第2パラメータは検索開始位置を指定します。

## --video-solution--

2

## --text--

次のコードの出力は何になりますか？

```js
let arr = ["a", "b", "c", "d", "e"];
console.log(arr.includes("C"));
```

## --answers--

`true`

### --feedback--

文字列を扱う場合、`includes()`は大文字と小文字を区別することを覚えておいてください。

---

`false`

---

`undefined`

### --feedback--

文字列を扱う場合、`includes()`は大文字と小文字を区別することを覚えておいてください。

---

エラーが発生します。

### --feedback--

文字列を扱う場合、`includes()`は大文字と小文字を区別することを覚えておいてください。

## --video-solution--

2

## --text--

次のコードの出力は何になりますか？

```js
let arr = [1, "2", 3, "4", 5];
console.log(arr.includes("3"));
```

## --answers--

`true`

### --feedback--

`includes()`メソッドは比較に厳密な等価（`===`）を使います。

---

`false`

---

`undefined`

### --feedback--

`includes()`メソッドは比較に厳密な等価（`===`）を使います。

---

エラーが発生します。

### --feedback--

`includes()`メソッドは比較に厳密な等価（`===`）を使います。

## --video-solution--

2
