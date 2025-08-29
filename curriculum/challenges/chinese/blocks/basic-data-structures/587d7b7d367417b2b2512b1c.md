---
id: 587d7b7d367417b2b2512b1c
title: 检查对象是否具有某个属性
challengeType: 1
forumTopicId: 301155
dashedName: check-if-an-object-has-a-property
---

# --description--

Now we can add, modify, and remove keys from objects. But what if we just wanted to know if an object has a specific property? JavaScript provides us with two different ways to do this. One uses the `hasOwnProperty()` method and the other uses the `in` keyword. If we have an object `users` with a property of `Alan`, we could check for its presence in either of the following ways:

```js
users.hasOwnProperty('Alan');
'Alan' in users;
```

这两者结果都应该为 `true`。

# --instructions--

请完善这个函数，如果传递给它的对象包含四个名字 `Alan`、`Jeff`、`Sarah` 和 `Ryan`，函数返回 `true`，否则返回 `false`。

# --hints--

不应直接访问 `users` 对象。

```js 

assert(__helpers.removeJSComments(code).match(/users/gm).length <= 2)

```

`users` 对象应该只包含 `Alan`、`Jeff`、`Sarah`、`Ryan` 4 个键。

```js
assert(
  'Alan' in users &&
    'Jeff' in users &&
    'Sarah' in users &&
    'Ryan' in users &&
    Object.keys(users).length === 4
);
```

如果 `Alan`、`Jeff`、`Sarah`、`Ryan` 是传递给函数 `isEveryoneHere` 对象的属性，则函数应返回 `true`。

```js
assert(isEveryoneHere(users) === true);
```

如果传递给函数 `isEveryoneHere` 对象的属性中不包含 `Alan`，则函数返回 `false`。

```js
assert(
  (function () {
    delete users.Alan;
    return isEveryoneHere(users);
  })() === false
);
```

如果传递给函数 `isEveryoneHere` 对象的属性中不包含 `Jeff`，则函数返回 `false`。

```js
assert(
  (function () {
    delete users.Jeff;
    return isEveryoneHere(users);
  })() === false
);
```

如果传递给函数 `isEveryoneHere` 对象的属性中不包含 `Sarah`，则函数返回 `false`。

```js
assert(
  (function () {
    delete users.Sarah;
    return isEveryoneHere(users);
  })() === false
);
```

如果传递给函数 `isEveryoneHere` 对象的属性中不包含 `Ryan`，则函数返回 `false`。

```js
assert(
  (function () {
    delete users.Ryan;
    return isEveryoneHere(users);
  })() === false
);
```

# --seed--

## --seed-contents--

```js
let users = {
  Alan: {
    age: 27,
    online: true
  },
  Jeff: {
    age: 32,
    online: true
  },
  Sarah: {
    age: 48,
    online: true
  },
  Ryan: {
    age: 19,
    online: true
  }
};

function isEveryoneHere(userObj) {
  // Only change code below this line

  // Only change code above this line
}

console.log(isEveryoneHere(users));
```

# --solutions--

```js
let users = {
  Alan: {
    age: 27,
    online: true
  },
  Jeff: {
    age: 32,
    online: true
  },
  Sarah: {
    age: 48,
    online: true
  },
  Ryan: {
    age: 19,
    online: true
  }
};

function isEveryoneHere(userObj) {
  return [
    'Alan',
    'Jeff',
    'Sarah',
    'Ryan'
  ].every(user => userObj.hasOwnProperty(user));
}

console.log(isEveryoneHere(users));
```
