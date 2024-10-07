---
id: 587d8254367417b2b2512c71
title: 从 ES6 中的集合中删除项目
challengeType: 1
forumTopicId: 301713
dashedName: remove-items-from-a-set-in-es6
---

# --description--

Let's practice removing items from an ES6 Set using the `delete` method.

首先，创建一个 ES6 集合：

```js
var set = new Set([1,2,3]);
```

现在使用 `delete` 方法从你的集合中删除一个项目。

```js
set.delete(1);
console.log([...set]) // should return [ 2, 3 ]
```

# --instructions--

现在，创建一个包含整数 1、2、3、4 和 5 的集合。

删除值 2 和 5，然后返回该集合。

# --hints--

你的集合应包含值 1、3 和 4

```js
assert(
  (function () {
    var test = checkSet();
    return test.has(1) && test.has(3) && test.has(4) && test.size === 3;
  })()
);
```

# --seed--

## --seed-contents--

```js
function checkSet(){
  // Only change code below this line
  var set = null;

  // Only change code above this line
  return set;   
}
```

# --solutions--

```js
function checkSet(){
var set = new Set([1,2,3,4,5]);
set.delete(2);
set.delete(5);
return set;}
```
