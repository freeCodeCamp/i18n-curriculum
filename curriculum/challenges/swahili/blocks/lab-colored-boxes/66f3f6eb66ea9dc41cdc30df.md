---
id: 66f3f6eb66ea9dc41cdc30df
title: Tengeneza Seti ya Maboksi yenye Rangi
challengeType: 25
dashedName: set-of-colored-boxes
demoType: onClick
---

# --description--

Katika maabara hii, utazoea kutumia rangi za CSS kwa kutengeneza maboksi.

**Lengo:** Timiza hadithi za watumizi zilizo hapa chini na upite vipimo vyote ili kumaliza maabara hii.

**Hadithi za watumizi:**

1. Unapaswa kuweka rangi ya nyuma ya `body` kuwa `#f4f4f4`.
2. Unapaswa kuwa na `div` yenye darasa la vitu la `color-grid` ili kushikilia vipengele vyote vya rangi.
3. Unapaswa kuwa na vipengele vitano vya `div` ndani ya kipengele cha `.color-grid`.
4. Vipengele vitano vya `div` vinapaswa kila kimoja kuwa na darasa la vitu la `color-box` na `color#`, ambapo `#` ni nambari ya mpangilio wa `div`. Kwa mfano: `color1` kwa `div` ya kwanza, `color2` kwa ya pili, na kadhalika.
5. Darasa la vitu la `.color-box` linapaswa kuwa na `width` na `height` ili vipengele vyako vya `div` viwe vinaonekana kwenye ukurasa.
6. Kipengele cha `.color1` kinapaswa kuwa na `background-color` inayotumia thamani ya rangi ya hexadecimal.
7. Kipengele cha `.color2` kinapaswa kuwa na `background-color` inayotumia thamani ya rangi ya RGB.
8. Kipengele cha `.color3` kinapaswa kuwa na `background-color` inayotumia thamani ya rangi iliyotangazwa awali (neno).
9. Kipengele cha `.color4` kinapaswa kuwa na `background-color` inayotumia thamani ya rangi ya HSL.
10. Kipengele cha `.color5` kinapaswa kuwa na `background-color` iliyowekwa.

**Kumbuka:** Hakikisha umeunganisha faili lako la mtindo (stylesheet) katika HTML yako na tumia CSS yako.

# --hints--

`body` inapaswa kuwa na rangi ya nyuma ya `#f4f4f4`.

```js
const body = document.body;
const bodyBgColor = getComputedStyle(body).backgroundColor;
assert.strictEqual(bodyBgColor, 'rgb(244, 244, 244)');
```

Unapaswa kuwa na kipengele cha `div` chenye darasa la vitu la `color-grid`.

```js
const colorGrid = document.querySelector('div.color-grid');
assert.exists(colorGrid);
```

Unapaswa kuwa na vipengele vitano vya `div` ndani ya kipengele cha `.color-grid`.

```js
const colorGridChildren = document.querySelectorAll('div.color-grid > div');
assert.strictEqual(colorGridChildren.length, 5);
```

Kila kipengele kati ya vitano vya `div` kinapaswa kuwa na darasa la vitu la `color-box` na `color#`—badilisha nambari ya mpangilio wa `div` kwa alama ya `#`.

```js
const colorGridChildren = document.querySelectorAll('div.color-grid > div');
assert.strictEqual(colorGridChildren.length, 5);

colorGridChildren.forEach((child, index) => {
  const colorClass = `color${index + 1}`;
  assert.isTrue(child.classList.contains('color-box'));
  assert.isTrue(child.classList.contains(colorClass));
});
```

Darasa la vitu la `.color-box` linapaswa kuwa na mali za `width` na `height` zilizowekwa.

```js
const cssHelp = new __helpers.CSSHelp(document);
assert.isNotEmpty(cssHelp.getStyle('.color-box')?.getPropVal('width', true));
assert.isNotEmpty(cssHelp.getStyle('.color-box')?.getPropVal('height', true));
```

Vipengele vya `.color-box` vinapaswa kila wakati kuwa na `width` na `height` zisizo sifuri. Jaribu kubadilisha ukubwa wa onyesho kuwa mdogo, hakikisha maboksi hayaondoki.

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

