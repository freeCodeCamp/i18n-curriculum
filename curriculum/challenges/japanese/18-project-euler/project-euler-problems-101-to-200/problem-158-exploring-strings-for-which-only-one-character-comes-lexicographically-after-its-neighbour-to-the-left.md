---
id: 5900f40a1000cf542c50ff1d
title: >-
  Problem 158: Exploring strings for which only one character comes lexicographically after its neighbor to the left
challengeType: 1
forumTopicId: 301789
dashedName: >-
  problem-158-exploring-strings-for-which-only-one-character-comes-lexicographically-after-its-neighbour-to-the-left
---

# --description--

26 文字のアルファベットから 3 つの異なる文字を取り、長さ 3 の文字列を作ります。

例えば、'abc'、'hat'、'zyx' です。

When we study these three examples we see that for 'abc' two characters come lexicographically after its neighbor to the left.

For 'hat' there is exactly one character that comes lexicographically after its neighbor to the left. For 'zyx' there are zero characters that come lexicographically after its neighbor to the left.

In all there are 10400 strings of length 3 for which exactly one character comes lexicographically after its neighbor to the left.

ここで、$n (≤ 26)$ 個の異なるアルファベットからなる文字列について考えます。

For every $n$, $p(n)$ is the number of strings of length $n$ for which exactly one character comes lexicographically after its neighbor to the left.

$p(n)$ の最大値を求めなさい。

# --hints--

`lexicographicNeighbors()` should return `409511334375`.

```js
assert.strictEqual(lexicographicNeighbors(), 409511334375);
```

# --seed--

## --seed-contents--

```js
function lexicographicNeighbors() {

  return true;
}

lexicographicNeighbors();
```

# --solutions--

```js
// solution required
```
