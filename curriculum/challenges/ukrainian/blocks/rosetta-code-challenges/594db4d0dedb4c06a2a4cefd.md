---
id: 594db4d0dedb4c06a2a4cefd
title: задача баббіджа
challengeType: 1
forumTopicId: 302229
dashedName: babbage-problem
---

# --description--

Чарльз Баббідж, передбачаючи типи завдань, які його Аналітична машина зможе розв’язувати, навів такий приклад:

<blockquote>
  Яке найменше додатне ціле число, квадрат якого закінчується цифрами 269,696?
  <footer style='margin-left: 2em;'>Баббідж, лист до лорда Боудена, 1837; див. Холлінгдейл і Тутілл, <i>Електронні комп’ютери</i>, друге видання, 1970, с. 125.</footer>
</blockquote>

Він вважав, що відповідь може бути 99 736, квадрат якого дорівнює 9 947 269 696; але він не міг бути впевненим.

Завдання — з’ясувати, чи був Баббідж правий.

# --instructions--

Реалізуйте функцію, яка повертає найменше ціле число, що задовольняє задачу Баббіджа. Якщо Баббідж був правий, поверніть число Баббіджа.

# --hints--

`babbage` має бути функцією.

```js
assert(typeof babbage === 'function');
```

`babbage(99736, 269696)` не має повертати 99736 (існує менша відповідь).

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
