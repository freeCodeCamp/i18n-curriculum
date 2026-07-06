---
id: 594db4d0dedb4c06a2a4cefd
title: مشكلة باباج
challengeType: 1
forumTopicId: 302229
dashedName: babbage-problem
---

# --description--

تقدم تشارلز باباج، متطلعًا إلى أنواع المشكلات التي ستتمكن محركته التحليلية من حلها، هذا المثال:

<blockquote>
ما هو أصغر عدد صحيح موجب يكون مربعه منتهيًا بالأرقام 269,696؟
  <footer style='margin-left: 2em;'>باباج، رسالة إلى اللورد بودن، 1837؛ انظر هولينغديل وتوتيل، <i>الحواسيب الإلكترونية</i>، الطبعة الثانية، 1970، ص. 125.</footer>
</blockquote>

ظن أن الجواب قد يكون 99,736، الذي مربعه 9,947,269,696؛ لكنه لم يكن متأكدًا.

المهمة هي معرفة ما إذا كان باباج قد توصل إلى الجواب الصحيح.

# --instructions--

نفذ دالة لإرجاع أصغر عدد صحيح يحقق مشكلة باباج. إذا كان باباج محقًا، أرجع رقمه.

# --hints--

يجب أن تكون `babbage` دالة.

```js
assert(typeof babbage === 'function');
```

لا يجب أن تُرجع `babbage(99736, 269696)` الرقم 99736 (هناك جواب أصغر).

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
