---
id: 565bbe00e9cc8ac0725390f4
title: 카드 카운팅
challengeType: 1
forumTopicId: 16809
dashedName: counting-cards
---

# --description--

카지노 게임 블랙잭에서는 플레이어가 덱에 남아있는 높은 카드와 낮은 카드의 상대적인 수를 추적하여 다음 핸드에서 하우스보다 유리한지 여부를 결정할 수 있습니다. 이를 카드 카운팅이라고 합니다.

덱에 높은 카드가 많이 남아있을수록 플레이어에게 유리합니다. 각 카드는 아래 표의 값에 따라 값이 할당됩니다. 카운트 값이 양수인 경우에 플레이어는 높은 금액을 배팅해야 합니다. 카운트 값이 0이거나 음수인 경우에 플레이어는 낮은 금액을 배팅해야 합니다.

<table><thead><tr><th>카운트 값 변화</th><th>카드</th></tr></thead><tbody><tr><td>+1</td><td>2, 3, 4, 5, 6</td></tr><tr><td>0</td><td>7, 8, 9</td></tr><tr><td>-1</td><td>10, 'J', 'Q', 'K', 'A'</td></tr></tbody></table>

당신은 카드 카운팅을 하는 함수를 만들어야 합니다. 이 함수는 숫자 또는 문자열일 수 있는 `card` 매개 변수를 받고 카드의 값에 따라 전역 `count` 변수를 증가 또는 감소시킵니다(표 참조). 이후에 함수는 현재 카운트와 함께 카운트가 양수인 경우 `Bet` 문자열을 반환하고, 카운트가 0이거나 음수인 경우 `Hold` 문자열을 반환합니다. 현재의 카운트 값과 플레이어의 결정(`Bet` 혹은 `Hold`) 은 공백 한칸으로 분리되어야 합니다.

**예시 출력값들: ** `-3 Hold` 혹은 `5 Bet`

**힌트**  
값이 7, 8, 또는 9인 경우 `count`값을 초기화하지마세요. 배열을 반환하지 마세요.  
출력에 따옴표(단일 혹은 이중) 를 포함하지 마세요.

# --hints--

함수는 카운트 값과 텍스트(`Bet` 혹은 `Hold`) 사이에 공백 문자가 하나 있는 값을 반환해야 합니다.

```js
assert(//
  (function () {
    count = 0;
    let out = cc(10);
    const hasSpace = /-?\d+ (Bet|Hold)/.test('' + out);
    return hasSpace;
  })()
);
```

카드 수열이 2, 3, 4, 5, 6인 경우 `5 Bet` 문자열을 반환해야 합니다.

```js
assert(
  (function () {
    count = 0;
    cc(2);
    cc(3);
    cc(4);
    cc(5);
    var out = cc(6);
    if (out === '5 Bet') {
      return true;
    }
    return false;
  })()
);
```

카드 수열이 7, 8, 9인 경우 `0 Hold` 문자열을 반환해야 합니다.

```js
assert(
  (function () {
    count = 0;
    cc(7);
    cc(8);
    var out = cc(9);
    if (out === '0 Hold') {
      return true;
    }
    return false;
  })()
);
```

카드 수열이 10, J, Q, K, A인 경우 `-5 Hold` 문자열을 반환해야 합니다.

```js
assert(
  (function () {
    count = 0;
    cc(10);
    cc('J');
    cc('Q');
    cc('K');
    var out = cc('A');
    if (out === '-5 Hold') {
      return true;
    }
    return false;
  })()
);
```

카드 수열이 3, 7, Q, 8, A인 경우 `-1 Hold` 문자열을 반환해야 합니다.

```js
assert(
  (function () {
    count = 0;
    cc(3);
    cc(7);
    cc('Q');
    cc(8);
    var out = cc('A');
    if (out === '-1 Hold') {
      return true;
    }
    return false;
  })()
);
```

카드 수열이 2, J, 9, 2, 7인 경우 `1 Bet` 문자열을 반환해야 합니다.

```js
assert(
  (function () {
    count = 0;
    cc(2);
    cc('J');
    cc(9);
    cc(2);
    var out = cc(7);
    if (out === '1 Bet') {
      return true;
    }
    return false;
  })()
);
```

카드 수열이 2, 2, 10인 경우 `1 Bet` 문자열을 반환해야 합니다.

```js
assert(
  (function () {
    count = 0;
    cc(2);
    cc(2);
    var out = cc(10);
    if (out === '1 Bet') {
      return true;
    }
    return false;
  })()
);
```

카드 수열이 3, 2, A, 10, K인 경우 `-1 Hold` 문자열을 반환해야 합니다.

```js
assert(
  (function () {
    count = 0;
    cc(3);
    cc(2);
    cc('A');
    cc(10);
    var out = cc('K');
    if (out === '-1 Hold') {
      return true;
    }
    return false;
  })()
);
```

# --seed--

## --seed-contents--

```js
let count = 0;

function cc(card) {
  // Only change code below this line


  return "Change Me";
  // Only change code above this line
}

cc(2); cc(3); cc(7); cc('K'); cc('A');
```

# --solutions--

```js
let count = 0;
function cc(card) {
  switch(card) {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      count++;
      break;
    case 10:
    case 'J':
    case 'Q':
    case 'K':
    case 'A':
      count--;
  }
  if(count > 0) {
    return count + " Bet";
  } else {
    return count + " Hold";
  }
}
```
