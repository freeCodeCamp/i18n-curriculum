---
id: 5900f3731000cf542c50fe86
title: '问题7：第10001个质数'
challengeType: 1
forumTopicId: 302182
dashedName: problem-7-10001st-prime
---

# --description--

通过列出前六个素数：2、3、5、7、11 和 13，我们可以看到第 6 个素数是 13。

第`n`个素数是多少呢？

# --hints--

`nthPrime(6)` 应返回一个数字。

```js
assert(typeof nthPrime(6) === 'number');
```

`nthPrime(6)`应当返回13.

```js
assert.strictEqual(nthPrime(6), 13);
```

`nthPrime(10)`应当返回29.

```js
assert.strictEqual(nthPrime(10), 29);
```

`nthPrime(100)`应当返回541.

```js
assert.strictEqual(nthPrime(100), 541);
```

`nthPrime(1000)`应当返回7919.

```js
assert.strictEqual(nthPrime(1000), 7919);
```

`nthPrime(10001)`应当返回104743.

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