Kipengele cha `.color1` kinapaswa kuwa na rangi ya nyuma ya hexadecimal.

```js
const hexChars = "[0-9a-fA-F]"
const hexRegex = new RegExp(`\\.color1\\s*{[^}]*\\bbackground-color\\s*:\\s*#((${hexChars}{3,4})||(${hexChars}{6})||(${hexChars}{8}))\\s*;?[^}]*}`);
assert.match(__helpers.removeCssComments(code), hexRegex);
```

Kipengele cha `.color2` kinapaswa kuwa na rangi ya nyuma ya RGB.

```js
assert.match(__helpers.removeCssComments(code), /\.color2\s*{[^}]*\bbackground-color\s*:\s*rgb\s*\(\s*\d+(?:\.\d+)?\s*(,|\s+)\s*\d+(?:\.\d+)?\s*\1\s*\d+(?:\.\d+)?\s*(\/\s*\d{1,2}(?:\.\d+)?%\s*)?\)\s*;?[^}]*}/);
```

Kipengele cha `.color3` kinapaswa kuwa na rangi ya nyuma iliyotangazwa awali (neno).

```js
const colorSet = new Set(["black", "silver", "gray", "white", "maroon", "red", "purple", "fuchsia", "green", "lime", "olive", "yellow", "navy", "blue", "teal", "aqua", "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "burlywood", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "aqua", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgreen", "darkgrey", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "green", "greenyellow", "grey", "gray", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgreen", "lightgrey", "lightpink", "lightsalmon", "lightseagreen", "lightskyblue", "lightslategray", "lightslategrey", "lightsteelblue", "lightyellow", "lime", "limegreen", "linen", "magenta", "fuchsia", "maroon", "mediumaquamarine", "mediumblue", "mediumorchid", "mediumpurple", "mediumseagreen", "mediumslateblue", "mediumspringgreen", "mediumturquoise", "mediumvioletred", "midnightblue", "mintcream", "mistyrose", "moccasin", "navajowhite", "navy", "oldlace", "olive", "olivedrab", "orange", "orangered", "orchid", "palegoldenrod", "palegreen", "paleturquoise", "palevioletred", "papayawhip", "peachpuff", "peru", "pink", "plum", "powderblue", "purple", "rebeccapurple", "red", "rosybrown", "royalblue", "saddlebrown", "salmon", "sandybrown", "seagreen", "seashell", "sienna", "silver", "skyblue", "slateblue", "slategray", "slategrey", "snow", "springgreen", "steelblue", "tan", "teal", "thistle", "tomato", "transparent", "turquoise", "violet", "wheat", "white", "whitesmoke", "yellow", "yellowgreen"]);
const matchedColor = __helpers.removeCssComments(code).match(/\.color3\s*{[^}]*\bbackground-color\s*:\s*(?<color>[a-zA-Z]+)\s*;?[^}]*}/);
assert.isTrue(colorSet.has(matchedColor.groups.color.toLowerCase()));
```

Kipengele cha `.color4` kinapaswa kuwa na rangi ya nyuma ya HSL.

```js
const absHSLVals = '\\s*(none|\\d+(?:\\.\\d+)?(?:deg)?)\\s*\\d+(?:\\.\\d+)?%?\\s*\\d+(?:\\.\\d+)?%?\\s*(\\/\\s*\\d{1,2}(?:\\.\\d+)?%\\s*)?';
const legacyHSLVals = '\\s*\\d+(?:\\.\\d+)?(?:deg)?\\s*,\\s*\\d+(?:\\.\\d+)?%\\s*,\\s*\\d+(?:\\.\\d+)?%\\s*(?:,\\s*\\d+(?:\\.\\d+)?\\s*)?';
const hslRegex = new RegExp(`\\.color4\\s*{[^}]*\\bbackground-color\\s*:\\s*hsl\\s*\\((${absHSLVals}|${legacyHSLVals})\\)\\s*;?[^}]*}`);
assert.match(__helpers.removeCssComments(code), hslRegex);
```

Kipengele cha `.color5` kinapaswa kuwa na rangi ya nyuma iliyowekwa.

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
