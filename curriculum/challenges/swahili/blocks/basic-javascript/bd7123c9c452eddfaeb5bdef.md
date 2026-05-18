---
id: bd7123c9c452eddfaeb5bdef
title: Tumia uandishi wa mabano kupata herufi ya Nth-to-last katika mfuatano wa herufi
challengeType: 1
forumTopicId: 18344
dashedName: use-bracket-notation-to-find-the-nth-to-last-character-in-a-string
---

# --description--

Unaweza kutumia kanuni ile ile tuliyotumia kupata herufi ya mwisho katika mfuatano wa herufi ili kupata herufi ya Nth-to-last.

Kwa mfano, unaweza kupata thamani ya herufi ya tatu kutoka mwisho ya mfuatano wa herufi `const firstName = "Augusta"` kwa kutumia `firstName[firstName.length - 3]`

Mfano:

```js
const firstName = "Augusta";
const thirdToLastLetter = firstName[firstName.length - 3];
```

`thirdToLastLetter` ingekuwa na thamani ya mfuatano wa herufi `s`.

# --instructions--

Tumia <dfn>uandishi wa mabano</dfn> kupata herufi ya pili kutoka mwisho katika mfuatano wa herufi `lastName`.

**Kidokezo:** Jaribu kuangalia mfano ulio juu ikiwa utakumbwa na shida.

# --hints--

`secondToLastLetterOfLastName` inapaswa kuwa herufi `c`.

```js
assert(secondToLastLetterOfLastName === 'c');
```

Unapaswa kutumia `.length` kupata herufi ya pili kutoka mwisho.

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const secondToLastLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const secondToLastLetterOfLastName = lastName[lastName.length - 2];
```
