---
id: acda2fb1324d9b0fa741e6b5
title: 끝 부분 확인하기
challengeType: 1
forumTopicId: 16006
dashedName: confirm-the-ending
---

# --description--

Check if a string (first argument, `str`) ends with the given target string (second argument, `target`).

This challenge _can_ be solved with the `.endsWith()` method, which was introduced in ES2015. But for the purpose of this challenge, we would like you to use one of the JavaScript substring methods instead.

# --hints--

`confirmEnding("Bastian", "n")`은 `true`를 반환합니다.

```js
assert.isTrue(confirmEnding('Bastian', 'n'));
```

`confirmEnding("Congratulation", "on")`은 `true`를 반환합니다.

```js
assert.isTrue(confirmEnding('Congratulation', 'on'));
```

`confirmEnding("Connor", "n")`은 `false`를 반환합니다.

```js
assert.isFalse(confirmEnding('Connor', 'n'));
```

`confirmEnding("Walking on water and developing software from a specification are easy if both are frozen", "specification")`은 `false`를 반환합니다.

```js
assert.isFalse(
  confirmEnding(
    'Walking on water and developing software from a specification are easy if both are frozen',
    'specification'
  )
);
```

`confirmEnding("He has to give me a new name", "name")`은 `true`를 반환합니다.

```js
assert.isTrue(confirmEnding('He has to give me a new name', 'name'));
```

`confirmEnding("Open sesame", "same")`은 `true`를 반환합니다.

```js
assert.isTrue(confirmEnding('Open sesame', 'same'));
```

`confirmEnding("Open sesame", "sage")`은 `false`를 반환합니다.

```js
assert.isFalse(confirmEnding('Open sesame', 'sage'));
```

`confirmEnding("Open sesame", "game")`은 `false`를 반환합니다.

```js
assert.isFalse(confirmEnding('Open sesame', 'game'));
```

`confirmEnding("If you want to save our world, you must hurry. We dont know how much longer we can withstand the nothing", "mountain")` should return `false`.

```js
assert.isFalse(
  confirmEnding(
    'If you want to save our world, you must hurry. We dont know how much longer we can withstand the nothing',
    'mountain'
  )
);
```

`confirmEnding("Abstraction", "action")`은 `true`를 반환합니다.

```js
assert.isTrue(confirmEnding('Abstraction', 'action'));
```

해당 도전 과제를 해결하기 위해 내장 메소드인 `.endsWith()`를 사용하지 않아야 합니다.

```js
assert.notMatch(__helpers.removeJSComments(code), /\.endsWith\(.*?\)\s*?;?/);
assert.notMatch(__helpers.removeJSComments(code), /\['endsWith'\]/);
```

# --seed--

## --seed-contents--

```js
function confirmEnding(str, target) {
  return str;
}

confirmEnding('Bastian', 'n');
```

# --solutions--

```js
function confirmEnding(str, target) {
  return str.substring(str.length - target.length) === target;
}

confirmEnding('Bastian', 'n');
```
