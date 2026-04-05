---
id: 66f3f6eb66ea9dc41cdc30df
title: 색상 상자 세트 디자인하기
challengeType: 25
dashedName: set-of-colored-boxes
demoType: onClick
---

# --description--

이 실습에서는 CSS 색상을 사용하여 상자를 디자인하는 연습을 합니다.

**목표:** 아래 사용자 스토리를 모두 충족하고 모든 테스트를 통과하여 실습을 완료하세요.

**사용자 스토리:**

1. `body`의 배경색을 `#f4f4f4`로 설정해야 합니다.
2. 모든 색상 요소를 담을 `div`가 `color-grid` 클래스를 가져야 합니다.
3. `div` 요소 안에 다섯 개의 `.color-grid` 요소가 있어야 합니다.
4. 다섯 개의 `div` 요소 각각은 `color-box`와 `color#` 클래스를 가져야 하며, 여기서 `#`는 해당 `div`의 순서 번호입니다. 예를 들어: 첫 번째 `color1`는 `div`, 두 번째는 `color2` 등입니다.
5. `.color-box` 클래스는 `width`와 `height`이 설정되어 있어 `div` 요소가 페이지에 보이도록 해야 합니다.
6. `.color1` 요소는 16진수 색상 값을 사용하는 `background-color`를 가져야 합니다.
7. `.color2` 요소는 RGB 색상 값을 사용하는 `background-color`를 가져야 합니다.
8. `.color3` 요소는 미리 정의된(단어) 색상 값을 사용하는 `background-color`를 가져야 합니다.
9. `.color4` 요소는 HSL 색상 값을 사용하는 `background-color`를 가져야 합니다.
10. `.color5` 요소는 `background-color`이 설정되어 있어야 합니다.

**참고:** HTML에 스타일시트를 연결하고 CSS를 적용했는지 꼭 확인하세요.

# --hints--

`body`는 `#f4f4f4` 배경색을 가져야 합니다.

```js
const body = document.body;
const bodyBgColor = getComputedStyle(body).backgroundColor;
assert.strictEqual(bodyBgColor, 'rgb(244, 244, 244)');
```

`div` 요소가 `color-grid` 클래스를 가져야 합니다.

```js
const colorGrid = document.querySelector('div.color-grid');
assert.exists(colorGrid);
```

`div` 요소 안에 다섯 개의 `.color-grid` 요소가 있어야 합니다.

```js
const colorGridChildren = document.querySelectorAll('div.color-grid > div');
assert.strictEqual(colorGridChildren.length, 5);
```

다섯 개의 `div` 요소 각각은 `color-box`와 `color#` 클래스를 가져야 하며, `div` 순서에 따라 `#` 기호를 대체하세요.

```js
const colorGridChildren = document.querySelectorAll('div.color-grid > div');
assert.strictEqual(colorGridChildren.length, 5);

colorGridChildren.forEach((child, index) => {
  const colorClass = `color${index + 1}`;
  assert.isTrue(child.classList.contains('color-box'));
  assert.isTrue(child.classList.contains(colorClass));
});
```

`.color-box` 클래스는 `width`와 `height` 속성이 설정되어야 합니다.

```js
const cssHelp = new __helpers.CSSHelp(document);
assert.isNotEmpty(cssHelp.getStyle('.color-box')?.getPropVal('width', true));
assert.isNotEmpty(cssHelp.getStyle('.color-box')?.getPropVal('height', true));
```

`.color-box` 요소는 항상 0이 아닌 `width`와 `height`를 가져야 합니다. 미리보기 크기를 작게 조절해도 상자가 사라지지 않는지 확인하세요.

```js
const colorBoxes = document.querySelectorAll('.color-box');
assert.isNotEmpty(colorBoxes);

colorBoxes.forEach(box => {
  const width = getComputedStyle(box).width;
  const height = getComputedStyle(box).height;
  assert.notStrictEqual(width, '0px');
  assert.notStrictEqual(height, '0px');
});
```

`.color1` 요소는 16진수 배경색을 가져야 합니다.

