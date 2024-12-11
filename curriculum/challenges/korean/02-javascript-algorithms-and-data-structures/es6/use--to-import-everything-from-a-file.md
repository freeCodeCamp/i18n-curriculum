---
id: 587d7b8c367417b2b2512b57
title: '* 을 사용하여 파일에서 모든 것을 가져오기'
challengeType: 1
forumTopicId: 301210
dashedName: use--to-import-everything-from-a-file
---

# --description--

파일이 있고 그 안의 모든 내용을 현재 파일로 가져오고 싶다고 가정해봅시다. 이는 `import * as` 구문으로 할 수 있습니다. 다음은 같은 디렉토리에 있는 파일에 `math_functions.js`라는 파일의 내용을 가져오는 예입니다:

```js
import * as myMathModule from "./math_functions.js";
```

위의 `import` 문은 `myMathModule`이라는 객체를 생성할 것입니다. 이것은 단지 변수 이름일 뿐이며, 원하는 대로 이름을 지을 수 있습니다. 이 객체는 `math_functions.js`의 모든 내보내기를 포함하게 되어, 다른 객체 속성과 마찬가지로 함수에 접근할 수 있습니다. 가져온 `add` 및 `subtract` 함수를 사용하는 방법은 다음과 같습니다.

```js
myMathModule.add(2,3);
myMathModule.subtract(5,3);
```

# --instructions--

이 파일의 코드는 현재 파일과 같은 디렉토리에 있는 파일인 `string_functions.js`의 내용을 필요로 합니다. `import * as` 구문을 사용하여 파일에서 모든 것을 `stringFunctions`라는 객체로 가져옵니다.

# --hints--

코드는 `import * as` 구문을 제대로 사용해야 합니다.

```js
assert(
  __helpers.removeJSComments(code).match(
    /import\s*\*\s*as\s+stringFunctions\s+from\s*('|")\.\/string_functions\.js\1/g
  )
);
```

# --seed--

## --seed-contents--

```js

// Only change code above this line

stringFunctions.uppercaseString("hello");
stringFunctions.lowercaseString("WORLD!");
```

# --solutions--

```js
import * as stringFunctions from "./string_functions.js";

// add code above this line
stringFunctions.uppercaseString("hello");
stringFunctions.lowercaseString("WORLD!");
```
