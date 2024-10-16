---
id: 587d7b7d367417b2b2512b1c
title: 檢查對象是否具有某個屬性
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

這兩者結果都應該爲 `true`。

# --instructions--

請完善這個函數，如果傳遞給它的對象包含四個名字 `Alan`、`Jeff`、`Sarah` 和 `Ryan`，函數返回 `true`，否則返回 `false`。

# --hints--

不應直接訪問 `users` 對象。

```js 

assert(__helpers.removeJSComments(code).match(/users/gm).length <= 2)

```

`users` 對象應該只包含 `Alan`、`Jeff`、`Sarah`、`Ryan` 4 個鍵。

```js
assert(
  'Alan' in users &&
    'Jeff' in users &&
    'Sarah' in users &&
    'Ryan' in users &&
    Object.keys(users).length === 4
);
```

如果 `Alan`、`Jeff`、`Sarah`、`Ryan` 是傳遞給函數 `isEveryoneHere` 對象的屬性，則函數應返回 `true`。

```js
assert(isEveryoneHere(users) === true);
```

如果傳遞給函數 `isEveryoneHere` 對象的屬性中不包含 `Alan`，則函數返回 `false`。

```js
assert(
  (function () {
    delete users.Alan;
    return isEveryoneHere(users);
  })() === false
);
```

如果傳遞給函數 `isEveryoneHere` 對象的屬性中不包含 `Jeff`，則函數返回 `false`。

```js
assert(
  (function () {
    delete users.Jeff;
    return isEveryoneHere(users);
  })() === false
);
```

如果傳遞給函數 `isEveryoneHere` 對象的屬性中不包含 `Sarah`，則函數返回 `false`。

```js
assert(
  (function () {
    delete users.Sarah;
    return isEveryoneHere(users);
  })() === false
);
```

如果傳遞給函數 `isEveryoneHere` 對象的屬性中不包含 `Ryan`，則函數返回 `false`。

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
