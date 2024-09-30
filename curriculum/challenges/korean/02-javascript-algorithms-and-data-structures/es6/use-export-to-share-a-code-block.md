---
id: 587d7b8c367417b2b2512b56
title: 코드 블록을 공유하기 위해 export를 사용하기
challengeType: 1
forumTopicId: 301219
dashedName: use-export-to-share-a-code-block
---

# --description--

`math_functions.js`라는 파일이 여러 수학 연산에 관련된 함수를 포함하고 있다고 상상해 보세요. 그 중 하나는 `add`라는 변수에 저장되어 있으며, 두 숫자를 입력받아 그 합을 반환합니다. 이 함수를 여러 다른 자바스크립트 파일에서 사용하고 싶습니다. 이 다른 파일들과 공유하려면 먼저 그것을 `export` 해야 합니다.

```js
export const add = (x, y) => {
  return x + y;
}
```

위의 방법은 단일 함수를 export하는 일반적인 방법이지만, 다음과 같이 동일한 작업을 수행할 수 있습니다.

```js
const add = (x, y) => {
  return x + y;
}

export { add };
```

변수나 함수를 내보내면(export) 다른 파일에서 import하여 코드 재작성 없이 사용할 수 있습니다. 내보낼 항목마다 첫 번째 예제를 반복하거나 두 번째 예제의 export 문에 모두 배치하여 여러 항목을 내보낼 수 있습니다. 예를 들면 다음과 같습니다.

```js
export { add, subtract };
```

# --instructions--

편집기에는 두 개의 문자열 관련 함수가 있습니다. 둘 다 당신이 선택한 방법으로 내보내세요.

# --hints--

`uppercaseString`을 적절하게 export 해야 합니다.

```js
assert(
  __helpers.removeJSComments(code).match(
    /(export\s+const\s+uppercaseString|export\s*{\s*(uppercaseString[^}]*|[^,]*,\s*uppercaseString\s*)})/g
  )
);
```

`lowercaseString`을 적절하게 export 해야 합니다.

```js
assert(
  __helpers.removeJSComments(code).match(
    /(export\s+const\s+lowercaseString|export\s*{\s*(lowercaseString[^}]*|[^,]*,\s*lowercaseString\s*)})/g
  )
);
```

# --seed--

## --seed-contents--

```js
const uppercaseString = (string) => {
  return string.toUpperCase();
}

const lowercaseString = (string) => {
  return string.toLowerCase()
}
```

# --solutions--

```js
export const uppercaseString = (string) => {
  return string.toUpperCase();
}

export const lowercaseString = (string) => {
  return string.toLowerCase()
}
```
