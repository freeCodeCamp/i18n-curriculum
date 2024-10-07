---
id: 587d7b8c367417b2b2512b55
title: import를 통해 자바스크립트 코드 재사용하기
challengeType: 1
forumTopicId: 301208
dashedName: reuse-javascript-code-using-import
---

# --description--

`import` allows you to choose which parts of a file or module to load. In the previous lesson, the examples exported `add` from the `math_functions.js` file. Here's how you can import it to use in another file:

```js
import { add } from './math_functions.js';
```

`import`는 `math_functions.js`에서 `add`를 찾아 해당 함수만 가져오고, 나머지 코드는 무시합니다. `./`은 import가 현재 파일과 같은 폴더에서 `math_functions.js` 파일을 찾도록 합니다. 이런 방식으로 import를 사용할 때는 상대 경로 (`./`)와 파일 확장자 (`.js`)가 필요합니다.

`import`문을 이렇게 작성하면 파일에서 여러 개의 요소들을 가져올 수 있습니다.

```js
import { add, subtract } from './math_functions.js';
```

# --instructions--

이전 레슨에서 내보낸 `uppercaseString`과 `lowercaseString` 함수를 현재 파일에서 사용할 수 있도록 적절한 `import` 문을 추가해주세요. 이 함수들은 현재 파일과 같은 폴더에 있는 `string_functitons.js`라는 파일에 들어있습니다.

# --hints--

`uppercaseString`을 적절하게 import 해야 합니다.

```js
assert(
  __helpers.removeJSComments(code).match(
    /import\s*{\s*(uppercaseString[^}]*|[^,]*,\s*uppercaseString\s*)}\s+from\s+('|")\.\/string_functions\.js\2/g
  )
);
```

`lowercaseString`을 적절하게 import 해야 합니다.

```js
assert(
  __helpers.removeJSComments(code).match(
    /import\s*{\s*(lowercaseString[^}]*|[^,]*,\s*lowercaseString\s*)}\s+from\s+('|")\.\/string_functions\.js\2/g
  )
);
```

# --seed--

## --seed-contents--

```js

// Only change code above this line

uppercaseString("hello");
lowercaseString("WORLD!");
```

# --solutions--

```js
import { uppercaseString, lowercaseString } from './string_functions.js';

uppercaseString("hello");
lowercaseString("WORLD!");
```
