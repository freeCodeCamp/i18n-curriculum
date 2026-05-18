---
id: 68ad9821ee41baad9cb0fd4e
title: Tengeneza kitendakazi cha tofauti ya usawa
challengeType: 26
dashedName: lab-symmetric-difference
---

# --description--

Linganisheni safu mbili za data na rudisheni safu mpya yenye vitu vyovyote vinavyopatikana katika moja tu ya safu hizo mbili, lakini si zote mbili. Kwa maneno mengine, rudisheni tofauti ya usawa ya safu hizo mbili.

Mfano:

- Safu A: `["diamond", "stick", "apple"]`

- Safu B: `["stick", "emerald", "bread"]`

Matokeo: `["diamond", "apple", "emerald", "bread"]`

**Lengo:** Timilieni hadithi za watumizi zilizo hapa chini na pokea mitihani yote ili kumaliza maabara hii.

**Hadithi za watumizi:**

1. Kitendakazi chako `diffArray` kinapaswa kurudisha safu ya data.
2. Kitendakazi chako kinapaswa kupokea hoja mbili, zote zikiwa safu za data.
3. Kitendakazi chako kinapaswa kutumia njia ya `filter`.
4. Kitendakazi chako kinapaswa kurudisha tofauti ya usawa ya safu hizo mbili.  
5. Kitendakazi chako kinapaswa kurudisha safu tupu ikiwa hakuna tofauti ya usawa.


# --hints--

Unapaswa kuwa na kitendakazi kinachoitwa `diffArray`.

```js
assert.isFunction(diffArray);
```

Kitendakazi cha `diffArray` kinapaswa kutumia njia ya `filter` kuchuja vitu vilivyopo katika safu zote mbili.

```js
assert(/\.filter\(/.test(diffArray.toString()));
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["diorite", "andesite", "grass", "dirt", "dead shrub"])` inapaswa kurudisha `["pink wool"]`.

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["diorite", "andesite", "grass", "dirt", "dead shrub"]
), ["pink wool"]);
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])` inapaswa kurudisha `["diorite", "pink wool"]`.

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), ["diorite", "pink wool"]);
```

`diffArray` inapaswa kurudisha safu tupu ikipigiwa wito na safu mbili zinazofanana.

```js
assert.deepEqual(diffArray(
  ["andesite", "grass", "dirt", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), []);
```

`diffArray(["pen", "book"], ["book", "pencil", "notebook"])` inapaswa kurudisha `["pen", "pencil", "notebook"]`.

```js
assert.deepEqual(diffArray(
  ["pen", "book"],
  ["book", "pencil", "notebook"]
), ["pen", "pencil", "notebook"]);
```

`diffArray(["car", "bike", "bus"], ["bike", "train", "plane", "bus"])` inapaswa kurudisha `["car", "train", "plane"]`.

```js
assert.deepEqual(diffArray(
  ["car", "bike", "bus"],
  ["bike", "train", "plane", "bus"]
), ["car", "train", "plane"]);
```

`diffArray(["apple", "orange"], ["apple", "orange", "banana", "grape"])` inapaswa kurudisha `["banana", "grape"]`.

```js
assert.deepEqual(diffArray(
  ["apple", "orange"],
  ["apple", "orange", "banana", "grape"]
), ["banana", "grape"]);
```

`diffArray([], ["apple", "banana"])` inapaswa kurudisha `["apple", "banana"]`.

```js
assert.deepEqual(diffArray(
  [],
  ["apple", "banana"]
), ["apple", "banana"]);
```

`diffArray(["apple", "banana"], [])` inapaswa kurudisha `["apple", "banana"]`.

```js
assert.deepEqual(diffArray(
  ["apple", "banana"],
  []
), ["apple", "banana"]);
```

`diffArray([], [])` inapaswa kurudisha `[]`.

```js
assert.deepEqual(diffArray(
  [], 
  []
), []);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function diffArray(arr1, arr2) {
  return arr1
    .filter(item => !arr2.includes(item))
    .concat(arr2.filter(item => !arr1.includes(item)));
}
```
