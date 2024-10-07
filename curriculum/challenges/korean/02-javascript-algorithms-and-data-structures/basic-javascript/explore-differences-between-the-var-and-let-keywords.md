---
id: 587d7b87367417b2b2512b3f
title: var 키워드와 let 키워드의 차이에 대해서 확인하기
challengeType: 1
forumTopicId: 301202
dashedName: explore-differences-between-the-var-and-let-keywords
---

# --description--

One of the biggest problems with declaring variables with the `var` keyword is that you can easily overwrite variable declarations:

```js
var camper = "James";
var camper = "David";
console.log(camper);
```

위의 코드에서는, 변수 `camper`가 처음에는 `James`로 선언이 되어 있습니다만, 그 후 `David`로 덮어쓰기 되어 있습니다. 그 때문에 콘솔에서는 문자열 `David`가 표시됩니다.

소규모의 어플리케이션이라면, 이런 문제가 발생하기 어려울 수도 있습니다. 하지만 코드의 규모가 커지면, 변수를 무의식중에 실수로 덮어쓰기 해버릴 가능성이 높아집니다. 하지만 이런 동작에서 에러가 나타나지 않기 때문에, 버그를 발견하고 수정하는 것이 더욱 어려워 집니다.

JavaScript의 큰 업데이트인 ES6에서는, `var` 키워드의 이런 잠재적 문제를 해결하기 위해서 `let`이라는 키워드가 도입되었습니다. 이후의 도전에서 ES6의 다른 기능에 대해서 학습할 것입니다.

위의 코드의 `var`를 `let`으로 변경한 경우, 결과는 에러가 됩니다.

```js
let camper = "James";
let camper = "David";
```

에러는 브라우저 콘솔에서 확인 가능합니다.

`var`하고는 다르게, `let`을 사용하는 경우는, 같은 이름을 가진 변수는 한 번 밖에 선언할 수가 없습니다.

# --instructions--

`let` 키워드만 사용해도록 코드를 변경해 주세요.

# --hints--

`var`가 코드에 있으면 안됩니다.

```js
assert.notMatch(code, /var/g);
```

`catName`은 문자열 `Oliver`이어야 합니다.

```js
assert.equal(catName, 'Oliver');
```

`catSound`는 문자열 `Meow!`이어야 합니다.

```js
assert.equal(catSound, 'Meow!');
```

# --seed--

## --seed-contents--

```js
var catName = "Oliver";
var catSound = "Meow!";
```

# --solutions--

```js
let catName = "Oliver";
let catSound = "Meow!";
```
