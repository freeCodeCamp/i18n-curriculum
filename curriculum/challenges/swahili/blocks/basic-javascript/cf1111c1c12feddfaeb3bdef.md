---
id: cf1111c1c12feddfaeb3bdef
title: Tumia mantiki ya masharti na taarifa za if
challengeType: 1
forumTopicId: 18348
dashedName: use-conditional-logic-with-if-statements
---

# --description--

Taarifa za `if` hutumiwa kufanya maamuzi katika msimbo. Neno kuu `if` linaambia JavaScript kutekeleza msimbo ulioko ndani ya mabano ya mviringo chini ya masharti fulani, yaliyoainishwa katika mabano ya kawaida. Masharti haya yanajulikana kama masharti ya `Boolean` na yanaweza kuwa tu `true` au `false`.

Wakati sharti linapohesabiwa kuwa `true`, programu hutekeleza taarifa iliyoko ndani ya mabano ya mviringo. Wakati sharti la thamani ya kweli au siyo kweli linapohesabiwa kuwa `false`, taarifa iliyoko ndani ya mabano ya mviringo haitatekelezwa.

**Msimbo wa bandia**

<blockquote>if (<i>sharti ni kweli</i>) {<br>  <i>taarifa hutekelezwa</i><br>}</blockquote>

**Mfano**

```js
function test(myCondition) {
  if (myCondition) {
    return "It was true";
  }
  return "It was false";
}

test(true);
test(false);
```

`test(true)` hurudisha mfuatano wa herufi `It was true`, na `test(false)` hurudisha mfuatano wa herufi `It was false`.

Wakati `test` inapoitwa na thamani ya `true`, taarifa ya `if` inahesabu `myCondition` kuona kama ni `true` au la. Kwa kuwa ni `true`, kitendakazi hurudisha `It was true`. Tunapoitisha `test` na thamani ya `false`, `myCondition` si `true` na taarifa ndani ya mabano ya mviringo haitatekelezwa na kitendakazi hurudisha `It was false`.

# --instructions--

Tengeneza taarifa ya `if` ndani ya kitendakazi ili kurudisha `Yes, that was true` ikiwa kigezo `wasThatTrue` ni `true` na kurudisha `No, that was false` vinginevyo.

# --hints--

`trueOrFalse` inapaswa kuwa kitendakazi

```js
assert(typeof trueOrFalse === 'function');
```

`trueOrFalse(true)` inapaswa kurudisha mfuatano wa herufi

```js
assert(typeof trueOrFalse(true) === 'string');
```

`trueOrFalse(false)` inapaswa kurudisha mfuatano wa herufi

```js
assert(typeof trueOrFalse(false) === 'string');
```

`trueOrFalse(true)` inapaswa kurudisha mfuatano wa herufi `Yes, that was true`

```js
assert(trueOrFalse(true) === 'Yes, that was true');
```

`trueOrFalse(false)` inapaswa kurudisha mfuatano wa herufi `No, that was false`

```js
assert(trueOrFalse(false) === 'No, that was false');
```

# --seed--

## --seed-contents--

```js
function trueOrFalse(wasThatTrue) {
  // Only change code below this line



  // Only change code above this line

}
```

# --solutions--

```js
function trueOrFalse(wasThatTrue) {
  if (wasThatTrue) {
    return "Yes, that was true";
  }
  return "No, that was false";
}
```
