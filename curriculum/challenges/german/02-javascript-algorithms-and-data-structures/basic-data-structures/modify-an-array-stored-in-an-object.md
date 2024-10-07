---
id: 587d7b7d367417b2b2512b1f
title: Ändere ein Array, das in einem Objekt gespeichert ist
challengeType: 1
forumTopicId: 301163
dashedName: modify-an-array-stored-in-an-object
---

# --description--

Now you've seen all the basic operations for JavaScript objects. You can add, modify, and remove key-value pairs, check if keys exist, and iterate over all the keys in an object. As you continue learning JavaScript you will see even more versatile applications of objects. Additionally, the Data Structures lessons located in the Coding Interview Prep section of the curriculum also cover the ES6 <dfn>Map</dfn> and <dfn>Set</dfn> objects, both of which are similar to ordinary objects but provide some additional features. Now that you've learned the basics of arrays and objects, you're fully prepared to begin tackling more complex problems using JavaScript!

# --instructions--

Schau dir das Objekt an, das wir im Code-Editor bereigestellt haben. Das `user` Objekt enthält drei Schlüssel. Der `data` Schlüssel enthält fünf Schlüssel, von denen einer ein Array von `friends` enthält. Daran kannst du erkennen, wie flexibel Objekte als Datenstrukturen sind. Wir haben begonnen, eine Funktion `addFriend` zu schreiben. Schließe sie so ab, dass sie ein `user` Objekt nimmt und den Namen des `friend` Arguments zu dem in `user.data.friends` gespeicherten Array hinzufügt und dieses Array zurückgibt.

# --hints--

Das `user` Objekt sollte `name`, `age` und `data` Schlüssel haben.

```js
assert('name' in user && 'age' in user && 'data' in user);
```

Die Funktion `addFriend` sollte ein `user`-Objekt und einen `friend` String als Argumente akzeptieren und den Freund zum Array der `friends` zum `user` Objekt hinzufügen.

```js
assert(
  (function () {
    let L1 = user.data.friends.length;
    addFriend(user, 'Sean');
    let L2 = user.data.friends.length;
    return L2 === L1 + 1;
  })()
);
```

`addFriend(user, "Pete")` sollte `["Sam", "Kira", "Tomo", "Pete"]` zurückgeben.

```js
assert.deepEqual(
  (function () {
    delete user.data.friends;
    user.data.friends = ['Sam', 'Kira', 'Tomo'];
    return addFriend(user, 'Pete');
  })(),
  ['Sam', 'Kira', 'Tomo', 'Pete']
);
```

# --seed--

## --seed-contents--

```js
let user = {
  name: 'Kenneth',
  age: 28,
  data: {
    username: 'kennethCodesAllDay',
    joinDate: 'March 26, 2016',
    organization: 'freeCodeCamp',
    friends: [
      'Sam',
      'Kira',
      'Tomo'
    ],
    location: {
      city: 'San Francisco',
      state: 'CA',
      country: 'USA'
    }
  }
};

function addFriend(userObj, friend) {
  // Only change code below this line

  // Only change code above this line
}

console.log(addFriend(user, 'Pete'));
```

# --solutions--

```js
let user = {
  name: 'Kenneth',
  age: 28,
  data: {
    username: 'kennethCodesAllDay',
    joinDate: 'March 26, 2016',
    organization: 'freeCodeCamp',
    friends: [
      'Sam',
      'Kira',
      'Tomo'
    ],
    location: {
      city: 'San Francisco',
      state: 'CA',
      country: 'USA'
    }
  }
};

function addFriend(userObj, friend) {
  userObj.data.friends.push(friend);
  return userObj.data.friends;
}
```
