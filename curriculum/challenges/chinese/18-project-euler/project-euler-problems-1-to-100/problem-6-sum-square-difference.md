---
id: 5900f3721000cf542c50fe85
title: '问题6：求和方差'
challengeType: 1
forumTopicId: 302171
dashedName: problem-6-sum-square-difference
---

# --description--

前十个自然数的平方和是，

<div style='text-align: center;'>1<sup>2</sup> + 2<sup>2</sup> + ... + 10<sup>2</sup> = 385</div>

前十个自然数之和的平方是，

<div style='text-align: center;'>(1 + 2 + ... + 10)<sup>2</sup> = 55<sup>2</sup> = 3025</div>

因此，前十个自然数的平方和与和的平方之间的差值为3025 - 385 = 2640.

计算前 `n` 个自然数的平方和与和的平方之间的差值。

# --hints--

`sumSquareDifference(10)` 应返回一个数字。

```js
assert(typeof sumSquareDifference(10) === 'number');
```

`sumSquareDifference(10)` 应该返回 2640。

```js
assert.strictEqual(sumSquareDifference(10), 2640);
```

`sumSquareDifference(20)` 应该返回 41230。

```js
assert.strictEqual(sumSquareDifference(20), 41230);
```

`sumSquareDifference(100)` 应该返回 25164150。

```js
assert.strictEqual(sumSquareDifference(100), 25164150);
```

# --seed--

## --seed-contents--

```js
function sumSquareDifference(n) {

  return true;
}

sumSquareDifference(100);
```

# --solutions--

```js
const sumSquareDifference = (number)=>{
  let squareOfSum = Math.pow(sumOfArithmeticSeries(1,1,number),2);
  let sumOfSquare = sumOfSquareOfNumbers(number);
 return squareOfSum - sumOfSquare;
}

function sumOfArithmeticSeries(a,d,n){
  return (n/2)*(2*a+(n-1)*d);
}

function sumOfSquareOfNumbers(n){
 return (n*(n+1)*(2*n+1))/6;
}
```
