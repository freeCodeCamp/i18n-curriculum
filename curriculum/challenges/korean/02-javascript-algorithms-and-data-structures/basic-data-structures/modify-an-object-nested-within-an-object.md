---
id: 587d7b7c367417b2b2512b19
title: 객체 안의 중첩된 객체 수정하기
challengeType: 1
forumTopicId: 301164
dashedName: modify-an-object-nested-within-an-object
---

# --description--

Now let's take a look at a slightly more complex object. Object properties can be nested to an arbitrary depth, and their values can be any type of data supported by JavaScript, including arrays and even other objects. Consider the following:

```js
let nestedObject = {
  id: 28802695164,
  date: 'December 31, 2016',
  data: {
    totalUsers: 99,
    online: 80,
    onlineStatus: {
      active: 67,
      away: 13,
      busy: 8
    }
  }
};
```

`nestedObject`는 세 개의 속성을 가지고 있습니다: `id`(값은 숫자), `date`(값은 문자열), 그리고 `data` (값은 중첩된 구조를 갖는 객체). 구조가 빠르게 복잡해지지만 여전히 필요한 정보에 접근하기 위해 같은 표기법을 사용할 수 있습니다. 값 `10`을 중첩된 `onlineStatus` 객체의 `busy` 속성에 할당하기 위해 속성을 가리키는 점 표기법을 사용합니다:

```js
nestedObject.data.onlineStatus.busy = 10;
```

# --instructions--

여기 해당 객체 안에 중첩된 다른 객체를 포함하는 `userActivity` 객체를 정의했습니다. `online` 키의 값을 `45`로 설정하시오.

# --hints--

`userActivity`은 `id`, `date` 그리고 `data` 속성을 가져야 합니다.

```js
assert(
  'id' in userActivity && 'date' in userActivity && 'data' in userActivity
);
```

`userActivity`은 `totalUsers` 그리고 `online` 키를 가진 객체로 설정된 `data` 키를 가져야 합니다.

```js
assert('totalUsers' in userActivity.data && 'online' in userActivity.data);
```

`userActivity`의 `data` 키안에 중첩된 `online` 속성은 `45`로 설정되어야 합니다.

```js
assert(userActivity.data.online === 45);
```

`online` 속성은 점 혹은 괄호 표기법으로 설정되어야 합니다.

```js
assert.strictEqual(__helpers.removeJSComments(code).search(/online: 45/), -1);
```

# --seed--

## --seed-contents--

```js
let userActivity = {
  id: 23894201352,
  date: 'January 1, 2017',
  data: {
    totalUsers: 51,
    online: 42
  }
};

// Only change code below this line

// Only change code above this line

console.log(userActivity);
```

# --solutions--

```js
let userActivity = {
  id: 23894201352,
  date: 'January 1, 2017',
  data: {
    totalUsers: 51,
    online: 42
  }
};

userActivity.data.online = 45;
```
