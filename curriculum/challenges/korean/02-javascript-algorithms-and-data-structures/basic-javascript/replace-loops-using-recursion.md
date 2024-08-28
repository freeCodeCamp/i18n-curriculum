---
id: 5cfa3679138e7d9595b9d9d4
title: 반복문을 재귀로 대체하기
challengeType: 1
videoUrl: >-
  https://www.freecodecamp.org/news/how-recursion-works-explained-with-flowcharts-and-a-video-de61f40cb7f9/
forumTopicId: 301175
dashedName: replace-loops-using-recursion
---

# --description--

재귀(Recursion)는 함수가 자기 자신을 이용하여 표현될 수 있는 개념입니다. 이를 이해하기 위해, 다음과 같은 작업을 생각해 봅시다. 배열의 처음 `n`개의 요소를 곱하여 그 요소들을 곱한 값을 만듭니다. `for` 반복문을 사용하면 이렇게 할 수 있습니다.

```js
  function multiply(arr, n) {
    let product = 1;
    for (let i = 0; i < n; i++) {
      product *= arr[i];
    }
    return product;
  }
```

그러나, `multiply(arr, n) == multiply(arr, n - 1) * arr[n - 1]`이라는 점에 주목하세요. 이는 `multiply`를 자기 자신을 이용하여 다시 작성할 수 있으며, 반복문을 사용할 필요가 없다는 것을 의미합니다.

```js
  function multiply(arr, n) {
    if (n <= 0) {
      return 1;
    } else {
      return multiply(arr, n - 1) * arr[n - 1];
    }
  }
```

`multiply`의 재귀 버전은 이렇게 동작합니다. <dfn>기본 사례</dfn>에서, `n <= 0`인 경우에는 1을 반환합니다. `n`이 더 큰 값일 때에는 `n - 1`을 인수로 하여 자신을 호출합니다. 해당 함수 호출은 동일한 방식으로 평가되며, `n <= 0`이 될 때까지 다시 `multiply`를 호출합니다. 이 시점에서 모든 함수가 반환되고, 원래의 `multiply`가 답을 반환합니다.

**참고:** 재귀 함수는 다시 함수를 호출하지 않고 반환되는 기본 사례(base case)를 반드시 가져야 합니다 (이 예제에서는 `n <= 0`일 때), 그렇지 않으면 함수가 실행을 끝낼 수 없습니다.

# --instructions--

재귀 함수를 작성하세요, `sum(arr, n)`, 이 함수는 배열 `arr`의 처음 `n`개의 요소의 합을 반환합니다.

# --hints--

`sum([1], 0)`은 0과 같아야 합니다.

```js
assert.equal(sum([1], 0), 0);
```

`sum([2, 3, 4], 1)`은 2와 같아야 합니다.

```js
assert.equal(sum([2, 3, 4], 1), 2);
```

`sum([2, 3, 4, 5], 3)`은 9와 같아야 합니다.

```js
assert.equal(sum([2, 3, 4, 5], 3), 9);
```

코드는 어떠한 종류의 반복문 (`for`나 `while` 또는 `forEach`, `map`, `filter`, `reduce`와 같은 고차 함수)을 사용해서는 안 됩니다.

```js
assert(
  !__helpers.removeJSComments(code).match(/for|while|forEach|map|filter|reduce/g)
);
```

이 문제를 해결하기 위해 재귀를 사용해야 합니다.

```js
assert(
  sum.toString().match(/sum\(.*\)/g).length > 1
);
```

# --seed--

## --seed-contents--

```js
function sum(arr, n) {
  // Only change code below this line

  // Only change code above this line
}
```

# --solutions--

```js
function sum(arr, n) {
  // Only change code below this line
  if(n <= 0) {
    return 0;
  } else {
    return sum(arr, n - 1) + arr[n - 1];
  }
  // Only change code above this line
}
```
