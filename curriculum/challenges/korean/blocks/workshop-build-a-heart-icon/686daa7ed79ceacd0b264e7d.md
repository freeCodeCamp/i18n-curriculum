---
id: 686daa7ed79ceacd0b264e7d
title: 2단계
challengeType: 0
dashedName: step-2
---

# --description--

이미지 모양을 만들기 위해 `path` 요소 안에 `svg` 요소를 중첩하세요.

`path` 요소를 만드세요.

# --hints--

`path` 요소 안에 `svg` 요소가 중첩되어 있어야 합니다.

```js
const path = document.querySelector('svg path');
assert.exists(path);
```

# --seed--

## --seed-contents--

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Heart Icon</title>
  </head>
  <body>
    <svg>
    --fcc-editable-region--
      
    --fcc-editable-region--
    </svg>
  </body>
</html>
```
