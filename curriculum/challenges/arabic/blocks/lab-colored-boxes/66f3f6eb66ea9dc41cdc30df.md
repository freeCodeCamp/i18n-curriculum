---
id: 66f3f6eb66ea9dc41cdc30df
title: تصميم مجموعة من الصناديق الملونة
challengeType: 25
dashedName: set-of-colored-boxes
demoType: onClick
---

# --description--

في هذا المختبر، ستتدرب على استخدام ألوان CSS من خلال تصميم صناديق.

**الهدف:** نفذ قصص المستخدم أدناه واجعل جميع الاختبارات تنجح لإكمال المختبر.

**قصص المستخدم:**

1. عيّن لون خلفية `body` إلى `#f4f4f4`.
2. يجب أن يحتوي الكود على عنصر `div` بصنف `color-grid` ليجمع كل عناصر الألوان.
3. يجب أن يكون هناك خمسة عناصر `div` داخل عنصر `.color-grid`.
4. يجب أن يحمل كل واحد من عناصر `div` الخمسة صنفين: `color-box` و `color#`، حيث يشير `#` إلى ترتيب هذا الـ `div`. على سبيل المثال: `color1` لأول `div`، و `color2` للثاني، وهكذا.
5. يجب أن يحتوي صنف `.color-box` على خاصيتي `width` و `height` ليظهر عناصر `div` على الصفحة.
6. يجب أن يحتوي عنصر `.color1` على خاصية `background-color` باستخدام قيمة لون سداسية عشرية.
7. يجب أن يحتوي عنصر `.color2` على خاصية `background-color` باستخدام قيمة لون RGB.
8. يجب أن يحتوي عنصر `.color3` على خاصية `background-color` باستخدام قيمة لون معرفة مسبقًا (كلمة).
9. يجب أن يحتوي عنصر `.color4` على خاصية `background-color` باستخدام قيمة لون HSL.
10. يجب تعيين خاصية `background-color` لعنصر `.color5`.

**ملاحظة:** تأكد من ربط ورقة الأنماط في ملف HTML وتطبيق CSS الخاص بك.

# --hints--

يجب أن يحتوي `body` على لون خلفية `#f4f4f4`.

```js
const body = document.body;
const bodyBgColor = getComputedStyle(body).backgroundColor;
assert.strictEqual(bodyBgColor, 'rgb(244, 244, 244)');
```

يجب أن يكون لديك عنصر `div` بصنف `color-grid`.

```js
const colorGrid = document.querySelector('div.color-grid');
assert.exists(colorGrid);
```

يجب أن يكون لديك خمسة عناصر `div` داخل عنصر `.color-grid`.

```js
const colorGridChildren = document.querySelectorAll('div.color-grid > div');
assert.strictEqual(colorGridChildren.length, 5);
```

يجب أن يحمل كل من عناصر الـ `div` الخمسة صنف `color-box` و `color#`—استبدل رقم ترتيب الـ `div` برمز `#`.

```js
const colorGridChildren = document.querySelectorAll('div.color-grid > div');
assert.strictEqual(colorGridChildren.length, 5);

colorGridChildren.forEach((child, index) => {
  const colorClass = `color${index + 1}`;
  assert.isTrue(child.classList.contains('color-box'));
  assert.isTrue(child.classList.contains(colorClass));
});
```

يجب أن يحتوي الصنف `.color-box` على خصائص `width` و `height` محددة.

```js
const cssHelp = new __helpers.CSSHelp(document);
assert.isNotEmpty(cssHelp.getStyle('.color-box')?.getPropVal('width', true));
assert.isNotEmpty(cssHelp.getStyle('.color-box')?.getPropVal('height', true));
```

يجب أن تحتوي عناصر `.color-box` دائمًا على `width` و `height` غير صفرية. جرب تغيير حجم المعاينة إلى حجم أصغر، وتأكد من أن الصناديق لا تختفي.

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

يجب أن يحتوي عنصر `.color1` على لون خلفية سداسي عشري.

