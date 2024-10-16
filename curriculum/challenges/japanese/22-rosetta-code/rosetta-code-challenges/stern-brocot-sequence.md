---
id: 5a23c84252665b21eecc8028
title: スターン＝ブロコット数列
challengeType: 1
forumTopicId: 302324
dashedName: stern-brocot-sequence
---

# --description--

このタスクでは、<a href="https://rosettacode.org/wiki/Fibonacci_sequence" target="_blank" rel="noopener noreferrer nofollow">フィボナッチ数列</a>の生成に使用されるのと同様のアルゴリズムによって、スターン＝ブロコット数列を生成します。

<ol>
  <li>数列の 1 番目と 2 番目の要素はどちらも 1 です。</li>
    <ul><li>1, 1</li></ul>
  <li>数列の2番目の要素に注目するところから開始します。</li>
  <li>数列の注目した要素とその前の要素を合計すると (1 + 1) = 2 となり、これを数列の末尾に追加します。</li>
    <ul><li>1, 1, 2</li></ul>
  <li>注目しておいた要素を数列の最後に追加します。</li>
    <ul><li>1, 1, 2, 1</li></ul>
  <li>数列の次の要素に注目します。(3 番目の要素、すなわち 2)</li>
  <li>3 に戻ります。 </li>
    <ul>
      <li></li>
      <li> ── さらに、ループを繰り返します ───</li>
      <li></li>
    </ul>
  <li>数列の注目した要素とその前の要素を合計すると (2 + 1) = 3 となり、これを数列の末尾に追加します。</li>
    <ul><li>1, 1, 2, 1, 3</li></ul>
  <li>注目しておいた要素を数列の最後に追加します。</li>
    <ul><li>1, 1, 2, 1, 3, 2</li></ul>
  <li>数列の次の要素に注目します。(4 番目の要素、すなわち 1)</li>
</ol>

# --instructions--

$n$ が最初に現れるスターン＝ブロコット数列内の位置を返す関数を作成してください。ここで、数列は上記の手法で生成されます。 この数列は1ベースのインデックスを使用することに注意してください。

# --hints--

`sternBrocot` は関数とします。

```js
assert(typeof sternBrocot == 'function');
```

`sternBrocot(2)` は数値を返す必要があります。

```js
assert(typeof sternBrocot(2) == 'number');
```

`sternBrocot(2)` は `3` を返す必要があります。

```js
assert.equal(sternBrocot(2), 3);
```

`sternBrocot(3)` は `5` を返す必要があります。

```js
assert.equal(sternBrocot(3), 5);
```

`sternBrocot(5)` は `11` を返す必要があります。

```js
assert.equal(sternBrocot(5), 11);
```

`sternBrocot(7)` は `19` を返す必要があります。

```js
assert.equal(sternBrocot(7), 19);
```

`sternBrocot(10)` は `39` を返す必要があります。

```js
assert.equal(sternBrocot(10), 39);
```

# --seed--

## --seed-contents--

```js
function sternBrocot(num) {

}
```

# --solutions--

```js
function sternBrocot(num) {
  function f(n) {
    return n < 2
      ? n
      : n & 1
      ? f(Math.floor(n / 2)) + f(Math.floor(n / 2 + 1))
      : f(Math.floor(n / 2));
  }

  function gcd(a, b) {
    return a ? (a < b ? gcd(b % a, a) : gcd(a % b, b)) : b;
  }
  var n;
  for (n = 1; f(n) != num; n++);
  return n;
}
```
