---
id: ae9defd7acaf69703ab432ea
title: 最小公倍数
challengeType: 1
forumTopicId: 16075
dashedName: smallest-common-multiple
---

# --description--

指定されたパラメータのうち、両方で割り切れるだけでなく、そのパラメータ間のすべての連続した数字でも割り切れる最小の公倍数を見つけてください。

範囲は2つの数字の配列で、必ずしも数値の順序通りではありません。

たとえば、1と3が与えられた場合、1と3の両方で割り切れ、かつ1から3の間のすべての数字でも割り切れる最小の公倍数を見つけてください。この場合の答えは6です。

# --hints--

`smallestCommons([1, 5])` は数値を返す必要があります。

```js
assert.deepEqual(typeof smallestCommons([1, 5]), 'number');
```

`smallestCommons([1, 5])` は60を返す必要があります。

```js
assert.deepEqual(smallestCommons([1, 5]), 60);
```

`smallestCommons([5, 1])` は60を返す必要があります。

```js
assert.deepEqual(smallestCommons([5, 1]), 60);
```

`smallestCommons([2, 10])` は2520を返す必要があります。

```js
assert.deepEqual(smallestCommons([2, 10]), 2520);
```

`smallestCommons([1, 13])` は360360を返す必要があります。

```js
assert.deepEqual(smallestCommons([1, 13]), 360360);
```

`smallestCommons([23, 18])` は6056820を返す必要があります。

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
