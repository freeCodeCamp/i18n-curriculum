---
id: 66f3f6eb66ea9dc41cdc30df
title: Designen Sie eine Reihe farbiger Kästen
challengeType: 25
dashedName: set-of-colored-boxes
demoType: onClick
---

# --description--

In diesem Labor üben Sie den Umgang mit CSS-Farben, indem Sie Kästen gestalten.

**Ziel:** Erfüllen Sie die unten stehenden User Stories und bestehen Sie alle Tests, um das Labor abzuschließen.

**User Stories:**

1. Sie sollten die Hintergrundfarbe für `body` auf `#f4f4f4` setzen.
2. Sie sollten ein `div` mit einer Klasse `color-grid` haben, das alle Ihre Farbelemente enthält.
3. Sie sollten fünf `div`-Elemente innerhalb des `.color-grid`-Elements haben.
4. Die fünf `div`-Elemente sollten jeweils die Klassen `color-box` und `color#` haben, wobei `#` die Reihenfolge dieses `div` angibt. Zum Beispiel: `color1` für das erste `div`, `color2` für das zweite und so weiter.
5. Die `.color-box`-Klasse sollte `width` und `height` festgelegt haben, damit Ihre `div`-Elemente auf der Seite sichtbar sind.
6. Das `.color1`-Element sollte eine `background-color` haben, die einen hexadezimalen Farbwert verwendet.
7. Das `.color2`-Element sollte eine `background-color` haben, die einen RGB-Farbwert verwendet.
8. Das `.color3`-Element sollte eine `background-color` haben, die einen vordefinierten (Wort-)Farbwert verwendet.
9. Das `.color4`-Element sollte eine `background-color` haben, die einen HSL-Farbwert verwendet.
10. Das `.color5`-Element sollte eine `background-color` gesetzt haben.

**Hinweis:** Vergewissern Sie sich, dass Sie Ihr Stylesheet in Ihrem HTML verlinken und Ihr CSS anwenden.

# --hints--

`body` sollte eine Hintergrundfarbe von `#f4f4f4` haben.

```js
const body = document.body;
const bodyBgColor = getComputedStyle(body).backgroundColor;
assert.strictEqual(bodyBgColor, 'rgb(244, 244, 244)');
```

Sie sollten ein `div`-Element mit der Klasse `color-grid` haben.

```js
const colorGrid = document.querySelector('div.color-grid');
assert.exists(colorGrid);
```

Sie sollten fünf `div`-Elemente innerhalb des `.color-grid`-Elements haben.

```js
const colorGridChildren = document.querySelectorAll('div.color-grid > div');
assert.strictEqual(colorGridChildren.length, 5);
```

Jedes der fünf `div`-Elemente sollte jeweils die Klassen `color-box` und `color#` haben — ersetzen Sie das Symbol `div` durch die Reihenfolge des `#`.

```js
const colorGridChildren = document.querySelectorAll('div.color-grid > div');
assert.strictEqual(colorGridChildren.length, 5);

colorGridChildren.forEach((child, index) => {
  const colorClass = `color${index + 1}`;
  assert.isTrue(child.classList.contains('color-box'));
  assert.isTrue(child.classList.contains(colorClass));
});
```

Die `.color-box`-Klasse sollte die Eigenschaften `width` und `height` gesetzt haben.

```js
const cssHelp = new __helpers.CSSHelp(document);
assert.isNotEmpty(cssHelp.getStyle('.color-box')?.getPropVal('width', true));
assert.isNotEmpty(cssHelp.getStyle('.color-box')?.getPropVal('height', true));
```

Die `.color-box`-Elemente sollten immer eine von Null verschiedene `width` und `height` haben. Versuchen Sie, die Vorschau auf eine kleinere Größe zu ändern, und stellen Sie sicher, dass die Kästen nicht verschwinden.

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

Das `.color1`-Element sollte eine hexadezimale Hintergrundfarbe haben.