```js
const hexChars = "[0-9a-fA-F]"
const hexRegex = new RegExp(`\\.color1\\s*{[^}]*\\bbackground-color\\s*:\\s*#((${hexChars}{3,4})||(${hexChars}{6})||(${hexChars}{8}))\\s*;?[^}]*}`);
assert.match(__helpers.removeCssComments(code), hexRegex);
```

`.color2` 요소는 RGB 배경색을 가져야 합니다.

```js
assert.match(__helpers.removeCssComments(code), /\.color2\s*{[^}]*\bbackground-color\s*:\s*rgb\s*\(\s*\d+(?:\.\d+)?\s*(,|\s+)\s*\d+(?:\.\d+)?\s*\1\s*\d+(?:\.\d+)?\s*(\/\s*\d{1,2}(?:\.\d+)?%\s*)?\)\s*;?[^}]*}/);
```

`.color3` 요소는 미리 정의된(단어) 배경색을 가져야 합니다.

```js
const colorSet = new Set(["black", "silver", "gray", "white", "maroon", "red", "purple", "fuchsia", "green", "lime", "olive", "yellow", "navy", "blue", "teal", "aqua", "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "burlywood", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "aqua", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgreen", "darkgrey", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "green", "greenyellow", "grey", "gray", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgreen", "lightgrey", "lightpink", "lightsalmon", "lightseagreen", "lightskyblue", "lightslategray", "lightslategrey", "lightsteelblue", "lightyellow", "lime", "limegreen", "linen", "magenta", "fuchsia", "maroon", "mediumaquamarine", "mediumblue", "mediumorchid", "mediumpurple", "mediumseagreen", "mediumslateblue", "mediumspringgreen", "mediumturquoise", "mediumvioletred", "midnightblue", "mintcream", "mistyrose", "moccasin", "navajowhite", "navy", "oldlace", "olive", "olivedrab", "orange", "orangered", "orchid", "palegoldenrod", "palegreen", "paleturquoise", "palevioletred", "papayawhip", "peachpuff", "peru", "pink", "plum", "powderblue", "purple", "rebeccapurple", "red", "rosybrown", "royalblue", "saddlebrown", "salmon", "sandybrown", "seagreen", "seashell", "sienna", "silver", "skyblue", "slateblue", "slategray", "slategrey", "snow", "springgreen", "steelblue", "tan", "teal", "thistle", "tomato", "transparent", "turquoise", "violet", "wheat", "white", "whitesmoke", "yellow", "yellowgreen"]);
const matchedColor = __helpers.removeCssComments(code).match(/\.color3\s*{[^}]*\bbackground-color\s*:\s*(?<color>[a-zA-Z]+)\s*;?[^}]*}/);
assert.isTrue(colorSet.has(matchedColor.groups.color.toLowerCase()));
```

`.color4` 요소는 HSL 배경색을 가져야 합니다.

```js
const absHSLVals = '\\s*(none|\\d+(?:\\.\\d+)?(?:deg)?)\\s*\\d+(?:\\.\\d+)?%?\\s*\\d+(?:\\.\\d+)?%?\\s*(\\/\\s*\\d{1,2}(?:\\.\\d+)?%\\s*)?';
const legacyHSLVals = '\\s*\\d+(?:\\.\\d+)?(?:deg)?\\s*,\\s*\\d+(?:\\.\\d+)?%\\s*,\\s*\\d+(?:\\.\\d+)?%\\s*(?:,\\s*\\d+(?:\\.\\d+)?\\s*)?';
const hslRegex = new RegExp(`\\.color4\\s*{[^}]*\\bbackground-color\\s*:\\s*hsl\\s*\\((${absHSLVals}|${legacyHSLVals})\\)\\s*;?[^}]*}`);
assert.match(__helpers.removeCssComments(code), hslRegex);
```

`.color5` 요소는 배경색이 설정되어 있어야 합니다.

```js
assert.isNotEmpty(new __helpers.CSSHelp(document).getStyle('.color5')?.getPropVal('background-color', true));
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Colored Boxes</title>
</head>
<body>

</body>
</html>
```

```css

```

# --solutions--

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Colored Boxes</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Colored Boxes</h1>
    <div class="color-grid"> 
        <div class="color-box color1"></div>
        <div class="color-box color2"></div>
        <div class="color-box color3"></div>
        <div class="color-box color4"></div>
        <div class="color-box color5"></div>
    </div>
</body>
</html>
```

```css
body {
    font-family: Arial, sans-serif;
    display: flex;
    flex-direction: column;
    align-items: center;
    margin: 0;
    padding: 20px;
    background-color: #f4f4f4;
}

h1 {
    margin-bottom: 20px;
}

.color-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
    gap: 10px;
    width: 100%;
    max-width: 800px;
}

.color-box {
    display: flex;
    justify-content: center;
    align-items: center;
    font-weight: bold;
    border-radius: 8px;
    text-align: center;
    width: 100px;
    height: 100px;
}

.color1 {
    background-color: #33FF57;
}

.color2 {
    background-color: rgb(128,0,128);
}

.color3 {
    background-color: orange;
}

.color4 {
    background-color: hsl(59, 61%, 26%);
}

.color5 {
    background-color: red;
}
```
