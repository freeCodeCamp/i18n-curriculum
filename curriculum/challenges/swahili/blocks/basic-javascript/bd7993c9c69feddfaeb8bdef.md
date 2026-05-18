---
id: bd7993c9c69feddfaeb8bdef
title: Hifadhi maadili mengi katika kigezo kimoja kwa kutumia safu za data za JavaScript
challengeType: 1
forumTopicId: 18309
dashedName: store-multiple-values-in-one-variable-using-javascript-arrays
---

# --description--

Kwa kutumia vigezo vya JavaScript `array`, tunaweza kuhifadhi vipande vingi vya data mahali pamoja.

Unaanza tamko la safu ya data kwa mabano ya mraba ya kufungua, unaimaliza kwa mabano ya mraba ya kufunga, na unaweka koma kati ya kila kipengee, kama hivi:

```js
const sandwich = ["peanut butter", "jelly", "bread"];
```

# --instructions--

Badilisha safu mpya `myArray` ili iwe na mfuatano wa herufi na nambari (kwa mpangilio huo).

# --hints--

`myArray` inapaswa kuwa safu ya data.

```js
assert(typeof myArray == 'object');
```

Kipengee cha kwanza katika `myArray` kinapaswa kuwa mfuatano wa herufi.

```js
assert(typeof myArray[0] !== 'undefined' && typeof myArray[0] == 'string');
```

Kipengee cha pili katika `myArray` kinapaswa kuwa nambari.

```js
assert(typeof myArray[1] !== 'undefined' && typeof myArray[1] == 'number');
```

# --seed--

## --seed-contents--

```js
// Only change code below this line
const myArray = [];
```

# --solutions--

```js
const myArray = ["The Answer", 42];
```
