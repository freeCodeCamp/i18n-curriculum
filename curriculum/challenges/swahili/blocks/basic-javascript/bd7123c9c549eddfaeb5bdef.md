---
id: bd7123c9c549eddfaeb5bdef
title: Tumia uandishi wa mabano kupata herufi ya kwanza katika mfuatano wa herufi
challengeType: 1
forumTopicId: 18341
dashedName: use-bracket-notation-to-find-the-first-character-in-a-string
---

# --description--

<dfn>Uandishi wa mabano</dfn> ni njia ya kupata herufi katika kielezo maalum ndani ya mfuatano wa herufi.

Lugha nyingi za kisasa za programu, kama JavaScript, hazianzi kuhesabu kwa 1 kama wanadamu wanavyofanya. Huanza kwa 0. Hii inajulikana kama <dfn>kielezo kuanzia sufuri</dfn>.

Kwa mfano, herufi katika kielezo 0 katika neno `Charles` ni `C`. Hivyo kama `const firstName = "Charles"`, unaweza kupata thamani ya herufi ya kwanza ya mfuatano kwa kutumia `firstName[0]`.

Mfano:

```js
const firstName = "Charles";
const firstLetter = firstName[0];
```

`firstLetter` itakuwa na thamani ya mfuatano wa herufi `C`.

# --instructions--

Tumia uandishi wa mabano kupata herufi ya kwanza katika mabadiliko ya `lastName` na weka thamani yake katika `firstLetterOfLastName`.

**Kidokezo:** Jaribu kuangalia mfano ulio juu ikiwa unashindwa.

# --hints--

Mabadiliko ya `firstLetterOfLastName` yanapaswa kuwa na thamani ya `L`.

```js
assert(firstLetterOfLastName === 'L');
```

Unapaswa kutumia uandishi wa mabano.

```js
assert(__helpers.removeJSComments(code).match(/firstLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --seed-contents--

```js
// Setup
let firstLetterOfLastName = "";
const lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
let firstLetterOfLastName = "";
const lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName[0];
```
