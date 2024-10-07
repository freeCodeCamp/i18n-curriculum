---
id: 587d7b7a367417b2b2512b12
title: Slice() を使用した配列アイテムのコピー
challengeType: 1
forumTopicId: 301158
dashedName: copy-array-items-using-slice
---

# --description--

The next method we will cover is `slice()`. Rather than modifying an array, `slice()` copies or *extracts* a given number of elements to a new array, leaving the array it is called upon untouched. `slice()` takes only 2 parameters — the first is the index at which to begin extraction, and the second is the index at which to stop extraction (extraction will occur up to, but not including the element at this index). Consider this:

```js
let weatherConditions = ['rain', 'snow', 'sleet', 'hail', 'clear'];

let todaysWeather = weatherConditions.slice(1, 3);
```

`todaysWeather` の値は `['snow', 'sleet']` になりますが、`weatherConditions` の値は `['rain', 'snow', 'sleet', 'hail', 'clear']` のままです。

結果として、既存の配列から要素を抽出して新しい配列を作成したことになります。

# --instructions--

関数 `forecast` を定義しました。この関数は配列を引数として取ります。 `slice()` を使用して、引数の配列から情報を抽出し、文字列要素 `warm` と `sunny` を含む新しい配列を返すように、関数を変更してください。

# --hints--

`forecast` は `["warm", "sunny"]` を返す必要があります。

```js
assert.deepEqual(
  forecast(['cold', 'rainy', 'warm', 'sunny', 'cool', 'thunderstorms']),
  ['warm', 'sunny']
);
```

`forecast` 関数で `slice()` メソッドを使用する必要があります。

```js
assert(/\.slice\(/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function forecast(arr) {
  // Only change code below this line

  return arr;
}

// Only change code above this line
console.log(forecast(['cold', 'rainy', 'warm', 'sunny', 'cool', 'thunderstorms']));
```

# --solutions--

```js
function forecast(arr) {
  return arr.slice(2,4);
}
```
