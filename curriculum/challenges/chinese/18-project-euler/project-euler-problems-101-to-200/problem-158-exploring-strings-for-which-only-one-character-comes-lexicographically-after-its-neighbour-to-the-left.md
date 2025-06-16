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

Taking three different letters from the 26 letters of the alphabet, character strings of length three can be formed.

例如“abc”，“hat” 以及“zyx”。

When we study these three examples we see that for 'abc' two characters come lexicographically after its neighbor to the left.

For 'hat' there is exactly one character that comes lexicographically after its neighbor to the left. For 'zyx' there are zero characters that come lexicographically after its neighbor to the left.

In all there are 10400 strings of length 3 for which exactly one character comes lexicographically after its neighbor to the left.

我们现在考虑由 $n ≤ 26$ 的字母表中的不同字符组成的字符串。

For every $n$, $p(n)$ is the number of strings of length $n$ for which exactly one character comes lexicographically after its neighbor to the left.

求 $p(n)$ 的最大值是多少？

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
