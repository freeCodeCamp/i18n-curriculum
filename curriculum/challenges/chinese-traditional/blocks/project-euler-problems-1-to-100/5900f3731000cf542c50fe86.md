---
id: 5900f3731000cf542c50fe86
title: '問題7：第10001個質數'
challengeType: 1
forumTopicId: 302182
dashedName: problem-7-10001st-prime
---

# --description--

通過列出前六個素數：2、3、5、7、11 和 13，我們可以看到第 6 個素數是 13。

第`n`個素數是多少呢？

# --hints--

`nthPrime(6)` 應返回一個數字。

```js
assert.isNumber(nthPrime(6));
```

`nthPrime(6)`應當返回13.

```js
assert.strictEqual(nthPrime(6), 13);
```

`nthPrime(10)`應當返回29.

```js
assert.strictEqual(nthPrime(10), 29);
```

`nthPrime(100)`應當返回541.

```js
assert.strictEqual(nthPrime(100), 541);
```

`nthPrime(1000)`應當返回7919.

```js
assert.strictEqual(nthPrime(1000), 7919);
```

`nthPrime(10001)`應當返回104743.

```js
assert.strictEqual(nthPrime(10001), 104743);
```

# --seed--

## --seed-contents--

```js
function nthPrime(n) {

  return true;
}

nthPrime(10001);
```

# --solutions--

```js
const nthPrime = n => {
  let pN = 2;
  let step = 0;
  while (step < n) {
    let isPrime = true;
    let rootN = Math.sqrt(pN);
    for (let i = 2; i <= rootN; i++) {
      if (!(pN % i)) {
        isPrime = false;
        break;
      }
    }
    isPrime ? step++ : '';
    pN++;
  }
  return pN - 1;
}
```
