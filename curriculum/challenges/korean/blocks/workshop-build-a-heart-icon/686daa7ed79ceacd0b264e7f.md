---
id: 686daa7ed79ceacd0b264e7f
title: 4단계
challengeType: 0
dashedName: step-4
---

# --description--

다음 단계는 `width` 요소에 `height`와 `svg` 속성을 설정하는 것입니다. 아이콘을 만들고 있으므로 두 값 모두 작게 설정해야 합니다.

두 값을 `24`로 설정하세요.

# --hints--

`svg` 요소는 `width`인 `24` 속성을 가져야 합니다.

```js
const svg = document.querySelector('svg');
assert.strictEqual(svg.getAttribute('width'), '24');
```

`svg` 요소는 `height`인 `24` 속성을 가져야 합니다.

```js
const svg = document.querySelector('svg');
assert.strictEqual(svg.getAttribute('height'), '24');
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
    --fcc-editable-region--
    <svg>
    --fcc-editable-region--
      <path
        d="M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z"
      ></path>
    </svg>
  </body>
</html>
```
