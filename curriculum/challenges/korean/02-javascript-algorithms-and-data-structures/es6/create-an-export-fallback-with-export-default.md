---
id: 587d7b8c367417b2b2512b58
title: export default를 사용하여 내보내기 폴백 생성하기
challengeType: 1
forumTopicId: 301199
dashedName: create-an-export-fallback-with-export-default
---

# --description--

`export` 수업에서는 <dfn>named export</dfn>라고 불리는 문법에 대해 배웠습니다. 이 구문은 여러 함수를 만들고 변수를 다른 파일에서 사용할 수 있도록 했습니다.

알아야 할 또 다른 `export` 문법으로 <dfn>export default</dfn>가 있습니다. 보통 이 구문은 파일에서 하나의 값만 내보낼 때 사용합니다. 또한 파일이나 모듈의 폴백 값을 생성하는 데 사용됩니다.

아래는 `export default`를 사용하는 예제입니다:

```js
export default function add(x, y) {
  return x + y;
}

export default function(x, y) {
  return x + y;
}
```

첫 번째는 이름이 있는 함수이고, 두 번째는 익명 함수입니다.

`export default`는 모듈이나 파일의 폴백 값(fallback value)을 선언하는 데 사용되기 때문에 각 모듈이나 파일에는 하나의 값만 기본 내보내기(default export)로 설정할 수 있습니다. 또한 `var`, `let` 또는 `const`와 함께 `export default`를 사용할 수 없습니다.

# --instructions--

다음 함수는 모듈의 폴백 값이 되어야 합니다. 이를 위해 필요한 코드를 추가해 주세요.

# --hints--

코드는 `export` 폴백을 사용해야 합니다.

```js
assert(
  __helpers.removeJSComments(code).match(
    /export\s+default\s+function(\s+subtract\s*|\s*)\(\s*x,\s*y\s*\)\s*{/g
  )
);
```

# --seed--

## --seed-contents--

```js
function subtract(x, y) {
  return x - y;
}
```

# --solutions--

```js
export default function subtract(x, y) {
  return x - y;
}
```
