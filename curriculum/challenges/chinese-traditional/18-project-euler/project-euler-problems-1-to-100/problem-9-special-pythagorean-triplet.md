---
id: 5900f3761000cf542c50fe88
title: '問題9：特殊的Pythagorean三角形'
challengeType: 1
forumTopicId: 302205
dashedName: problem-9-special-pythagorean-triplet
---

# --description--

畢達哥拉斯三元組是一組三個自然數， `a` &lt; `b` &lt; `c` ，其中，

<div style='text-align: center;'><var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> = <var>c</var><sup>2</sup></div>

例如，3<sup>2</sup> + 4<sup>2</sup> = 9 + 16 = 25<sup>2</sup>

恰好存在一個畢達哥拉斯三元組，其中`a` + `b` + `c` = 1000。 找到乘積 `abc` 當 `a` + `b` + `c` = `n`。

# --hints--

`specialPythagoreanTriplet(24)` 應該返回一個數字。

```js
assert.isNumber(specialPythagoreanTriplet(24));
```

`specialPythagoreanTriplet(24)` 應該返回480。

```js
assert.strictEqual(specialPythagoreanTriplet(24), 480);
```

`specialPythagoreanTriplet(120)` 應該返回 49920, 55080 或 60000。

```js
assert.oneOf(specialPythagoreanTriplet(120), [49920, 55080, 60000]);
```

`specialPythagoreanTriplet(1000)` 應該返回3187000。

```js
assert.strictEqual(specialPythagoreanTriplet(1000), 31875000);
```

# --seed--

## --seed-contents--

```js
function specialPythagoreanTriplet(n) {
 let sumOfabc = n;

 return true;
}

specialPythagoreanTriplet(1000);
```

# --solutions--

```js
function specialPythagoreanTriplet(n) {
  for (let a = 1; a <= n / 2; a++) {
    for (let b = a + 1; b <= n / 2; b++) {
      const c = Math.sqrt(a * a + b * b);

      if ((a + b + c) % n == 0) {
        const factor = n / (a + b + c);

        return (a * b * c) * (factor ** 3);
      }
    }
  }
}
```
