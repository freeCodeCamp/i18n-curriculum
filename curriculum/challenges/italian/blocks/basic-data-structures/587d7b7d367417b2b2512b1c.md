---
id: 587d7b7d367417b2b2512b1c
title: Verificare se un oggetto ha una proprietà
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

Entrambi restituirebbero `true`.

# --instructions--

Finisci di scrivere la funzione in modo che restituisca `true` se l'oggetto ad essa passato contiene tutti e quattro i nomi, `Alan`, `Jeff`, `Sarah` e `Ryan`, altrimenti da come risultato `false`.

# --hints--

Non dovresti accedere direttamente all'oggetto `users`

```js 

assert(__helpers.removeJSComments(code).match(/users/gm).length <= 2)

```

L'oggetto `users` dovrebbe contenere solo le chiavi `Alan`, `Jeff`, `Sarah`e `Ryan`

```js
assert(
  'Alan' in users &&
    'Jeff' in users &&
    'Sarah' in users &&
    'Ryan' in users &&
    Object.keys(users).length === 4
);
```

La funzione `isEveryoneHere` dovrebbe restituire `true` se `Alan`, `Jeff`, `Sarah` e `Ryan` sono proprietà dell'oggetto ad essa passato.

```js
assert(isEveryoneHere(users) === true);
```

La funzione `isEveryoneHere` dovrebbe restituire `false` se `Alan` non è una proprietà dell'oggetto ad essa passato.

```js
assert(
  (function () {
    delete users.Alan;
    return isEveryoneHere(users);
  })() === false
);
```

La funzione `isEveryoneHere` dovrebbe restituire `false` se `Jeff` non è una proprietà dell'oggetto ad essa passato.

```js
assert(
  (function () {
    delete users.Jeff;
    return isEveryoneHere(users);
  })() === false
);
```

La funzione `isEveryoneHere` dovrebbe restituire `false` se `Sarah` non è una proprietà dell'oggetto ad essa passato.

```js
assert(
  (function () {
    delete users.Sarah;
    return isEveryoneHere(users);
  })() === false
);
```

La funzione `isEveryoneHere` dovrebbe restituire `false` se `Ryan` non è una proprietà dell'oggetto ad essa passato.

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
