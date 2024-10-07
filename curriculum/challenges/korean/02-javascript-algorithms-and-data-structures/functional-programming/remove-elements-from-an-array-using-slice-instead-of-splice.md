---
id: 9d7123c8c441eeafaeb5bdef
title: splice 대신 slice로 배열에서 요소 제거하기
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

A common pattern while working with arrays is when you want to remove items and keep the rest of the array. JavaScript offers the `splice` method for this, which takes arguments for the index of where to start removing items, then the number of items to remove. If the second argument is not provided, the default is to remove items through the end. However, the `splice` method mutates the original array it is called on. Here's an example:

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

`splice`는 문자열 `London`를 반환하고 cities 배열에서 그것을 삭제합니다. `cities`는 `["Chicago", "Delhi", "Islamabad", "Berlin"]` 값을 가질 것입니다.

이전 과제에서 본 것처럼 `slice` 메소드는 본래 배열을 변형시키지 않고 변수에 저장될 수 있는 새로운 배열을 반환합니다. `slice` 메소드는 슬라이스를 시작하고 끝낼 인덱스에 대한 두 개의 인수를 받으며 (끝 인덱스는 포함되지 않음), 해당 항목들을 새로운 배열로 반환한다는 것을 기억하세요. `splice` 대신 `slice` 메소드를 사용하면 배열을 변형시키는 부작용을 피할 수 있습니다.

# --instructions--

`splice` 대신에 `slice`를 사용하여 함수 `nonMutatingSplice`를 다시 작성하시오. `cities` 배열의 길이를 3으로 제한해야 하고 오직 첫 세 개의 아이템만 담은 배열을 반환해야 합니다.

함수에 제공된 본래 함수를 변형시키지 마시오.

# --hints--

`slice` 메소드를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

`splice` 메소드를 사용하지 않아야 합니다.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

함수에 전달된 본래 배열을 변형시키지 않아야 합니다.

```js
assert.deepEqual(_inputCities, ["Chicago", "Delhi", "Islamabad", "London", "Berlin"]);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])`는 `["Chicago", "Delhi", "Islamabad"]`를 반환해야 합니다.

```js
assert.deepEqual(nonMutatingSplice(_inputCities), ["Chicago", "Delhi", "Islamabad"]);
```

# --seed--

## --seed-contents--

```js
function nonMutatingSplice(cities) {

  return cities.splice(3);
}
```

## --after-user-code--

```js
const _inputCities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
```

# --solutions--

```js
function nonMutatingSplice(cities) {
  return cities.slice(0,3);
}
```