```js
const hexChars = "[0-9a-fA-F]"
const hexRegex = new RegExp(`\\.color1\\s*{[^}]*\\bbackground-color\\s*:\\s*#((${hexChars}{3,4})||(${hexChars}{6})||(${hexChars}{8}))\\s*;?[^}]*}`);
assert.match(__helpers.removeCssComments(code), hexRegex);
```

يجب أن يحتوي عنصر `.color2` على لون خلفية RGB.

```js
assert.match(__helpers.removeCssComments(code), /\.color2\s*{[^}]*\bbackground-color\s*:\s*rgb\s*\(\s*\d+(?:\.\d+)?\s*(,|\s+)\s*\d+(?:\.\d+)?\s*\1\s*\d+(?:\.\d+)?\s*(\/\s*\d{1,2}(?:\.\d+)?%\s*)?\)\s*;?[^}]*}/);
```

يجب أن يحتوي عنصر `.color3` على لون خلفية معرف مسبقًا (كلمة).

```js
const colorSet = new Set(["black", "silver", "gray", "white", "maroon", "red", "purple", "fuchsia", "green", "lime", "olive", "yellow", "navy", "blue", "teal", "aqua", "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "burlywood", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "aqua", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgreen", "darkgrey", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "green", "greenyellow", "grey", "gray", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgreen", "lightgrey", "lightpink", "lightsalmon", "lightseagreen", "lightskyblue", "lightslategray", "lightslategrey", "lightsteelblue", "lightyellow", "lime", "limegreen", "linen", "magenta", "fuchsia", "maroon", "mediumaquamarine", "mediumblue", "mediumorchid", "mediumpurple", "mediumseagreen", "mediumslateblue", "mediumspringgreen", "mediumturquoise", "mediumvioletred", "midnightblue", "mintcream", "mistyrose", "moccasin", "navajowhite", "navy", "oldlace", "olive", "olivedrab", "orange", "orangered", "orchid", "palegoldenrod", "palegreen", "paleturquoise", "palevioletred", "papayawhip", "peachpuff", "peru", "pink", "plum", "powderblue", "purple", "rebeccapurple", "red", "rosybrown", "royalblue", "saddlebrown", "salmon", "sandybrown", "seagreen", "seashell", "sienna", "silver", "skyblue", "slateblue", "slategray", "slategrey", "snow", "springgreen", "steelblue", "tan", "teal", "thistle", "tomato", "transparent", "turquoise", "violet", "wheat", "white", "whitesmoke", "yellow", "yellowgreen"]);
const matchedColor = __helpers.removeCssComments(code).match(/\.color3\s*{[^}]*\bbackground-color\s*:\s*(?<color>[a-zA-Z]+)\s*;?[^}]*}/);
assert.isTrue(colorSet.has(matchedColor.groups.color.toLowerCase()));
```

يجب أن يحتوي عنصر `.color4` على لون خلفية HSL.

```js
const absHSLVals = '\\s*(none|\\d+(?:\\.\\d+)?(?:deg)?)\\s*\\d+(?:\\.\\d+)?%?\\s*\\d+(?:\\.\\d+)?%?\\s*(\\/\\s*\\d{1,2}(?:\\.\\d+)?%\\s*)?';
const legacyHSLVals = '\\s*\\d+(?:\\.\\d+)?(?:deg)?\\s*,\\s*\\d+(?:\\.\\d+)?%\\s*,\\s*\\d+(?:\\.\\d+)?%\\s*(?:,\\s*\\d+(?:\\.\\d+)?\\s*)?';
const hslRegex = new RegExp(`\\.color4\\s*{[^}]*\\bbackground-color\\s*:\\s*hsl\\s*\\((${absHSLVals}|${legacyHSLVals})\\)\\s*;?[^}]*}`);
assert.match(__helpers.removeCssComments(code), hslRegex);
```

يجب أن يحتوي عنصر `.color5` على لون خلفية محدد.

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
