---
id: 567af2437cbaa8c51670a16c
title: 객체 속성에 대해 테스트하기
challengeType: 1
forumTopicId: 18324
dashedName: testing-objects-for-properties
---

# --description--

To check if a property on a given object exists or not, you can use the `.hasOwnProperty()` method. `someObject.hasOwnProperty(someProperty)` returns `true` or `false` depending on if the property is found on the object or not.

**예)**

```js
function checkForProperty(object, property) {
  return object.hasOwnProperty(property);
}

checkForProperty({ top: 'hat', bottom: 'pants' }, 'top'); // true
checkForProperty({ top: 'hat', bottom: 'pants' }, 'middle'); // false
```

첫번째 `checkForProperty` 호출은 `true`를 반환하는 반면 두번째 호출은 `false`을 반환합니다.

# --instructions--

함수 파라미터 `obj`로 전달되는 객체가 함수 파라미터 `checkProp`로 전달되는 특정 속성을 포함하는지 여부를 확인하도록 함수 `checkObj`를 수정하시오. `checkProp`에 전달되는 속성이 `obj`에서 찾을 수 있으면 그 속성 값을 반환하시오. 그렇지 않으면 `Not Found`를 반환하시오.

# --hints--

`checkObj({gift: "pony", pet: "kitten", bed: "sleigh"}, "gift")`는 문자열 `pony`을 반환해야 합니다.

```js
assert(
  checkObj({ gift: 'pony', pet: 'kitten', bed: 'sleigh' }, 'gift') === 'pony'
);
```

`checkObj({gift: "pony", pet: "kitten", bed: "sleigh"}, "pet")`는 문자열 `kitten`을 반환해야 합니다.

```js
assert(
  checkObj({ gift: 'pony', pet: 'kitten', bed: 'sleigh' }, 'pet') === 'kitten'
);
```

`checkObj({gift: "pony", pet: "kitten", bed: "sleigh"}, "house")`는 문자열 `Not Found`을 반환해야 합니다.

```js
assert(
  checkObj({ gift: 'pony', pet: 'kitten', bed: 'sleigh' }, 'house') ===
    'Not Found'
);
```

`checkObj({city: "Seattle"}, "city")`는 문자열 `Seattle`를 반환해야 합니다.

```js
assert(checkObj({ city: 'Seattle' }, 'city') === 'Seattle');
```

`checkObj({city: "Seattle"}, "district")`는 문자열 `Not Found`을 반환해야 합니다.

```js
assert(checkObj({ city: 'Seattle' }, 'district') === 'Not Found');
```

`checkObj({pet: "kitten", bed: "sleigh"}, "gift")`는 문자열 `Not Found`을 반환해야 합니다.

```js
assert(checkObj({ pet: 'kitten', bed: 'sleigh' }, 'gift') === 'Not Found');
```

# --seed--

## --seed-contents--

```js
function checkObj(obj, checkProp) {
  // Only change code below this line
  return "Change Me!";
  // Only change code above this line
}
```

# --solutions--

```js
function checkObj(obj, checkProp) {
  if(obj.hasOwnProperty(checkProp)) {
    return obj[checkProp];
  } else {
    return "Not Found";
  }
}
```