```js
const hexChars = "[0-9a-fA-F]"
const hexRegex = new RegExp(`\\.color1\\s*{[^}]*\\bbackground-color\\s*:\\s*#((${hexChars}{3,4})||(${hexChars}{6})||(${hexChars}{8}))\\s*;?[^}]*}`);
assert.match(__helpers.removeCssComments(code), hexRegex);
```

Das `.color2`-Element sollte eine RGB-Hintergrundfarbe haben.

```js
assert.match(__helpers.removeCssComments(code), /\.color2\s*{[^}]*\bbackground-color\s*:\s*rgb\s*\(\s*\d+(?:\.\d+)?\s*(,|\s+)\s*\d+(?:\.\d+)?\s*\1\s*\d+(?:\.\d+)?\s*(\/\s*\d{1,2}(?:\.\d+)?%\s*)?\)\s*;?[^}]*}/);
```

Das `.color3`-Element sollte eine vordefinierte (Wort-)Hintergrundfarbe haben.

```js
const colorSet = new Set(["black", "silver", "gray", "white", "maroon", "red", "purple", "fuchsia", "green", "lime", "olive", "yellow", "navy", "blue", "teal", "aqua", "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "burlywood", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "aqua", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgreen", "darkgrey", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "green", "greenyellow", "grey", "gray", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgreen", "lightgrey", "lightpink", "lightsalmon", "lightseagreen", "lightskyblue", "lightslategray", "lightslategrey", "lightsteelblue", "lightyellow", "lime", "limegreen", "linen", "magenta", "fuchsia", "maroon", "mediumaquamarine", "mediumblue", "mediumorchid", "mediumpurple", "mediumseagreen", "mediumslateblue", "mediumspringgreen", "mediumturquoise", "mediumvioletred", "midnightblue", "mintcream", "mistyrose", "moccasin", "navajowhite", "navy", "oldlace", "olive", "olivedrab", "orange", "orangered", "orchid", "palegoldenrod", "palegreen", "paleturquoise", "palevioletred", "papayawhip", "peachpuff", "peru", "pink", "plum", "powderblue", "purple", "rebeccapurple", "red", "rosybrown", "royalblue", "saddlebrown", "salmon", "sandybrown", "seagreen", "seashell", "sienna", "silver", "skyblue", "slateblue", "slategray", "slategrey", "snow", "springgreen", "steelblue", "tan", "teal", "thistle", "tomato", "transparent", "turquoise", "violet", "wheat", "white", "whitesmoke", "yellow", "yellowgreen"]);
const matchedColor = __helpers.removeCssComments(code).match(/\.color3\s*{[^}]*\bbackground-color\s*:\s*(?<color>[a-zA-Z]+)\s*;?[^}]*}/);
assert.isTrue(colorSet.has(matchedColor.groups.color.toLowerCase()));
```

Das `.color4`-Element sollte eine HSL-Hintergrundfarbe haben.

```js
const absHSLVals = '\\s*(none|\\d+(?:\\.\\d+)?(?:deg)?)\\s*\\d+(?:\\.\\d+)?%?\\s*\\d+(?:\\.\\d+)?%?\\s*(\\/\\s*\\d{1,2}(?:\\.\\d+)?%\\s*)?';
const legacyHSLVals = '\\s*\\d+(?:\\.\\d+)?(?:deg)?\\s*,\\s*\\d+(?:\\.\\d+)?%\\s*,\\s*\\d+(?:\\.\\d+)?%\\s*(?:,\\s*\\d+(?:\\.\\d+)?\\s*)?';
const hslRegex = new RegExp(`\\.color4\\s*{[^}]*\\bbackground-color\\s*:\\s*hsl\\s*\\((${absHSLVals}|${legacyHSLVals})\\)\\s*;?[^}]*}`);
assert.match(__helpers.removeCssComments(code), hslRegex);
```

Das `.color5`-Element sollte eine Hintergrundfarbe gesetzt haben.

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
