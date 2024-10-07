---
id: 587d7b84367417b2b2512b36
title: '닫히지 않은 괄호, 대괄호, 중괄호 및 따옴표 찾아내기'
challengeType: 1
forumTopicId: 301190
dashedName: catch-unclosed-parentheses-brackets-braces-and-quotes
---

# --description--

Another syntax error to be aware of is that all opening parentheses, brackets, curly braces, and quotes have a closing pair. Forgetting a piece tends to happen when you're editing existing code and inserting items with one of the pair types. Also, take care when nesting code blocks into others, such as adding a callback function as an argument to a method.

이 실수를 피하는 한 가지 방법은, 여는 문자를 입력하자마자 즉시 대응하는 닫는 문자도 입력한 후, 다시 커서를 그 사이로 옮겨 코딩을 계속하는 것입니다. 다행히도 요즘 사용되는 대부분의 코드 편집기는 여는 문자를 입력했을 때 닫는 문자를 자동으로 생성합니다.

# --instructions--

코드에서 여닫는 쌍이 안 맞는 오류 2개를 수정하세요.

# --hints--

배열에서 빠진 부분을 수정해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/myArray\s*?=\s*?\[\s*?1\s*?,\s*?2\s*?,\s*?3\s*?\];/g));
```

`.reduce()` 메소드에서 빠진 부분을 수정해야 합니다. 콘솔에는 `Sum of array values is: 6`가 출력되어야 합니다.

```js
assert(arraySum === 6);
```

# --seed--

## --seed-contents--

```js
let myArray = [1, 2, 3;
let arraySum = myArray.reduce((previous, current =>  previous + current);
console.log(`Sum of array values is: ${arraySum}`);
```

# --solutions--

```js
let myArray = [1, 2, 3];
let arraySum = myArray.reduce((previous, current) =>  previous + current);
console.log(`Sum of array values is: ${arraySum}`);
```
