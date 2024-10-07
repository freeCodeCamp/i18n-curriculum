---
id: 587d8254367417b2b2512c70
title: 在ES6中创建和添加集
challengeType: 1
forumTopicId: 301636
dashedName: create-and-add-to-sets-in-es6
---

# --description--

Now that you have worked through ES5, you are going to perform something similar in ES6. This will be considerably easier. ES6 contains a built-in data structure `Set` so many of the operations you wrote by hand are now included for you. Let's take a look:

创建一个新的空集:

```js
var set = new Set();
```

您可以创建一个具有值的集合:

```js
var set = new Set(1);
```

您可以使用数组创建一个集合:

```js
var set = new Set([1, 2, 3]);
```

创建集合后，你可以使用 `add` 方法添加所需的值：

```js
var set = new Set([1, 2, 3]);
set.add([4, 5, 6]);
```

提醒一下，集合是一种不能包含重复值的数据结构：

```js
var set = new Set([1, 2, 3, 1, 2, 3]);
// set contains [1, 2, 3] only
```

# --instructions--

在这个练习中，返回一个具有以下值的集合：`1, 2, 3, 'Taco', 'Cat', 'Awesome'`

# --hints--

你的 `Set` 应该只包含值 `1, 2, 3, Taco, Cat, Awesome`。

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
