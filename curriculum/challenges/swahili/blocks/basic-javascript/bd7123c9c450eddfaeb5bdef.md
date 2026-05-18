---
id: bd7123c9c450eddfaeb5bdef
title: Tumia uandishi wa mabano kupata herufi ya nambari N katika mfuatano wa herufi
challengeType: 1
forumTopicId: 18343
dashedName: use-bracket-notation-to-find-the-nth-character-in-a-string
---

# --description--

Unaweza pia kutumia <dfn>uandishi wa mabano</dfn> kupata herufi katika nafasi nyingine ndani ya mfuatano wa herufi.

Kumbuka kuwa kompyuta huanza kuhesabu kwa `0`, kwa hivyo herufi ya kwanza ni kweli herufi ya nambari sifuri.

Mfano:

```js
const firstName = "Ada";
const secondLetterOfFirstName = firstName[1];
```

`secondLetterOfFirstName` itakuwa na thamani ya mfuatano wa herufi `d`.

# --instructions--

Tujaribu kuweka `thirdLetterOfLastName` ili iwe sawa na herufi ya tatu ya mabadiliko ya `lastName` kwa kutumia uandishi wa mabano.

**Kidokezo:** Jaribu kuangalia mfano ulio juu ikiwa utagongwa na shida.

# --hints--

Mabadiliko ya `thirdLetterOfLastName` yanapaswa kuwa na thamani ya `v`.

```js
assert(thirdLetterOfLastName === 'v');
```

Unapaswa kutumia uandishi wa mabano.

```js
assert(__helpers.removeJSComments(code).match(/thirdLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const thirdLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const thirdLetterOfLastName = lastName[2];
```
