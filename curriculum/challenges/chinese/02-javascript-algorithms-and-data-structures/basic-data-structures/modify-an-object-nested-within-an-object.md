---
id: 587d7b7c367417b2b2512b19
title: 修改嵌套在对象中的对象
challengeType: 1
forumTopicId: 301164
dashedName: modify-an-object-nested-within-an-object
---

# --description--

Now let's take a look at a slightly more complex object. Object properties can be nested to an arbitrary depth, and their values can be any type of data supported by JavaScript, including arrays and even other objects. Consider the following:

```js
let nestedObject = {
  id: 28802695164,
  date: 'December 31, 2016',
  data: {
    totalUsers: 99,
    online: 80,
    onlineStatus: {
      active: 67,
      away: 13,
      busy: 8
    }
  }
};
```

`nestedObject` 有 3 个属性：`id`（属性值为数字）、`date`（属性值为字符串）、`data`（属性值为嵌套的对象）。 虽然对象中的数据可能很复杂，我们仍能使用上一个挑战中讲到的写法来访问我们需要的信息。 如果我们想把嵌套在 `onlineStatus` 中 `busy` 的属性值改为 `10`，可以用点号表示法来这样实现：

```js
nestedObject.data.onlineStatus.busy = 10;
```

# --instructions--

我们已经定义了一个 `userActivity` 对象，它包含了另一个对象。 请将 `online` 的属性值改为 `45`。

# --hints--

`userActivity` 应包含 `id`、`date` 和 `data` 属性。

```js
assert(
  'id' in userActivity && 'date' in userActivity && 'data' in userActivity
);
```

`userActivity` 应包含 `data` 属性，其属性值应为包含 `totalUsers` 和 `online` 属性的对象。

```js
assert('totalUsers' in userActivity.data && 'online' in userActivity.data);
```

`userActivity` 的 `data` 属性值中的 `online` 属性值应被改为 `45`。

```js
assert(userActivity.data.online === 45);
```

应使用点号表示法或方括号表示法来修改 `online` 属性值。

```js
assert.strictEqual(__helpers.removeJSComments(code).search(/online: 45/), -1);
```

# --seed--

## --seed-contents--

```js
let userActivity = {
  id: 23894201352,
  date: 'January 1, 2017',
  data: {
    totalUsers: 51,
    online: 42
  }
};

// Only change code below this line

// Only change code above this line

console.log(userActivity);
```

# --solutions--

```js
let userActivity = {
  id: 23894201352,
  date: 'January 1, 2017',
  data: {
    totalUsers: 51,
    online: 42
  }
};

userActivity.data.online = 45;
```
