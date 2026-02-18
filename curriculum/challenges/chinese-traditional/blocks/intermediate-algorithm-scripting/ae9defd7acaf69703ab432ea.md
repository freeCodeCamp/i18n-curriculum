---
id: ae9defd7acaf69703ab432ea
title: 最小公倍數
challengeType: 1
forumTopicId: 16075
dashedName: smallest-common-multiple
---

# --description--

尋找可被提供的參數以及這些參數之間範圍內所有連續數字整除的最小公倍數。

該範圍將會是由兩個數字組成的陣列，這兩個數字不一定是數值順序。

例如，如果給定 1 和 3，請找出 1 和 3 的最小公倍數，且該數能被 1 和 3 之間的所有數字整除。這裡的答案是 6。

# --hints--

`smallestCommons([1, 5])` 應該傳回一個數字。

```js
assert.deepEqual(typeof smallestCommons([1, 5]), 'number');
```

`smallestCommons([1, 5])` 應該傳回 60。

```js
assert.deepEqual(smallestCommons([1, 5]), 60);
```

`smallestCommons([5, 1])` 應該傳回 60。

```js
assert.deepEqual(smallestCommons([5, 1]), 60);
```

`smallestCommons([2, 10])` 應該傳回 2520。

```js
assert.deepEqual(smallestCommons([2, 10]), 2520);
```

`smallestCommons([1, 13])` 應該傳回 360360。

```js
assert.deepEqual(smallestCommons([1, 13]), 360360);
```

`smallestCommons([23, 18])` 應該傳回 6056820。

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
