---
id: 594db4d0dedb4c06a2a4cefd
title: 巴貝奇問題
challengeType: 1
forumTopicId: 302229
dashedName: babbage-problem
---

# --description--

查爾斯·巴貝奇展望他的分析機將能解決的各種問題，給出了這個例子：

<blockquote>
  What is the smallest positive integer whose square ends in the digits 269,696?
  <footer style='margin-left: 2em;'>Babbage, letter to Lord Bowden, 1837; see Hollingdale and Tootill, <i>Electronic Computers</i>, second edition, 1970, p. 125.</footer>
</blockquote>

他認為答案可能是 99,736，其平方是 9,947,269,696；但他無法確定。

任務是找出 Babbage 是否有正確答案。

# --instructions--

實作一個函式（程式），傳回符合 Babbage 問題的最低整數。如果 Babbage 是對的，傳回 Babbage 的數字。

# --hints--

`babbage` 應該是一個函式（程式）。

```js
assert(typeof babbage === 'function');
```

`babbage(99736, 269696)` 不應該傳回 99736（有更小的答案）。

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
