---
id: cf1111c1c11feddfaeb1bdef
title: Rudia kwa kutumia mizunguko ya while ya JavaScript
challengeType: 1
forumTopicId: 18220
dashedName: iterate-with-javascript-while-loops
---

# --description--

Unaweza kuendesha msimbo uleule mara nyingi kwa kutumia mzunguko.

Aina ya kwanza ya mzunguko tutakayojifunza huitwa mzunguko wa `while` kwa sababu unaendesha wakati hali fulani ni kweli na unasimama mara hali hiyo haipo tena.

```js
const ourArray = [];
let i = 0;

while (i < 5) {
  ourArray.push(i);
  i++;
}
```

Katika mfano wa msimbo hapo juu, mzunguko wa `while` utaendesha mara 5 na kuongeza nambari 0 hadi 4 kwenye `ourArray`.

Tujaribu kufanya mzunguko wa while ufanye kazi kwa kusukuma thamani kwenye safu ya data.

# --instructions--

Ongeza nambari 5 hadi 0 (ikiwa ni pamoja na) kwa mpangilio wa kushuka kwenye `myArray` kwa kutumia mzunguko wa `while`.

# --hints--

Unapaswa kutumia mzunguko wa `while` kwa hili.

```js
assert(__helpers.removeJSComments(code).match(/while/g));
```

`myArray` inapaswa kuwa sawa na `[5, 4, 3, 2, 1, 0]`.

```js
assert.deepEqual(myArray, [5, 4, 3, 2, 1, 0]);
```

# --seed--

## --seed-contents--

```js
// Setup
const myArray = [];

// Only change code below this line

```

# --solutions--

```js
const myArray = [];
let i = 5;
while (i >= 0) {
  myArray.push(i);
  i--;
}
```
