---
id: 56533eb9ac21ba0edf2244ae
title: JavaScript에서 나머지를 구하기
challengeType: 1
forumTopicId: 18184
dashedName: finding-a-remainder-in-javascript
---

# --description--

The <dfn>remainder</dfn> operator `%` gives the remainder of the division of two numbers.

**예)**

<pre>
5 % 2 = 1
5 / 2 = 2 remainder 1
2 * 2 = 4
5 - 4 = 1
</pre>

**Usage**  
In mathematics, a number can be checked to be even or odd by checking the remainder of the division of the number by `2`. Even numbers have a remainder of `0`, while odd numbers a remainder of `1`.

<pre>
17 % 2 = 1
48 % 2 = 0
</pre>

**노트:** <dfn>나머지</dfn> 연산자는 때때로 계수 연산자와 혼동되는 경우가 있습니다. 나머지는 계수와 상당히 닮아 있습니다만, 음수에서는 제대로 기능하지 않습니다.

# --instructions--

나머지(`%`) 연산자를 사용해서 `reaminder`가 `11`을 `3`으로 나눈 나머지와 같도록 해주세요.

# --hints--

변수 `remainder`를 초기화되어야 합니다.

```js
assert(/(const|let|var)\s+?remainder/.test(__helpers.removeJSComments(code)));
```

`remainder`의 값은 `2`와 같아야 합니다.

```js
assert(remainder === 2);
```

당신은 `%` 연산자를 사용해야 합니다.

```js
assert(/\s+?remainder\s*?=\s*?.*%.*;?/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function (y) {
  return 'remainder = ' + y;
})(remainder);
```

## --seed-contents--

```js
const remainder = 0;
```

# --solutions--

```js
const remainder = 11 % 3;
```
