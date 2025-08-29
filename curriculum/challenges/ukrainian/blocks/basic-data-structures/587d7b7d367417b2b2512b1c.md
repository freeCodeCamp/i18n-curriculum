---
id: 587d7b7d367417b2b2512b1c
title: Перевірка наявності властивості в об’єкті
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

Обидва вони повернуть `true`.

# --instructions--

Завершіть написання функції таким чином, щоб вона повертала `true`, якщо переданий їй об’єкт містить всі чотири імені: `Alan`, `Jeff`, `Sarah` та `Ryan`, а в іншому випадку щоб повертала `false`.

# --hints--

Не звертайтесь до об’єкта `users` напряму

```js 

assert(__helpers.removeJSComments(code).match(/users/gm).length <= 2)

```

Об’єкт `users` повинен містити тільки ключі `Alan`, `Jeff`, `Sarah` та `Ryan`

```js
assert(
  'Alan' in users &&
    'Jeff' in users &&
    'Sarah' in users &&
    'Ryan' in users &&
    Object.keys(users).length === 4
);
```

Функція `isEveryoneHere` має повернути `true`, якщо `Alan`, `Jeff`, `Sarah` та `Ryan` є властивостями переданого їй об’єкту.

```js
assert(isEveryoneHere(users) === true);
```

Функція `isEveryoneHere` має повернути `false`, якщо `Alan` не є властивістю переданого їй об’єкту.

```js
assert(
  (function () {
    delete users.Alan;
    return isEveryoneHere(users);
  })() === false
);
```

Функція `isEveryoneHere` має повернути `false`, якщо `Jeff` не є властивістю переданого їй об’єкту.

```js
assert(
  (function () {
    delete users.Jeff;
    return isEveryoneHere(users);
  })() === false
);
```

Функція `isEveryoneHere` має повернути `false`, якщо `Sarah` не є властивістю переданого їй об’єкту.

```js
assert(
  (function () {
    delete users.Sarah;
    return isEveryoneHere(users);
  })() === false
);
```

Функція `isEveryoneHere` має повернути `false`, якщо `Ryan` не є властивістю переданого їй об’єкту.

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
