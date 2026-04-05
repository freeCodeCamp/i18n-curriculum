---
id: 616d47bc9eedc4bc7f621bec
title: 10단계
challengeType: 0
dashedName: step-10
---

# --description--

다음으로, `div` 요소 안에 또 다른 `div` 요소를 추가하고 `marker` 클래스를 부여하세요.

# --hints--

새로운 `div` 요소는 여는 태그가 있어야 합니다.

```js
assert([...code.matchAll(/<div.*?>/gi)][1]);
```

새로운 `div` 요소는 닫는 태그가 있어야 합니다.

```js
assert([...code.matchAll(/<\/div\s*>/gi)][1]);
```

새로운 `div` 요소는 `div` 클래스를 가진 `container` 안에 중첩되어야 합니다.

```js
assert(document.querySelector('.container')?.children[0]?.localName === 'div');
```

새로운 `div` 요소에 `marker` 클래스를 부여해야 합니다.

```js
const containerChildren = [...document.querySelector('.container')?.children];
assert(containerChildren.every(child => child.classList?.contains('marker')));
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Colored Markers</title>
    <link rel="stylesheet" href="styles.css">
  </head>
--fcc-editable-region--
  <body>
    <h1>CSS Color Markers</h1>
    <div class="container">
    </div>
  </body>
--fcc-editable-region--
</html>
```

```css
h1 {
  text-align: center;
}
```
