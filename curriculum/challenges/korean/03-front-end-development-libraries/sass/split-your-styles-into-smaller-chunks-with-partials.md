---
id: 587d7dbf367417b2b2512bbc
title: Partials 이용해서 스타일을 작은 크기로 나누기
challengeType: 0
forumTopicId: 301459
dashedName: split-your-styles-into-smaller-chunks-with-partials
---

# --description--

<dfn>Partials</dfn> in Sass are separate files that hold segments of CSS code. These are imported and used in other Sass files. This is a great way to group similar code into a module to keep it organized.

Partials의 이름은 밑줄(`_`) 문자로 시작하며, CSS의 작은 부분으로 CSS 파일로 변환하지 말라고 Sass에게 알려줍니다. 또한 Sass 파일은 `.scss` 확장자로 끝납니다. 다른 Sass 파일에 Partial을 가져오려면 `@import`문을 사요하면 됩니다.

예를 들어 모든 믹스인(mixins)이 "\_mixins.scss"에 저장되어 있고, "main.scss" 파일에서 필요하면, 다음과 같이 사용합니다.

```scss
@import 'mixins'
```

`import` 문에는 밑줄과 파일 확장자가 필요하지 않습니다. Sass가 Partial로 인식합니다. Partial를 파일로 가져오면, 모든 변수, 믹스인 그리고 다른 코드 모두 사용할 수 있습니다.

# --instructions--

`@import` 문을 작성해서 `_variables.scss`를 main.scss 파일로 가져와보세요.

# --hints--

`@import` 문을 사용하고, 파일 이름에 밑줄을 포함해서는 안 됩니다.

```js
assert(code.match(/@import\s+?('|")variables\1/gi));
```

# --seed--

## --seed-contents--

```html
<!-- The main.scss file -->
```

# --solutions--

```html
@import 'variables'
```
