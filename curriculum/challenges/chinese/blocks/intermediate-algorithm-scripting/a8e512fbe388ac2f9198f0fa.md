---
id: a8e512fbe388ac2f9198f0fa
title: 找出包含特定键值对的对象
challengeType: 1
forumTopicId: 16092
dashedName: wherefore-art-thou
---

# --description--

Make a function that looks through an array of objects (first argument) and returns an array of all objects that have matching name and value pairs (second argument). Each name and value pair of the source object has to be present in the object from the collection if it is to be included in the returned array.

比如，如果第一个参数是 `[{ first: "Romeo", last: "Montague" }, { first: "Mercutio", last: null }, { first: "Tybalt", last: "Capulet" }]`，第二个参数是 `{ last: "Capulet" }`。

# --hints--

`whatIsInAName([{ first: "Romeo", last: "Montague" }, { first: "Mercutio", last: null }, { first: "Tybalt", last: "Capulet" }], { last: "Capulet" })` 应返回 `[{ first: "Tybalt", last: "Capulet" }]`。

```js
assert.deepEqual(
  whatIsInAName(
    [
      { first: 'Romeo', last: 'Montague' },
      { first: 'Mercutio', last: null },
      { first: 'Tybalt', last: 'Capulet' }
    ],
    { last: 'Capulet' }
  ),
  [{ first: 'Tybalt', last: 'Capulet' }]
);
```

`whatIsInAName([{ "apple": 1 }, { "apple": 1 }, { "apple": 1, "bat": 2 }], { "apple": 1 })` 应返回 `[{ "apple": 1 }, { "apple": 1 }, { "apple": 1, "bat": 2 }]`。

```js
assert.deepEqual(
  whatIsInAName([{ apple: 1 }, { apple: 1 }, { apple: 1, bat: 2 }], {
    apple: 1
  }),
  [{ apple: 1 }, { apple: 1 }, { apple: 1, bat: 2 }]
);
```

`whatIsInAName([{ "apple": 1, "bat": 2 }, { "bat": 2 }, { "apple": 1, "bat": 2, "cookie": 2 }], { "apple": 1, "bat": 2 })` 应返回 `[{ "apple": 1, "bat": 2 }, { "apple": 1, "bat": 2, "cookie": 2 }]`。

```js
assert.deepEqual(
  whatIsInAName(
    [{ apple: 1, bat: 2 }, { bat: 2 }, { apple: 1, bat: 2, cookie: 2 }],
    { apple: 1, bat: 2 }
  ),
  [
    { apple: 1, bat: 2 },
    { apple: 1, bat: 2, cookie: 2 }
  ]
);
```

`whatIsInAName([{ "apple": 1, "bat": 2 }, { "apple": 1 }, { "apple": 1, "bat": 2, "cookie": 2 }], { "apple": 1, "cookie": 2 })` 应返回 `[{ "apple": 1, "bat": 2, "cookie": 2 }]`。

```js
assert.deepEqual(
  whatIsInAName(
    [{ apple: 1, bat: 2 }, { apple: 1 }, { apple: 1, bat: 2, cookie: 2 }],
    { apple: 1, cookie: 2 }
  ),
  [{ apple: 1, bat: 2, cookie: 2 }]
);
```

`whatIsInAName([{ "apple": 1, "bat": 2 }, { "apple": 1 }, { "apple": 1, "bat": 2, "cookie": 2 }, { "bat":2 }], { "apple": 1, "bat": 2 })` 应返回 `[{ "apple": 1, "bat": 2 }, { "apple": 1, "bat": 2, "cookie":2 }]`。

```js
assert.deepEqual(
  whatIsInAName(
    [
      { apple: 1, bat: 2 },
      { apple: 1 },
      { apple: 1, bat: 2, cookie: 2 },
      { bat: 2 }
    ],
    { apple: 1, bat: 2 }
  ),
  [
    { apple: 1, bat: 2 },
    { apple: 1, bat: 2, cookie: 2 }
  ]
);
```

`whatIsInAName([{"a": 1, "b": 2, "c": 3}], {"a": 1, "b": 9999, "c": 3})` 应返回 `[]`。

```js
assert.deepEqual(
  whatIsInAName([{ a: 1, b: 2, c: 3 }], { a: 1, b: 9999, c: 3 }),
  []
);
```

`whatIsInAName([{"a": 1, "b": 2, "c": 3, "d": 9999}], {"a": 1, "b": 9999, "c": 3})` 应该返回 `[]`。

```js
assert.deepEqual(
  whatIsInAName([{ a: 1, b: 2, c: 3, d: 9999 }], { a: 1, b: 9999, c: 3 }),
  []
);
```

# --seed--

## --seed-contents--

```js
function whatIsInAName(collection, source) {

}

whatIsInAName([{ first: "Romeo", last: "Montague" }, { first: "Mercutio", last: null }, { first: "Tybalt", last: "Capulet" }], { last: "Capulet" });
```

# --solutions--

```js
function whatIsInAName(collection, source) {
  const arr = [];
  const keys = Object.keys(source);
  collection.forEach(function(e) {
    if(keys.every(function(key) {return e[key] === source[key];})) {
      arr.push(e);
    }
  });
  return arr;
}
```
