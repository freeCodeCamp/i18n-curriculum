---
id: 594db4d0dedb4c06a2a4cefd
title: バベッジ問題
challengeType: 1
forumTopicId: 302229
dashedName: babbage-problem
---

# --description--

チャールズ・バベッジは、自身の解析機関が解ける問題の例として、次のような問いを挙げました。

<blockquote>
  正の整数のうち、その二乗の末尾が269,696で終わる最小の数はいくつか？
  <footer style='margin-left: 2em;'>バベッジ、ロード・ボーデンへの手紙、1837年；ホリングデールとトゥーティル著『Electronic Computers』第2版、1970年、125ページ参照。</footer>
</blockquote>

彼は答えが99,736かもしれないと考えました。この数の二乗は9,947,269,696ですが、確信は持てませんでした。

この課題は、バベッジの答えが正しいかどうかを調べることです。

# --instructions--

バベッジ問題を満たす最小の整数を返す関数を実装してください。もしバベッジの答えが正しければ、その数を返してください。

# --hints--

`babbage` は関数であるべきです。

```js
assert(typeof babbage === 'function');
```

`babbage(99736, 269696)` は99736を返してはいけません（もっと小さい答えがあります）。

```js
const babbageAns = 99736;
const endDigits = 269696;
const answer = 25264;
assert.equal(babbage(babbageAns, endDigits), answer);
```

# --seed--

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
