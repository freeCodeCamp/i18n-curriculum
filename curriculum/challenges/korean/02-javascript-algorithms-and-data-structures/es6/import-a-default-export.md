---
id: 587d7b8d367417b2b2512b59
title: 기본 내보내기 한 요소를 가져오기
challengeType: 1
forumTopicId: 301205
dashedName: import-a-default-export
---

# --description--

In the last challenge, you learned about `export default` and its uses. To import a default export, you need to use a different `import` syntax. In the following example, `add` is the default export of the `math_functions.js` file. Here is how to import it:

```js
import add from "./math_functions.js";
```

이 import 문법에는 하나의 중요한 차이점이 있습니다. import되는 값인 `add`를 중괄호(`{}`) 로 감싸지 않았습니다. 여기서의 `add`는 단지 `math_functions.js` 파일에서 기본 내보내기한 요소에 대해 부여한 변수 이름일 뿐입니다. 기본 내보내기한 요소를 가져올 때는 어떤 변수명이든 사용할 수 있습니다.

# --instructions--

이 파일과 같은 폴더에 위치한 `math_functions.js` 파일에서 기본 내보내기 값을 import 해보세요. Import한 요소에 `subtract`라는 이름을 붙여주세요.

# --hints--

`math_functions.js`에서 `subtract`을 가져와야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/import\s+subtract\s+from\s+('|")\.\/math_functions\.js\1/g));
```

# --seed--

## --seed-contents--

```js

// Only change code above this line

subtract(7,4);
```

# --solutions--

```js
import subtract from "./math_functions.js";

subtract(7,4);
```
