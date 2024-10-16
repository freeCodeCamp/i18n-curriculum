---
id: 587d7b7d367417b2b2512b1c
title: Evalúa si un objeto tiene una propiedad
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

Ambos devuelven `true`.

# --instructions--

Termina de escribir la función para que devuelva `true` si el objeto pasado contiene los cuatro nombres, `Alan`, `Jeff`, `Sarah` and `Ryan` y devuelva `false` en caso contrario.

# --hints--

No se debe acceder directamente al objeto `users`

```js 

assert(__helpers.removeJSComments(code).match(/users/gm).length <= 2)

```

El objeto `users` sólo debe contener las claves `Alan`, `Jeff`, `Sarah` y `Ryan`

```js
assert(
  'Alan' in users &&
    'Jeff' in users &&
    'Sarah' in users &&
    'Ryan' in users &&
    Object.keys(users).length === 4
);
```

La función `isEveryoneHere` debe devolver `true` si `Alan`, `Jeff`, `Sarah` y `Ryan` son propiedades del objeto que se le pasa.

```js
assert(isEveryoneHere(users) === true);
```

La función `isEveryoneHere` debe devolver `false` si `Alan` no es una propiedad del objeto que se le pasa.

```js
assert(
  (function () {
    delete users.Alan;
    return isEveryoneHere(users);
  })() === false
);
```

La función `isEveryoneHere` debe devolver `false` si `Jeff` no es una propiedad del objeto que se le pasa.

```js
assert(
  (function () {
    delete users.Jeff;
    return isEveryoneHere(users);
  })() === false
);
```

La función `isEveryoneHere` debe devolver `false` si `Sarah` no es una propiedad del objeto que se le pasa.

```js
assert(
  (function () {
    delete users.Sarah;
    return isEveryoneHere(users);
  })() === false
);
```

La función `isEveryoneHere` debe devolver `false` si `Ryan` no es una propiedad del objeto que se le pasa.

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
