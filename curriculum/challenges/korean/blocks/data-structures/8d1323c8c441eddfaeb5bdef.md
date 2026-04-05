---
id: 8d1323c8c441eddfaeb5bdef
title: Set 클래스 만들기
challengeType: 1
forumTopicId: 301632
dashedName: create-a-set-class
---

# --description--

이번 연습에서는 "set"이라는 추상 자료 구조를 모방하는 `Set`라는 클래스를 만들겠습니다. set은 배열과 비슷하지만 중복된 값을 포함할 수 없습니다. set의 일반적인 용도는 단순히 항목의 존재 여부를 확인하는 것입니다. 아래 예제에서 ES6 `Set` 객체가 어떻게 작동하는지 볼 수 있습니다:

```js
const set1 = new Set([1, 2, 3, 5, 5, 2, 0]);
console.log(set1);
// output: {1, 2, 3, 5, 0}
console.log(set1.has(1));
// output: true
console.log(set1.has(6));
// output: false
```

먼저, 값이 set에 이미 존재하지 않는 한 set 컬렉션에 값을 추가하는 add 메서드를 만들겠습니다. 그다음, 값이 이미 존재하면 set 컬렉션에서 값을 제거하는 remove 메서드를 만들겠습니다. 마지막으로, set 컬렉션 내 요소의 개수를 반환하는 size 메서드를 만들겠습니다.

# --instructions--

고유한 값을 set 컬렉션에 추가하고 값이 성공적으로 추가되면 `add`를, 그렇지 않으면 `true`를 반환하는 `false` 메서드를 만드세요.

값을 받아 set에 존재하는지 확인하는 `remove` 메서드를 만드세요. 값이 존재하면 이 메서드는 set 컬렉션에서 값을 제거하고 `true`를 반환해야 합니다. 그렇지 않으면 `false`를 반환해야 합니다. set 컬렉션의 크기를 반환하는 `size` 메서드를 만드세요.

# --hints--

`Set` 클래스는 `add` 메서드를 가져야 합니다.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.add === 'function';
  })()
);
```

`add` 메서드는 중복 값을 추가하지 않아야 합니다.

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

`add` 메서드는 값이 성공적으로 추가되었을 때 `true`를 반환해야 합니다.

```js
assert(
  (function () {
    var test = new Set();
    var result = test.add('a');
    return result != undefined && result === true;
  })()
);
```

`add` 메서드는 중복 값이 추가되었을 때 `false`를 반환해야 합니다.

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

`Set` 클래스는 `remove` 메서드를 가져야 합니다.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.remove === 'function';
  })()
);
```

`remove` 메서드는 set에 존재하는 항목만 제거해야 합니다.

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

`remove` 메서드는 주어진 항목을 set에서 제거해야 합니다.

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

`Set` 클래스는 `size` 메서드를 가져야 합니다.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.size === 'function';
  })()
);
```

`size` 메서드는 컬렉션 내 요소의 개수를 반환해야 합니다.

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
