---
id: bd7123c9c451eddfaeb5bdef
title: Tumia uandishi wa mabano kupata herufi ya mwisho katika mfuatano wa herufi
challengeType: 1
forumTopicId: 18342
dashedName: use-bracket-notation-to-find-the-last-character-in-a-string
---

# --description--

Ili kupata herufi ya mwisho ya mfuatano wa herufi, unaweza kutoa moja kutoka kwa urefu wa mfuatano huo.

Kwa mfano, ikiwa `const firstName = "Ada"`, unaweza kupata thamani ya herufi ya mwisho ya mfuatano kwa kutumia `firstName[firstName.length - 1]`.

Mfano:

```js
const firstName = "Ada";
const lastLetter = firstName[firstName.length - 1];
```

`lastLetter` ingekuwa na thamani ya mfuatano `a`.

# --instructions--

Tumia <dfn>uandishi wa mabano</dfn> kupata herufi ya mwisho katika mabadiliko ya `lastName`.

**Kidokezo:** Jaribu kuangalia mfano ulio juu ikiwa unashindwa.

# --hints--

`lastLetterOfLastName` inapaswa kuwa herufi `e`.

```js
assert(lastLetterOfLastName === 'e');
```

Unapaswa kutumia `.length` kupata herufi ya mwisho.

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const lastLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const lastLetterOfLastName = lastName[lastName.length - 1];
```
