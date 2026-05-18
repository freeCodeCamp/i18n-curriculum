---
id: af2170cad53daa0770fabdea
title: Mabadiliko
challengeType: 1
forumTopicId: 16025
dashedName: mutations
---

# --description--

Rudisha `true` ikiwa mfuatano wa herufi katika kipengele cha kwanza cha safu ya data una herufi zote za mfuatano wa herufi katika kipengele cha pili cha safu ya data.

Kwa mfano, `["hello", "Hello"]`, inapaswa kurudisha `true` kwa sababu herufi zote katika mfuatano wa herufi wa pili zipo katika wa kwanza, bila kuzingatia herufi kubwa au ndogo.

Hoja `["hello", "hey"]` inapaswa kurudisha `false` kwa sababu mfuatano wa herufi `hello` huna `y`.

Mwishowe, `["Alien", "line"]`, inapaswa kurudisha `true` kwa sababu herufi zote katika `line` zipo katika `Alien`.

# --hints--

`mutation(["hello", "hey"])` inapaswa kurudisha `false`.

```js
assert.isFalse(mutation(['hello', 'hey']));
```

`mutation(["hello", "Hello"])` inapaswa kurudisha `true`.

```js
assert.isTrue(mutation(['hello', 'Hello']));
```

`mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])` inapaswa kurudisha `true`.

```js
assert.isTrue(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']));
```

`mutation(["Mary", "Army"])` inapaswa kurudisha `true`.

```js
assert.isTrue(mutation(['Mary', 'Army']));
```

`mutation(["Mary", "Aarmy"])` inapaswa kurudisha `true`.

```js
assert.isTrue(mutation(['Mary', 'Aarmy']));
```

`mutation(["Alien", "line"])` inapaswa kurudisha `true`.

```js
assert.isTrue(mutation(['Alien', 'line']));
```

`mutation(["floor", "for"])` inapaswa kurudisha `true`.

```js
assert.isTrue(mutation(['floor', 'for']));
```

`mutation(["hello", "neo"])` inapaswa kurudisha `false`.

```js
assert.isFalse(mutation(['hello', 'neo']));
```

`mutation(["voodoo", "no"])` inapaswa kurudisha `false`.

```js
assert.isFalse(mutation(['voodoo', 'no']));
```

`mutation(["ate", "date"])` inapaswa kurudisha `false`.

```js
assert.isFalse(mutation(['ate', 'date']));
```

`mutation(["Tiger", "Zebra"])` inapaswa kurudisha `false`.

```js
assert.isFalse(mutation(['Tiger', 'Zebra']));
```

`mutation(["Noel", "Ole"])` inapaswa kurudisha `true`.

```js
assert.isTrue(mutation(['Noel', 'Ole']));
```

# --seed--

## --seed-contents--

```js
function mutation(arr) {
  return arr;
}

mutation(['hello', 'hey']);
```

# --solutions--

```js
function mutation(arr) {
  let hash = Object.create(null);

  arr[0]
    .toLowerCase()
    .split('')
    .forEach(c => (hash[c] = true));

  return !arr[1]
    .toLowerCase()
    .split('')
    .filter(c => !hash[c]).length;
}

mutation(['hello', 'hey']);
```
