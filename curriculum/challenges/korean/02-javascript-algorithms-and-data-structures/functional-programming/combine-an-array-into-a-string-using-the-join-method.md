---
id: 587d7daa367417b2b2512b6c
title: join 메소드를 사용하여 배열을 문자열로 합치기
challengeType: 1
forumTopicId: 18221
dashedName: combine-an-array-into-a-string-using-the-join-method
---

# --description--

The `join` method is used to join the elements of an array together to create a string. It takes an argument for the delimiter that is used to separate the array elements in the string.

여기 예시가 있습니다:

```js
const arr = ["Hello", "World"];
const str = arr.join(" ");
```

`str`는 `Hello World` 이라는 문자열이 됩니다.
# --instructions--

`str` 문자열에 있는 단어들로 문장을 만들기 위해 `sentensify` 함수 안에 있는 `join` 메소드를 사용하시오. 이 함수는 문자열을 반환해야 합니다. 예를 들면 `I-like-Star-Wars`는 `I like Star Wars`로 변환됩니다. 이 과제에서는 `replace` 메소드를 사용하지 않습니다.

# --hints--

코드에 `join` 메소드를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/\.join/g));
```

코드에 `replace` 메소드를 사용하지 않아야 합니다.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?replace/g));
```

`sentensify("May-the-force-be-with-you")`는 문자열을 반환해야 합니다.

```js
assert(typeof sentensify('May-the-force-be-with-you') === 'string');
```

`sentensify("May-the-force-be-with-you")`는 `May the force be with you` 문자열을 반환해야 합니다.

```js
assert(sentensify('May-the-force-be-with-you') === 'May the force be with you');
```

`sentensify("The.force.is.strong.with.this.one")`는 `The force is strong with this one`을 반환해야 합니다.

```js
assert(
  sentensify('The.force.is.strong.with.this.one') ===
    'The force is strong with this one'
);
```

`sentensify("There,has,been,an,awakening")`는 `There has been an awakening`을 반환해야 합니다.

```js
assert(
  sentensify('There,has,been,an,awakening') === 'There has been an awakening'
);
```

# --seed--

## --seed-contents--

```js
function sentensify(str) {
  // Only change code below this line


  // Only change code above this line
}

sentensify("May-the-force-be-with-you");
```

# --solutions--

```js
function sentensify(str) {
  return str.split(/\W/).join(' ');
}
```
