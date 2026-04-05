---
id: 9d7123c8c441eeafaeb5bdef
title: splice 대신 slice를 사용해 배열에서 요소 제거하기
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

배열을 다룰 때 흔히 사용하는 패턴 중 하나는 일부 항목을 제거하고 나머지 배열을 유지하는 것입니다. JavaScript는 이를 위해 `splice` 메서드를 제공하며, 이 메서드는 항목 제거를 시작할 인덱스와 제거할 항목 수를 인수로 받습니다. 두 번째 인수가 제공되지 않으면 기본값으로 끝까지 항목을 제거합니다. 하지만 `splice` 메서드는 호출된 원본 배열을 변경합니다. 예를 들어 다음과 같습니다:

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

여기서 `splice`는 문자열 `London`를 반환하고 cities 배열에서 이를 삭제합니다. `cities`는 `["Chicago", "Delhi", "Islamabad", "Berlin"]` 값을 갖게 됩니다.

지난 도전 과제에서 보았듯이 `slice` 메서드는 원본 배열을 변경하지 않고, 새 배열을 반환하며 이를 변수에 저장할 수 있습니다. `slice` 메서드는 슬라이스를 시작하고 끝낼 인덱스 두 개를 인수로 받으며(끝 인덱스는 포함하지 않음), 해당 항목들을 새 배열로 반환합니다. `slice` 대신 `splice` 메서드를 사용하면 배열을 변경하는 부작용을 피할 수 있습니다.

# --instructions--

`nonMutatingSplice` 대신 `slice`을 사용하여 `splice` 함수를 다시 작성하세요. 제공된 `cities` 배열의 길이를 3으로 제한하고 처음 세 항목만 포함하는 새 배열을 반환해야 합니다.

함수에 제공된 원본 배열을 변경하지 마세요.

# --hints--

코드는 `slice` 메서드를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

코드는 `splice` 메서드를 사용하지 않아야 합니다.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

함수에 전달된 원본 배열을 변경하지 않아야 합니다.

```js
assert(
  (function () {
    const _inputCities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
    nonMutatingSplice(_inputCities);
    return (
      JSON.stringify(_inputCities) ===
      JSON.stringify(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])
    );
  })()
);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])`는 `["Chicago", "Delhi", "Islamabad"]`를 반환해야 합니다.

```js
assert.deepEqual(
  nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"]),
  ["Chicago", "Delhi", "Islamabad"]
);
```

# --seed--

## --seed-contents--

```js
function nonMutatingSplice(cities) {

  return cities.splice(3);
}
```

# --solutions--

```js
function nonMutatingSplice(cities) {
  return cities.slice(0,3);
}
```
