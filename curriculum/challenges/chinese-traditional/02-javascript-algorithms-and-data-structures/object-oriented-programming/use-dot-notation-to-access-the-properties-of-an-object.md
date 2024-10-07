---
id: 587d7dac367417b2b2512b74
title: 使用點符號來訪問對象的屬性
challengeType: 1
forumTopicId: 301333
dashedName: use-dot-notation-to-access-the-properties-of-an-object
---

# --description--

The last challenge created an object with various properties. Now you'll see how to access the values of those properties. 如下所示：

```js
let duck = {
  name: "Aflac",
  numLegs: 2
};
console.log(duck.name);
```

我們可以用“點號表示法”來訪問對象的屬性，`duck` 後面加上點號以及屬性名 `name`，來訪問到 `Aflac`。

# --instructions--

請在控制檯裏面輸出 `dog` 對象中兩個屬性的值。

# --hints--

你應該使用 `console.log` 來將 `dog` 對象的 `name` 屬性值輸出到控制檯。

```js
assert(/console.log\(.*dog\.name.*\)/g.test(__helpers.removeJSComments(code)));
```

你應該使用 `console.log` 來將 `dog` 對象的 `numLegs` 屬性值輸出到控制檯。

```js
assert(/console.log\(.*dog\.numLegs.*\)/g.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
let dog = {
  name: "Spot",
  numLegs: 4
};
// Only change code below this line
```

# --solutions--

```js
let dog = {
  name: "Spot",
  numLegs: 4
};
console.log(dog.name);
console.log(dog.numLegs);
```
