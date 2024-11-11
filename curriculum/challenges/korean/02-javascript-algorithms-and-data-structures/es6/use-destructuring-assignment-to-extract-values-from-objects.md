---
id: 5cfa550e84205a357704ccb6
title: 객체에서 값을 추출하기 위해 구조 분해 할당 사용하기
challengeType: 1
forumTopicId: 301216
dashedName: use-destructuring-assignment-to-extract-values-from-objects
---

# --description--

<dfn>구조 분해 할당</dfn>은 ES6에서 도입된 특별한 문법으로, 객체에서 직접 가져온 값을 깔끔하게 할당합니다.

아래 코드를 주의 깊게 읽어보세요.

```js
const user = { name: 'John Doe', age: 34 };

const name = user.name;
const age = user.age;
```

`name`이 문자열 `John Doe`의 값을 가지면, `age`는 숫자 `34`를 가질 것입니다.

여기 ES6 구조 분해 문법을 사용한 할당문이 있습니다.

```js
const { name, age } = user;
```

다시, `name`은 문자열 `John Doe`의 값을 가질 것이고, `age`는 숫자 `34`를 가질 것입니다.

여기에서 `name`과 `age` 변수가 생성되어, `user` 객체에서 각자의 값을 할당받습니다. 이것이 얼마나 깔끔한지 볼 수 있습니다.

얼마나 적든지 간에 추출하고자 하는 만큼의 값을 객체에서 추출할 수 있습니다.

# --instructions--

두 할당을 이와 같은 구조 분해 할당으로 교체하세요. 교체 후에도 여전히 변수 `today` 및 `tomorrow`를 `HIGH_TEMPERATURES` 객체에서 가져온 `today` 및 `tomorrow` 값으로 할당해야 합니다.

# --hints--

ES5 할당 문법을 제거해야 합니다.

```js
assert(
  !__helpers.removeJSComments(code).match(/today\s*=\s*HIGH_TEMPERATURES\.(today|tomorrow)/g)
);
```

구조 분해를 사용하여 변수 `today`를 생성해야 합니다.

```js
assert(
  __helpers.removeJSComments(code).match(/(var|let|const)\s*{\s*(today[^}]*|[^,]*,\s*today)\s*}\s*=\s*HIGH_TEMPERATURES(;|\s+|\/\/)/g)
);
```

구조 분해를 사용하여 변수 `tomorrow`를 생성해야 합니다.

```js
assert(
  __helpers.removeJSComments(code).match(/(var|let|const)\s*{\s*(tomorrow[^}]*|[^,]*,\s*tomorrow)\s*}\s*=\s*HIGH_TEMPERATURES(;|\s+|\/\/)/g)
);
```

`today`는 `77`과 같아야 하며 `tomorrow`는 `80`과 같아야 합니다.

```js
assert(today === 77 && tomorrow === 80);
```

# --seed--

## --seed-contents--

```js
const HIGH_TEMPERATURES = {
  yesterday: 75,
  today: 77,
  tomorrow: 80
};

// Only change code below this line

const today = HIGH_TEMPERATURES.today;
const tomorrow = HIGH_TEMPERATURES.tomorrow;

// Only change code above this line
```

# --solutions--

```js
const HIGH_TEMPERATURES = {
  yesterday: 75,
  today: 77,
  tomorrow: 80
};

const { today, tomorrow } = HIGH_TEMPERATURES;
```
