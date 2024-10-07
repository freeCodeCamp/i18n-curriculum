---
id: 587d7b7d367417b2b2512b1c
title: 객체에 속성이 있는지 확인하기
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

두 방법 모두 `true`를 반환합니다.

# --instructions--

함수를 완성하여 전달된 객체에 모든 이름 `Alan`, `Jeff`, `Sarah`, `Ryan`이 모두 포함되어 있는 경우 `true`를 반환하고 그렇지 않으면 `false`를 반환합니다.

# --hints--

`users` 객체에는 직접 액세스하지 않아야 합니다.

```js 

assert(__helpers.removeJSComments(code).match(/users/gm).length <= 2)

```

`users` 객체는 오직 키 `Alan`, `Jeff`, `Sarah`, `Ryan`만을 포함해야 합니다.

```js
assert(
  'Alan' in users &&
    'Jeff' in users &&
    'Sarah' in users &&
    'Ryan' in users &&
    Object.keys(users).length === 4
);
```

함수 `isEveryoneHere`는 전달된 객체에 `Alan`, `Jeff`, `Sarah`, `Ryan`이라는 속성이 있는 경우 `true`를 반환해야 합니다.

```js
assert(isEveryoneHere(users) === true);
```

함수 `isEveryoneHere`는 전달된 객체에 `Alan`이 속성으로 없는 경우 `false`를 반환해야 합니다.

```js
assert(
  (function () {
    delete users.Alan;
    return isEveryoneHere(users);
  })() === false
);
```

함수 `isEveryoneHere`는 전달된 객체에 `Jeff`가 속성으로 없는 경우 `false`를 반환해야 합니다.

```js
assert(
  (function () {
    delete users.Jeff;
    return isEveryoneHere(users);
  })() === false
);
```

함수 `isEveryoneHere`는 전달된 객체에 `Sarah`가 속성으로 없는 경우 `false`를 반환해야 합니다.

```js
assert(
  (function () {
    delete users.Sarah;
    return isEveryoneHere(users);
  })() === false
);
```

함수 `isEveryoneHere`는 전달된 객체에 `Ryan`이 속성으로 없는 경우 `false`를 반환해야 합니다.

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
