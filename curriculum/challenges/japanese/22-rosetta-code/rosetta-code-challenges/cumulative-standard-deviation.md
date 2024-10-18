---
id: 5a23c84252665b21eecc7e03
title: 累積標準偏差
challengeType: 1
forumTopicId: 302240
dashedName: cumulative-standard-deviation
---

# --description--

対象となる母集団全体が、特定のクラスの 8 人の学生であるとします。 有限の数値集合において、母集団の標準偏差は、平均値から差し引いた値の偏差の 2 乗の平均の平方根をとることによって求められます。 8 人の学生 (つまり統計人口) のクラスの得点は、以下の 8 つの値です。

$2、4、4、4、5、5、7、9$

これら 8 つのデータポイントの平均値は 5 です:

$$\mu ={\frac {2+4+4+4+5+5+7+9}{8}}={\frac {40}{8}}=5$$

まず、平均から各データポイントの偏差を計算し、それぞれの結果を 2 乗します:

| 各データの偏差                | 結果の 2 乗              |
| ---------------------- | -------------------- |
| $(2-5)^{2}=(-3)^{2}=9$ | $(5-5)^{2}=0^{2}=0$  |
| $(4-5)^{2}=(-1)^{2}=1$ | $(5-5)^{2}=0^{2}=0$  |
| $(4-5)^{2}=(-1)^{2}=1$ | $(7-5)^{2}=2^{2}=4$  |
| $(4-5)^{2}=(-1)^{2}=1$ | $(9-5)^{2}=4^{2}=16$ |

分散は、これらの値の平均です:

$$\sigma ^{2}={\frac {9+1+1+1+0+0+4+16}{8}}={\frac {32}{8}}=4$$

そして、人口の標準偏差は分散の平方根に等しくなります:

$$\sigma ={\sqrt {4}}=2$$

数値の配列をパラメータとして受け取り、級数の<a href="https://rosettacode.org/wiki/Standard_deviation" target="_blank" rel="noopener noreferrer nofollow">標準偏差</a>を返す関数を記述します。

# --hints--

`standardDeviation` という関数です。

```js
assert(typeof standardDeviation == 'function');
```

`standardDeviation([2, 4, 4, 4, 5, 5, 7, 9])` は数字を返します。

```js
assert(typeof standardDeviation([2, 4, 4, 4, 5, 5, 7, 9]) == 'number');
```

`standardDeviation([2, 4, 4, 4, 5, 5, 7, 9])` は `2` を返します。

```js
assert.equal(standardDeviation([2, 4, 4, 4, 5, 5, 7, 9]), 2);
```

`standardDeviation([600, 470, 170, 430, 300])` は `147.323` を返します。

```js
assert.equal(standardDeviation([600, 470, 170, 430, 300]), 147.323);
```

`standardDeviation([75, 83, 96, 100, 121, 125])` は `18.239` を返します。

```js
assert.equal(standardDeviation([75, 83, 96, 100, 121, 125]), 18.239);
```

`standardDeviation([23, 37, 45, 49, 56, 63, 63, 70, 72, 82])` は `16.87` を返します。

```js
assert.equal(
  standardDeviation([23, 37, 45, 49, 56, 63, 63, 70, 72, 82]),
  16.87
);
```

`standardDeviation([271, 354, 296, 301, 333, 326, 285, 298, 327, 316, 287, 314])` は `22.631` を返します。

```js
assert.equal(
  standardDeviation([
    271,
    354,
    296,
    301,
    333,
    326,
    285,
    298,
    327,
    316,
    287,
    314
  ]),
  22.631
);
```

# --seed--

## --seed-contents--

```js
function standardDeviation(arr) {

}
```

# --solutions--

```js
function standardDeviation(arr) {
  var sum = 0,
    sum_sq = 0,
    n = arr.length;
  arr.forEach(function(e) {
    sum += e;
    sum_sq += e * e;
  });

  var std_dev = Math.sqrt(sum_sq / n - Math.pow(sum / n, 2));
  return Math.round(std_dev * 1000) / 1000;
}
```
