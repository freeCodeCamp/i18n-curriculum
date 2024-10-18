---
id: 594db4d0dedb4c06a2a4cefd
title: バベッジの問題
challengeType: 1
forumTopicId: 302229
dashedName: babbage-problem
---

# --description--

チャールズ・バベッジは、分析エンジンが解決できるであろう問題の種類を見越して、次の例を挙げました。

<blockquote>
  2 乗の末尾が 269,696 になる最小の正の整数は何ですか?
  <footer style='margin-left: 2em;'>Babbage, letter to Lord Bowden, 1837; see Hollingdale and Tootill, <i>Electronic Computers</i>, second edition, 1970, p. 125.</footer>
</blockquote>

答えは 99,736 で、その 2 乗は 9,947,269,696 であると考えましたが、確信はありませんでした。

バベッジの答えが正しかったかどうかを調べましょう。

# --instructions--

バベッジの問題の答えとなる最小の整数を返す関数を作成します。 バベッジが正しかった場合は、バベッジが答えた数値を返します。

# --hints--

`babbage` という関数があります。

```js
assert(typeof babbage === 'function');
```

`babbage(99736, 269696)` は 99736 を返さないはずです (もっと小さな答えがあります)。

```js
assert.equal(babbage(babbageAns, endDigits), answer);
```

# --seed--

## --after-user-code--

```js
const babbageAns = 99736;
const endDigits = 269696;
const answer = 25264;
```

## --seed-contents--

```js
function babbage(babbageNum, endDigits) {

  return true;
}
```

# --solutions--

```js
function babbage(babbageAns, endDigits) {
  const babbageNum = Math.pow(babbageAns, 2);
  const babbageStartDigits = parseInt(babbageNum.toString().replace('269696', ''));
  let answer = 99736;

  // count down from this answer and save any sqrt int result. return lowest one
  for (let i = babbageStartDigits; i >= 0; i--) {
    const num = parseInt(i.toString().concat('269696'));
    const result = Math.sqrt(num);
    if (result === Math.floor(Math.sqrt(num))) {
      answer = result;
    }
  }

  return answer;
}
```
