---
id: 66f3f6eb66ea9dc41cdc30df
title: Diseñar un conjunto de cajas de colores
challengeType: 25
dashedName: set-of-colored-boxes
demoType: onClick
---

# --description--

En este laboratorio, practicarás el uso de colores CSS diseñando cajas.

**Objetivo:** Cumple con las historias de usuario a continuación y logra que todas las pruebas pasen para completar el laboratorio.

**Instrucciones:**

1. Deberías establecer el color de fondo del `body` en `#f4f4f4`.
2. Deberías tener un `div` con una clase de `color-grid` para contener todos tus elementos de color.
3. Deberías tener cinco elementos `div` dentro del elemento `.color-grid`.
4. Los cinco elementos `div` deberían tener cada uno una clase de `color-box` y `color#`, donde `#` es el número de orden de ese `div`. Por ejemplo: `color1` para el primer `div`, `color2` para el segundo, y así sucesivamente.
5. La clase `.color-box` debería tener un `width` y `height` establecidos para que tus elementos `div` sean visibles en la página.
6. El elemento `.color1` debería tener un `background-color` que use un valor de color hexadecimal.
7. El elemento `.color2` debería tener un `background-color` que use un valor de color RGB.
8. El elemento `.color3` debería tener un `background-color` que use un valor de color predefinido (palabra).
9. El elemento `.color4` debería tener un `background-color` que use un valor de color HSL.
10. El elemento `.color5` debería tener un `background-color` establecido.

**Nota:** Asegúrate de enlazar tu hoja de estilos en tu HTML y aplicar tus CSS.

# --hints--

`body` debería tener un color de fondo de `#f4f4f4`.

```js
const body = document.body;
const bodyBgColor = getComputedStyle(body).backgroundColor;
assert.strictEqual(bodyBgColor, 'rgb(244, 244, 244)');
```

Deberías tener un elemento `div` con una clase de `color-grid`.

```js
const colorGrid = document.querySelector('div.color-grid');
assert.exists(colorGrid);
```

Deberías tener cinco elementos `div` dentro del elemento `.color-grid`.

```js
const colorGridChildren = document.querySelectorAll('div.color-grid > div');
assert.strictEqual(colorGridChildren.length, 5);
```

Cada uno de los cinco elementos `div` debería tener una clase de `color-box` y `color#`—sustituir el orden del `div` por el símbolo `#`.

```js
const colorGridChildren = document.querySelectorAll('div.color-grid > div');
assert.strictEqual(colorGridChildren.length, 5);

colorGridChildren.forEach((child, index) => {
  const colorClass = `color${index + 1}`;
  assert.isTrue(child.classList.contains('color-box'));
  assert.isTrue(child.classList.contains(colorClass));
});
```

El elemento `.color-box` debería tener un `width` y `height` establecidos.

```js
const colorBox = document.querySelector('.color-box');
assert.exists(colorBox);

const colorBoxStyles = getComputedStyle(colorBox);
const width = colorBoxStyles.width;
const height = colorBoxStyles.height;

assert.notStrictEqual(width, '0px');
assert.notStrictEqual(height, '0px');
```

El elemento `.color1` debería tener un color de fondo hexadecimal.

```js
const hexChars = "[0-9a-fA-F]"
const hexRegex = new RegExp(`\\.color1\\s*{[^}]*\\bbackground-color\\s*:\\s*#((${hexChars}{3,4})||(${hexChars}{6})||(${hexChars}{8}))\\s*;?[^}]*}`);
assert.match(__helpers.removeCssComments(code), hexRegex);
```

El elemento `.color2` debería tener un color de fondo RGB.

```js
assert.match(__helpers.removeCssComments(code), /\.color2\s*{[^}]*\bbackground-color\s*:\s*rgb\s*\(\s*\d+(?:\.\d+)?\s*(,|\s+)\s*\d+(?:\.\d+)?\s*\1\s*\d+(?:\.\d+)?\s*(\/\s*\d{1,2}(?:\.\d+)?%\s*)?\)\s*;?[^}]*}/);
```

El elemento `.color3` debería tener un color de fondo predefinido (palabra).

```js
const colorSet = new Set(["black", "silver", "gray", "white", "maroon", "red", "purple", "fuchsia", "green", "lime", "olive", "yellow", "navy", "blue", "teal", "aqua", "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "burlywood", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "aqua", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgreen", "darkgrey", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "green", "greenyellow", "grey", "gray", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgreen", "lightgrey", "lightpink", "lightsalmon", "lightseagreen", "lightskyblue", "lightslategray", "lightslategrey", "lightsteelblue", "lightyellow", "lime", "limegreen", "linen", "magenta", "fuchsia", "maroon", "mediumaquamarine", "mediumblue", "mediumorchid", "mediumpurple", "mediumseagreen", "mediumslateblue", "mediumspringgreen", "mediumturquoise", "mediumvioletred", "midnightblue", "mintcream", "mistyrose", "moccasin", "navajowhite", "navy", "oldlace", "olive", "olivedrab", "orange", "orangered", "orchid", "palegoldenrod", "palegreen", "paleturquoise", "palevioletred", "papayawhip", "peachpuff", "peru", "pink", "plum", "powderblue", "purple", "rebeccapurple", "red", "rosybrown", "royalblue", "saddlebrown", "salmon", "sandybrown", "seagreen", "seashell", "sienna", "silver", "skyblue", "slateblue", "slategray", "slategrey", "snow", "springgreen", "steelblue", "tan", "teal", "thistle", "tomato", "transparent", "turquoise", "violet", "wheat", "white", "whitesmoke", "yellow", "yellowgreen"]);
const matchedColor = __helpers.removeCssComments(code).match(/\.color3\s*{[^}]*\bbackground-color\s*:\s*(?<color>[a-zA-Z]+)\s*;?[^}]*}/);
assert.isTrue(colorSet.has(matchedColor.groups.color.toLowerCase()));
```

El elemento `.color4` debería tener un color de fondo HSL.

```js
const absHSLVals = '\\s*(none|\\d+(?:\\.\\d+)?(?:deg)?)\\s*\\d+(?:\\.\\d+)?%?\\s*\\d+(?:\\.\\d+)?%?\\s*(\\/\\s*\\d{1,2}(?:\\.\\d+)?%\\s*)?';
const legacyHSLVals = '\\s*\\d+(?:\\.\\d+)?(?:deg)?\\s*,\\s*\\d+(?:\\.\\d+)?%\\s*,\\s*\\d+(?:\\.\\d+)?%\\s*(?:,\\s*\\d+(?:\\.\\d+)?\\s*)?';
const hslRegex = new RegExp(`\\.color4\\s*{[^}]*\\bbackground-color\\s*:\\s*hsl\\s*\\((${absHSLVals}|${legacyHSLVals})\\)\\s*;?[^}]*}`);
assert.match(__helpers.removeCssComments(code), hslRegex);
```

El elemento `.color5` debería tener un color de fondo establecido.

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
