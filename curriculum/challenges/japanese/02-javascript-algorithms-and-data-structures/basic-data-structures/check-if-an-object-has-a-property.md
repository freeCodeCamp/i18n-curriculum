---
id: 587d7b7d367417b2b2512b1c
title: オブジェクトにプロパティがあるかどうかを確認する
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

どちらも `true` を返します。

# --instructions--

渡されたオブジェクトに `Alan`、`Jeff`、`Sarah`、`Ryan` の 4 つの名前すべてが含まれている場合は `true` を返し、そうでない場合は `false` を返すように、関数の記述を完成させてください。

# --hints--

`users` オブジェクトに直接アクセスすることはできません。

```js 

assert(__helpers.removeJSComments(code).match(/users/gm).length <= 2)

```

`users` オブジェクトには `Alan`、`Jeff`、`Sarah`、`Ryan` のキーのみを含めます。

```js
assert(
  'Alan' in users &&
    'Jeff' in users &&
    'Sarah' in users &&
    'Ryan' in users &&
    Object.keys(users).length === 4
);
```

関数 `isEveryoneHere` は、`Alan`、`Jeff`、`Sarah`、`Ryan` が渡されたオブジェクトのプロパティである場合、`true` を返す必要があります。

```js
assert(isEveryoneHere(users) === true);
```

関数 `isEveryoneHere` は、`Alan` が渡されたオブジェクトのプロパティではない場合、`false` を返す必要があります。

```js
assert(
  (function () {
    delete users.Alan;
    return isEveryoneHere(users);
  })() === false
);
```

関数 `isEveryoneHere` は、`Jeff` が渡されたオブジェクトのプロパティではない場合、`false` を返す必要があります。

```js
assert(
  (function () {
    delete users.Jeff;
    return isEveryoneHere(users);
  })() === false
);
```

関数 `isEveryoneHere` は、`Sarah` が渡されたオブジェクトのプロパティではない場合、`false` を返す必要があります。

```js
assert(
  (function () {
    delete users.Sarah;
    return isEveryoneHere(users);
  })() === false
);
```

関数 `isEveryoneHere` は、`Ryan` が渡されたオブジェクトのプロパティではない場合、`false` を返す必要があります。

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
