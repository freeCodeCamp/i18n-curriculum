---
id: 618a0b2befb143baefab632b
title: 37단계
challengeType: 0
dashedName: step-37
---

# --description--

빨간색과 청록색이 서로 바로 옆에 있을 때 매우 밝게 보이는 것을 확인하세요. 이런 대비는 웹사이트에서 과도하게 사용하면 산만해 보일 수 있고, 보색 배경 위에 텍스트를 배치하면 읽기 어려울 수 있습니다.

하나의 색상을 주된 색상으로 선택하고, 보색을 강조 색상으로 사용해 페이지 내 특정 콘텐츠에 주의를 끄는 것이 더 좋은 방법입니다.

먼저 `h1` 규칙에서 `rgb` 함수를 사용해 `background-color`를 청록색으로 설정하세요.

# --hints--

`text-align` 속성이나 그 값을 제거하거나 수정하지 마세요.

```js
assert(new __helpers.CSSHelp(document).getStyle('h1')?.textAlign === 'center');
```

`h1` CSS 규칙에 `background-color` 속성을 `rgb(0, 255, 255)`로 설정해야 합니다.

```js
assert(new __helpers.CSSHelp(document).getStyle('h1')?.backgroundColor === 'rgb(0, 255, 255)');
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
  <body>
    <h1>CSS Color Markers</h1>
    <div class="container">
      <div class="marker one">
      </div>
      <div class="marker two">
      </div>
      <div class="marker three">
      </div>
    </div>
  </body>
</html>
```

```css
--fcc-editable-region--
h1 {
  text-align: center;
}
--fcc-editable-region--

.container {
  background-color: rgb(255, 255, 255);
  padding: 10px 0;
}

.marker {
  width: 200px;
  height: 25px;
  margin: 10px auto;
}

.one {
  background-color: rgb(255, 0, 0);
}

.two {
  background-color: rgb(0, 255, 255);
}

.three {
  background-color: rgb(0, 0, 0);
}

```
