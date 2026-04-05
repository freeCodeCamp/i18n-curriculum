---
id: 594db4d0dedb4c06a2a4cefd
title: 배비지 문제
challengeType: 1
forumTopicId: 302229
dashedName: babbage-problem
---

# --description--

찰스 배비지는 자신의 해석 기관이 해결할 수 있을 문제 유형을 미리 생각하며 다음 예를 들었습니다:

<blockquote>
  제곱수가 끝자리로 269,696를 가지는 가장 작은 양의 정수는 무엇일까요?
  <footer style='margin-left: 2em;'>배비지, 1837년 로드 보든에게 보낸 편지; Hollingdale와 Tootill, <i>Electronic Computers</i>, 2판, 1970, p. 125 참조.</footer>
</blockquote>

그는 답이 99,736일 것이라고 생각했는데, 이 수의 제곱은 9,947,269,696입니다; 하지만 확신하지는 못했습니다.

과제는 배비지가 맞았는지 알아내는 것입니다.

# --instructions--

배비지 문제를 만족하는 가장 작은 정수를 반환하는 함수를 구현하세요. 배비지가 맞았다면 배비지의 수를 반환하세요.

# --hints--

`babbage`는 함수여야 합니다.

```js
assert(typeof babbage === 'function');
```

`babbage(99736, 269696)`는 99736을 반환하면 안 됩니다 (더 작은 답이 있습니다).

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
