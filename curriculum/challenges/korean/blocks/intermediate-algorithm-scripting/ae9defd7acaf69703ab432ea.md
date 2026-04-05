---
id: ae9defd7acaf69703ab432ea
title: 가장 작은 공배수
challengeType: 1
forumTopicId: 16075
dashedName: smallest-common-multiple
---

# --description--

제공된 매개변수 두 개 모두와, 이 매개변수 사이의 모든 연속된 숫자로 나누어떨어지는 가장 작은 공배수를 찾으세요.

범위는 숫자 두 개로 이루어진 배열이며, 반드시 숫자 순서대로 정렬되어 있지 않을 수 있습니다.

예를 들어 1과 3이 주어지면, 1과 3 모두의 공배수이면서 1과 3 사이의 모든 숫자로 나누어떨어지는 가장 작은 공배수를 찾으세요. 이 경우 답은 6입니다.

# --hints--

`smallestCommons([1, 5])` 는 숫자를 반환해야 합니다.

```js
assert.deepEqual(typeof smallestCommons([1, 5]), 'number');
```

`smallestCommons([1, 5])` 는 60을 반환해야 합니다.

```js
assert.deepEqual(smallestCommons([1, 5]), 60);
```

`smallestCommons([5, 1])` 는 60을 반환해야 합니다.

```js
assert.deepEqual(smallestCommons([5, 1]), 60);
```

`smallestCommons([2, 10])` 는 2520을 반환해야 합니다.

```js
assert.deepEqual(smallestCommons([2, 10]), 2520);
```

`smallestCommons([1, 13])` 는 360360을 반환해야 합니다.

```js
assert.deepEqual(smallestCommons([1, 13]), 360360);
```

`smallestCommons([23, 18])` 는 6056820을 반환해야 합니다.

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
