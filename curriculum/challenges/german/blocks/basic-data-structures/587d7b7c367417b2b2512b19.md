---
id: 587d7b7c367417b2b2512b19
title: Ein in einem Objekt verschachteltes Objekt ändern
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

`nestedObject` hat drei Eigenschaften: `id` (Wert ist eine Zahl), `date` (Wert ist ein String) und `data` (Wert ist ein Objekt mit verschachtelter Struktur). Obwohl Strukturen schnell komplex werden können, können wir immer noch die gleichen Notationen verwenden, um auf die benötigten Informationen zuzugreifen. Um den Wert `10` der Eigenschaft `busy` des verschachtelten Objekts `onlineStatus` zuzuweisen, verwenden wir die Punktnotation, um auf die Eigenschaft zu verweisen:

```js
nestedObject.data.onlineStatus.busy = 10;
```

# --instructions--

Hier haben wir ein Objekt `userActivity` definiert, das ein weiteres, darin verschachteltes Objekt enthält. Setze den Wert des `online`-Schlüssels auf `45`.

# --hints--

`userActivity` sollte die Eigenschaften `id`, `date` und `data` haben.

```js
assert(
  'id' in userActivity && 'date' in userActivity && 'data' in userActivity
);
```

`userActivity` sollte einen `data`-Schlüssel haben, der auf ein Objekt mit den Schlüsseln `totalUsers` und `online` gesetzt ist.

```js
assert('totalUsers' in userActivity.data && 'online' in userActivity.data);
```

Die `online`-Eigenschaft, die in den `data`-Schlüssel von `userActivity` verschachtelt ist, sollte auf `45` gesetzt werden

```js
assert(userActivity.data.online === 45);
```

Die `online` Eigenschaft sollte mit Punkt- oder Klammernotation gesetzt werden.

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
