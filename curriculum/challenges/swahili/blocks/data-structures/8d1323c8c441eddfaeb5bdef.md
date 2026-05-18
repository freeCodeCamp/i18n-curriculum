---
id: 8d1323c8c441eddfaeb5bdef
title: Unda darasa la seti
challengeType: 1
forumTopicId: 301632
dashedName: create-a-set-class
---

# --description--

Katika zoezi hili tutaunda darasa la vitu linaloitwa `Set` kuiga muundo wa data wa abstrakti unaoitwa "seti". Seti ni kama safu ya data, lakini haiwezi kuwa na thamani zinazojirudia. Matumizi ya kawaida ya seti ni kuangalia tu uwepo wa kipengee. Tunaweza kuona jinsi kitu cha ES6 `Set` kinavyofanya kazi katika mfano hapa chini:

```js
const set1 = new Set([1, 2, 3, 5, 5, 2, 0]);
console.log(set1);
// output: {1, 2, 3, 5, 0}
console.log(set1.has(1));
// output: true
console.log(set1.has(6));
// output: false
```

Kwanza, tutaunda njia ya add inayoongeza thamani kwenye mkusanyiko wetu wa seti mradi tu thamani hiyo haipo tayari katika seti. Kisha tutaunda njia ya remove inayotoa thamani kutoka kwenye mkusanyiko wa seti ikiwa tayari ipo. Na hatimaye, tutaunda njia ya size inayorejesha idadi ya vipengee ndani ya mkusanyiko wa seti.

# --instructions--

Unda njia ya `add` inayoongeza thamani ya kipekee kwenye mkusanyiko wa seti na kurejesha `true` ikiwa thamani iliongezwa kwa mafanikio na `false` vinginevyo.

Unda njia ya `remove` inayokubali thamani na kuangalia kama ipo katika seti. Ikiwa ipo, basi njia hii inapaswa kuiondoa kutoka kwenye mkusanyiko wa seti, na kurejesha `true`. Vinginevyo, inapaswa kurejesha `false`. Unda njia ya `size` inayorejesha ukubwa wa mkusanyiko wa seti.

# --hints--

Darasa lako la `Set` linapaswa kuwa na njia ya `add`.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.add === 'function';
  })()
);
```

Njia yako ya `add` haipaswi kuongeza thamani zinazojirudia.

```js
assert(
  (function () {
    var test = new Set();
    test.add('a');
    test.add('b');
    test.add('a');
    var vals = test.values();
    return vals[0] === 'a' && vals[1] === 'b' && vals.length === 2;
  })()
);
```

Njia yako ya `add` inapaswa kurejesha `true` wakati thamani imeongezwa kwa mafanikio.

```js
assert(
  (function () {
    var test = new Set();
    var result = test.add('a');
    return result != undefined && result === true;
  })()
);
```

Njia yako ya `add` inapaswa kurejesha `false` wakati thamani inayojirudia inaongezwa.

```js
assert(
  (function () {
    var test = new Set();
    test.add('a');
    var result = test.add('a');
    return result != undefined && result === false;
  })()
);
```

Darasa lako la `Set` linapaswa kuwa na njia ya `remove`.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.remove === 'function';
  })()
);
```

Njia yako ya `remove` inapaswa kuondoa vitu vinavyopatikana tu katika seti.

```js
assert.deepEqual(
  (function () {
    var test = new Set();
    test.add('a');
    test.add('b');
    test.remove('c');
    return test.values();
  })(),
  ['a', 'b']
);
```

Njia yako ya `remove` inapaswa kuondoa kipengee kilichotolewa kutoka kwenye seti.

```js
assert(
  (function () {
    var test = new Set();
    test.add('a');
    test.add('b');
    test.remove('a');
    var vals = test.values();
    return vals[0] === 'b' && vals.length === 1;
  })()
);
```

Darasa lako la `Set` linapaswa kuwa na njia ya `size`.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.size === 'function';
  })()
);
```

Njia ya `size` inapaswa kurejesha idadi ya vipengee katika mkusanyiko.

```js
assert(
  (function () {
    var test = new Set();
    test.add('a');
    test.add('b');
    test.remove('a');
    return test.size() === 1;
  })()
);
```

# --seed--

## --seed-contents--

```js
class Set {
  constructor() {
    // Dictionary will hold the items of our set
    this.dictionary = {};
    this.length = 0;
  }

  // This method will check for the presence of an element and return true or false
  has(element) {
    return this.dictionary[element] !== undefined;
  }

  // This method will return all the values in the set
  values() {
    return Object.values(this.dictionary);
  }

  // Only change code below this line
  
  // Only change code above this line
}
```

# --solutions--

```js
class Set {
  constructor() {
    this.dictionary = {};
    this.length = 0;
  }

  has(element) {
    return this.dictionary[element] !== undefined;
  }

  values() {
    return Object.values(this.dictionary);
  }

  add(element) {
    if (!this.has(element)) {
      this.dictionary[element] = element;
      this.length++;
      return true;
    }

    return false;
  }

  remove(element) {
    if (this.has(element)) {
      delete this.dictionary[element];
      this.length--;
      return true;
    }

    return false;
  }

  size() {
    return this.length;
  }
}
```
