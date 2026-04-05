---
id: 6996cdf1f60cbc30eeeae1c9
title: 12단계
challengeType: 1
dashedName: step-12
---

# --description--

`else if`의 조건이 참이면 `low` 변수에 `1`를 더하여 `mid` 변수의 값을 업데이트하세요.

이렇게 하면 현재 검색 영역 목록에서 오른쪽 절반으로 검색 범위가 확장됩니다. `value`가 `valueAtMiddle`보다 크다는 것은 `value`가 현재 검색 영역의 오른쪽 절반에 있어야 함을 의미하기 때문입니다.

# --hints--

`low` 변수를 `mid + 1`로 업데이트해야 합니다.

```js
assert.match(__helpers.removeJSComments(String(binarySearch)), /low\s*=\s*mid\s*\+\s*1/);
```

# --seed--

## --seed-contents--

```js
function binarySearch(searchList, value) {
  let pathToTarget = [];
  let low = 0;
  let high = searchList.length - 1;
  while (low <= high) {
    let mid = Math.floor((low + high) / 2);
    let valueAtMiddle = searchList[mid];
    pathToTarget.push(valueAtMiddle);

    if (value === valueAtMiddle) {
      return pathToTarget;
    } else if (value > valueAtMiddle) {
--fcc-editable-region--
        
--fcc-editable-region--     
    }
    
    break;
  }
  return [];
}

console.log(binarySearch([1, 2, 3, 4, 5], 3));
console.log(binarySearch([1, 2, 3, 4, 5, 9], 4));
```
