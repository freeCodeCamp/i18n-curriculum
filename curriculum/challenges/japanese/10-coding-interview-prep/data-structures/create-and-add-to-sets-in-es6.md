---
id: 587d8254367417b2b2512c70
title: ES6 で Set を作成する・Set に追加する
challengeType: 1
forumTopicId: 301636
dashedName: create-and-add-to-sets-in-es6
---

# --description--

Now that you have worked through ES5, you are going to perform something similar in ES6. This will be considerably easier. ES6 contains a built-in data structure `Set` so many of the operations you wrote by hand are now included for you. Let's take a look:

新しい空のセット (集合) を作成するには次のようにします。

```js
var set = new Set();
```

1 つの値を持つセットを作成できます。

```js
var set = new Set(1);
```

配列を使用してセットを作成できます。

```js
var set = new Set([1, 2, 3]);
```

セットを作成したら、`add` メソッドを使用して任意の値を追加できます。

```js
var set = new Set([1, 2, 3]);
set.add([4, 5, 6]);
```

セットは重複値を含むことができないデータ構造であることを思い出してください。

```js
var set = new Set([1, 2, 3, 1, 2, 3]);
// set contains [1, 2, 3] only
```

# --instructions--

この演習では、`1、2、3、'Taco'、'Cat'、'Awesome'` という値のセットを返してください。

# --hints--

`Set` には `1、2、3、Taco、Cat、Awesome` という値のみを含める必要があります。

```js
assert(
  (function () {
    var test = checkSet();
    return (
      test.size == 6 &&
      test.has(1) &&
      test.has(2) &&
      test.has(3) &&
      test.has('Taco') &&
      test.has('Cat') &&
      test.has('Awesome')
    );
  })()
);
```

# --seed--

## --seed-contents--

```js
function checkSet() {
  var set = new Set([1, 2, 3, 3, 2, 1, 2, 3, 1]);
  // Only change code below this line

  // Only change code above this line
  console.log(Array.from(set));
  return set;
}

checkSet();
```

# --solutions--

```js
function checkSet(){var set = new Set([1,2,3,'Taco','Cat','Awesome']);
return set;}
```
