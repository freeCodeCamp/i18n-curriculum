---
id: cf1111c1c11feddfaeb8bdef
title: Badilisha data ya safu ya data kwa kutumia vielezo
challengeType: 1
forumTopicId: 18241
dashedName: modify-array-data-with-indexes
---

# --description--

Tofauti na mfuatano wa herufi, maingizo ya safu ya data ni <dfn>yanayobadilika</dfn> na yanaweza kubadilishwa kwa uhuru, hata kama safu ya data ilitangazwa na `const`.

**Mfano**

```js
const ourArray = [50, 40, 30];
ourArray[0] = 15;
```

`ourArray` sasa ina thamani ya `[15, 40, 30]`.

**Kumbuka:** Hakuna nafasi zinapaswa kuwepo kati ya jina la safu ya data na mabano ya mraba, kama `array [0]`. Ingawa JavaScript inaweza kushughulikia hili kwa usahihi, hii inaweza kuwachanganya programu wengine wanaosoma msimbo wako.

# --instructions--

Badilisha data iliyohifadhiwa katika kielezo `0` cha `myArray` kuwa thamani ya `45`.

# --hints--

`myArray` inapaswa sasa kuwa `[45, 64, 99]`.

```js
assert(
  (function () {
    if (
      typeof myArray != 'undefined' &&
      myArray[0] == 45 &&
      myArray[1] == 64 &&
      myArray[2] == 99
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

Unapaswa kutumia kielezo sahihi kubadilisha thamani katika `myArray`.

```js
assert(
  (function () {
    if (__helpers.removeJSComments(code).match(/myArray\[0\]\s*=\s*/g)) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --seed-contents--

```js
// Setup
const myArray = [18, 64, 99];

// Only change code below this line

```

# --solutions--

```js
const myArray = [18, 64, 99];
myArray[0] = 45;
```
