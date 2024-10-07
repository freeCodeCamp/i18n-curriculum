---
id: 5ee127a03c3b35dd45426493
title: 변수의 값을 다른 변수의 값으로 할당하기
challengeType: 1
forumTopicId: 418265
dashedName: assigning-the-value-of-one-variable-to-another
---

# --description--

After a value is assigned to a variable using the <dfn>assignment</dfn> operator, you can assign the value of that variable to another variable using the <dfn>assignment</dfn> operator.

```js
var myVar;
myVar = 5;
var myNum;
myNum = myVar;
```

위의 코드는 우선 값을 가지지 않은 `myVar` 변수를 선언한 후, 값 `5`를 할당합니다. 다음으로, 값을 가지지 않은 `myNum`이라는 변수를 선언합니다. 그리고 `myVar`의 내용(`5`라는 값) 을 `myNum`에 할당하고 있습니다. 그러면 이제 `myNum` 또한 값 `5`를 갖게 됩니다.

# --instructions--

변수 `a`의 내용을 변수 `b`에 할당해 주세요.

# --hints--

당신은 지정된 코멘트 위의 코드를 변경하면 안됩니다.

```js
assert(/var a;/.test(__helpers.removeJSComments(code)) && /a = 7;/.test(__helpers.removeJSComments(code)) && /var b;/.test(__helpers.removeJSComments(code)));
```

`b` 의 값은 `7`을 갖고 있어야 합니다.

```js
assert(typeof b === 'number' && b === 7);
```

`a` 는 `=` 을 사용해 `b` 가 할당되어야 합니다.

```js
assert(/b\s*=\s*a\s*/g.test(__helpers.removeJSComments(code)));
```

# --seed--

## --before-user-code--

```js
if (typeof a != 'undefined') {
  a = undefined;
}
if (typeof b != 'undefined') {
  b = undefined;
}
```

## --after-user-code--

```js
(function(a, b) {
  return 'a = ' + a + ', b = ' + b;
})(a, b);
```

## --seed-contents--

```js
// Setup
var a;
a = 7;
var b;

// Only change code below this line
```

# --solutions--

```js
var a;
a = 7;
var b;
b = a;
```
