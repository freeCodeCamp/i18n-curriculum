---
id: 587d7b7c367417b2b2512b1a
title: 대괄호 표기법을 사용하여 속성 이름에 접근하기
challengeType: 1
forumTopicId: 301150
dashedName: access-property-names-with-bracket-notation
---

# --description--

첫 번째 객체 챌린지에서 변수의 값을 평가하는 방법을 사용하여 객체 속성에 접근하는 대괄호 표기법에 대해서 알아봤습니다. 예를 들어, 아래 `foods` 객체가 슈퍼마켓 계산대 프로그램에서 사용되고 있다고 가정해 보세요. 우리에게는 `selectedFood`를 설정하는 함수가 있고, 해당 음식이 `foods` 객체에 있는지 확인하려고 합니다. 이렇게 보일 것 입니다:

```js
let selectedFood = getCurrentFood(scannedItem);
let inventory = foods[selectedFood];
```

이 코드의 첫 번째 줄은 `selectedFood` 변수에 저장된 값을 평가하고, 그 값을 food 객체의 키로 사용합니다. 두 번째 줄은 `foods` 객체의 키에 해당하는 값을 반환하고 해당 값이 없으면 `undefined`를 반환합니다. 괄호 표기법은 객체 속성을 런타임 이전에 알 수 없거나, 객체 속성에 더 동적인 방식으로 액세스해야 할 때 매우 유용합니다.

# --instructions--

우리는 슈퍼마켓 계산대에서 스캔한 항목을 매개변수로 받는 `checkInventory` 함수를 정의했습니다. `foods` 객체의 `scannedItem` 키의 현재값을 반환해야 합니다. `checkInventory` 함수에는 유효한 키만 매개변수로 제공된다고 가정합니다.

# --hints--

`checkInventory`는 함수여야 합니다.

```js
assert.strictEqual(typeof checkInventory, 'function');
```

`foods` 객체는 다음과 같은 키-값 쌍만 가져야 합니다: `apples: 25`, `oranges: 32`, `plums: 28`, `bananas: 13`, `grapes: 35`, `strawberries: 27`.

```js
assert.deepEqual(foods, {
  apples: 25,
  oranges: 32,
  plums: 28,
  bananas: 13,
  grapes: 35,
  strawberries: 27
});
```

`checkInventory("apples")`은 `25`를 반환해야 합니다.

```js
assert.strictEqual(checkInventory('apples'), 25);
```

`checkInventory("bananas")`은 `13`을 반환해야 합니다.

```js
assert.strictEqual(checkInventory('bananas'), 13);
```

`checkInventory("strawberries")`은 `27`을 반환해야 합니다.

```js
assert.strictEqual(checkInventory('strawberries'), 27);
```

# --seed--

## --seed-contents--

```js
let foods = {
  apples: 25,
  oranges: 32,
  plums: 28,
  bananas: 13,
  grapes: 35,
  strawberries: 27
};

function checkInventory(scannedItem) {
  // Only change code below this line

  // Only change code above this line
}

console.log(checkInventory("apples"));
```

# --solutions--

```js
let foods = {
  apples: 25,
  oranges: 32,
  plums: 28,
  bananas: 13,
  grapes: 35,
  strawberries: 27
};

function checkInventory(scannedItem) {
  return foods[scannedItem];
}
```
