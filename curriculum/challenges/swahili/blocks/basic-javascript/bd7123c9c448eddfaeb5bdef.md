---
id: bd7123c9c448eddfaeb5bdef
title: Tafuta urefu wa mfuatano wa herufi
challengeType: 1
forumTopicId: 18182
dashedName: find-the-length-of-a-string
---

# --description--

Unaweza kupata urefu wa thamani ya `String` kwa kuandika `.length` baada ya mabadiliko ya mfuatano wa herufi au mfuatano wa herufi wa moja kwa moja.

```js
console.log("Alan Peter".length);
```

Thamani ya `10` itaonyeshwa kwenye konsoli. Kumbuka kuwa nafasi kati ya "Alan" na "Peter" pia inahesabiwa.

Kwa mfano, ikiwa tutaunda mabadiliko `const firstName = "Ada"`, tunaweza kugundua urefu wa mfuatano wa herufi `Ada` kwa kutumia sifa ya `firstName.length`.

# --instructions--

Tumia sifa ya `.length` kuweka `lastNameLength` kuwa nambari ya herufi katika `lastName`.

# --hints--

Haupaswi kubadilisha tamko za mabadiliko katika sehemu ya `// Setup`.

```js
assert(
  __helpers.removeJSComments(code).match(/let lastNameLength = 0;/) &&
    __helpers.removeJSComments(code).match(/const lastName = "Lovelace";/)
);
```

`lastNameLength` inapaswa kuwa sawa na nane.

```js
assert(typeof lastNameLength !== 'undefined' && lastNameLength === 8);
```

Unapaswa kupata urefu wa `lastName` kwa kutumia `.length` kama hii: `lastName.length`.

```js
assert(__helpers.removeJSComments(code).match(/=\s*lastName\.length/g) && !__helpers.removeJSComments(code).match(/lastName\s*=\s*8/));
```

# --seed--

## --seed-contents--

```js
// Setup
let lastNameLength = 0;
const lastName = "Lovelace";

// Only change code below this line
lastNameLength = lastName;
```

# --solutions--

```js
let lastNameLength = 0;
const lastName = "Lovelace";
lastNameLength = lastName.length;
```
