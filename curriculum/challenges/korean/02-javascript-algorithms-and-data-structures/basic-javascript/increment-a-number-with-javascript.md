---
id: 56533eb9ac21ba0edf2244ac
title: JavaScript에서 수치를 증가시키기
challengeType: 1
videoUrl: 'https://scrimba.com/c/ca8GLT9'
forumTopicId: 18201
dashedName: increment-a-number-with-javascript
---

# --description--

You can easily <dfn>increment</dfn> or add one to a variable with the `++` operator.

```js
i++;
```

이것은 다음에 나오는 수식과 같습니다.

```js
i = i + 1;
```

**노트:** 이 전체 행이 `i++;`가 되어, 등호(=) 가 불필요해집니다.

# --instructions--

코드를 변경해서 `myVar`에 `++` 연산자를 사용해 주세요.

# --hints--

`myVar`는 `88`과 같아야 합니다.

```js
assert(myVar === 88);
```

당신은 할당 연산자를 사용해서는 안됩니다.

```js
assert(
  /let\s+myVar\s*=\s*87;\s*\/*.*\s*([+]{2}\s*myVar|myVar\s*[+]{2})/.test(__helpers.removeJSComments(code))
);
```

`++` 연산자를 사용할 필요가 있습니다.

```js
assert(/[+]{2}\s*myVar|myVar\s*[+]{2}/.test(__helpers.removeJSComments(code)));
```

지정 코멘트보다 위에 있는 코드를 변경하지 말아 주세요.

```js
assert(/let myVar = 87;/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(z){return 'myVar = ' + z;})(myVar);
```

## --seed-contents--

```js
let myVar = 87;

// Only change code below this line
myVar = myVar + 1;
```

# --solutions--

```js
let myVar = 87;
myVar++;
```
