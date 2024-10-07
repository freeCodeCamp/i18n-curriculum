---
id: 596a8888ab7c01048de257d5
title: Deepcopy
challengeType: 1
forumTopicId: 302247
dashedName: deepcopy
---

# --description--

Schreibe eine Funktion, die eine Deepcopy eines bestimmten Objekts zurückgibt. Die Kopie darf nicht dasselbe Objekt sein, das übergeben wurde.

Bei dieser Aufgabe wird nicht geprüft, ob:

<ul>
  <li>Objekte mit Eigenschaften, die Funktionen sind</li>
  <li>Datumsobjekte oder Objekte mit Eigenschaften, die Datumsobjekte sind</li>
  <li>RegEx oder ein Objekt mit Eigenschaften, die RegEx-Objekte sind</li>
  <li>Kopieren von Prototypen</li>
</ul>

# --hints--

`deepcopy` sollte eine Funktion sein.

```js
assert(typeof deepcopy === 'function');
```

`deepcopy({test: "test"})` sollte ein Objekt zurückgeben.

```js
assert(typeof deepcopy(obj1) === 'object');
```

`deepcopy` sollte nicht dasselbe Objekt zurückgeben, das bereitgestellt wurde.

```js
assert(deepcopy(obj2) != obj2);
```

Wenn ein Objekt übergeben wird, das eine Anordnung enthält, sollte `deepcopy` eine tiefe Kopie des Objekts zurückgeben.

```js
assert.deepEqual(deepcopy(obj2), obj2);
```

Wenn ein Objekt übergeben wird, das ein anderes Objekt enthält, sollte `deepcopy` eine tiefe Kopie des Objekts zurückgeben.

```js
assert.deepEqual(deepcopy(obj3), obj3);
```

# --seed--

## --after-user-code--

```js
const obj1 = { test: 'test' };
const obj2 = {
  t: 'test',
  a: ['an', 'array']
};
const obj3 = {
  t: 'try',
  o: obj2
};
```

## --seed-contents--

```js
function deepcopy(obj) {

  return true;
}
```

# --solutions--

```js
function deepcopy(obj) {
  return JSON.parse(JSON.stringify(obj));
}
```
