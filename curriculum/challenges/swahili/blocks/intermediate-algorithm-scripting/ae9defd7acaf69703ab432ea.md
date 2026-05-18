---
id: ae9defd7acaf69703ab432ea
title: Nambari ndogo kabisa inayogawanyika kwa wote
challengeType: 1
forumTopicId: 16075
dashedName: smallest-common-multiple
---

# --description--

Tafuta nambari ndogo kabisa inayogawanyika kwa usawa na vigezo vilivyotolewa, na pia na nambari zote mfululizo zilizopo katika safu ya nambari kati ya vigezo hivyo.

Safu ya nambari itakuwa na nambari mbili ambazo si lazima ziwe katika mpangilio wa nambari.

Kwa mfano, ukipata nambari 1 na 3, tafuta nambari ndogo kabisa inayogawanyika kwa usawa na 1 na 3, na pia inayogawanyika kwa usawa na nambari zote *katika* 1 na 3. Jibu hapa litakuwa 6.

# --hints--

`smallestCommons([1, 5])` inapaswa kurudisha nambari.

```js
assert.deepEqual(typeof smallestCommons([1, 5]), 'number');
```

`smallestCommons([1, 5])` inapaswa kurudisha 60.

```js
assert.deepEqual(smallestCommons([1, 5]), 60);
```

`smallestCommons([5, 1])` inapaswa kurudisha 60.

```js
assert.deepEqual(smallestCommons([5, 1]), 60);
```

`smallestCommons([2, 10])` inapaswa kurudisha 2520.

```js
assert.deepEqual(smallestCommons([2, 10]), 2520);
```

`smallestCommons([1, 13])` inapaswa kurudisha 360360.

```js
assert.deepEqual(smallestCommons([1, 13]), 360360);
```

`smallestCommons([23, 18])` inapaswa kurudisha 6056820.

```js
assert.deepEqual(smallestCommons([23, 18]), 6056820);
```

# --seed--

## --seed-contents--

```js
function smallestCommons(arr) {
  return arr;
}

smallestCommons([1,5]);
```

# --solutions--

```js
function gcd(a, b) {
    while (b !== 0) {
        a = [b, b = a % b][0];
    }
    return a;
}

function lcm(a, b) {
    return (a * b) / gcd(a, b);
}

function smallestCommons(arr) {
  arr.sort(function(a,b) {return a-b;});
  var rng = [];
  for (var i = arr[0]; i <= arr[1]; i++) {
    rng.push(i);
  }
  return rng.reduce(lcm);
}
```
