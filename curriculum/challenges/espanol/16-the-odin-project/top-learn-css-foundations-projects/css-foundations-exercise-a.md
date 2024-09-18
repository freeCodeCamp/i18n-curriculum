---
id: 63ee3f71381756f9716727ef
title: Ejercicio A de Fundamentos de CSS
challengeType: 14
dashedName: css-foundations-exercise-a
---

# --description--

**Objetivo:** En este ejercicio, vas a practicar agregando CSS a un archivo HTML usando los tres métodos: CSS externo, CSS interno, y CSS en línea. Solo debes usar selectores de tipo para este ejercicio al agregar estilos mediante los métodos externo e interno. También debes usar palabras claves para colores (por ejemplo, "blue") en lugar de usar valores `RGB` o `HEX`.

## Historia de usuario

- Debes ver un elemento `div` con algún texto.
  - Debe tener un color de fondo `red`, texto `white`, un tamaño de fuente de `32px`, texto alineado al centro y `bold`.
  - El CSS para el elemento `div` debe ser agregado externamente, y usando un selector de tipo.
- Debes ver un elemento `p` con algún texto.
  - Debe tener un color de fondo `green`, texto `white` y un tamaño de fuente de `18px`.
  - El CSS para el elemento `p` debe ser agregado internamente, y usando un selector de tipo.
- Debes ver un elemento `button` con algún texto.
  - El elemento `button` debe tener un color de fondo `orange` y un tamaño de fuente de `18px`.
  - El CSS para el elemento `button` debe ser agregado usando estilos en línea.

# --hints--

Debes tener un elemento `div` que contenga algún texto.

```js
const divElement = document.querySelector('div');

assert.isNotNull(divElement);
assert.isAtLeast(divElement?.innerText.length, 1);
```

Debes tener una hoja de estilo externa que contenga los estilos del elemento `div`.

```js
const styleSheet = new __helpers.CSSHelp(document).getStyleSheet();
const isExternal = styleSheet?.ownerNode.classList.contains('fcc-injected-styles');
const divStyle = new __helpers.CSSHelp(document).getStyle('div');

assert.isTrue(isExternal);
assert.isNotNull(divStyle);
```

Tu elemento `div` no debe tener su CSS agregado usando estilos internos o en línea.

```js
const styleElement = document.querySelector('style:not([class])');

assert.isNotTrue(styleElement?.innerText.includes('div'));
assert.isNotTrue(document.querySelector('div')?.hasAttribute('style'));
```

Tu elemento `div` debe tener un `background-color` de `red` y un `color` de `white`.

```js
const divStyle = new __helpers.CSSHelp(document).getStyle('div');
const divBGColor = divStyle?.getPropertyValue('background-color');
const divColor = divStyle?.getPropertyValue('color');

assert.equal(divBGColor, 'red');
assert.equal(divColor, 'white');
```

Tu elemento `div` debe tener `font-weight` establecido en `bold`, `font-size` establecido en `32px`, y `text-align` establecido en `center`.

```js
const divStyle = new __helpers.CSSHelp(document).getStyle('div');
const textAlign = divStyle?.getPropertyValue('text-align');
const fontSize = divStyle?.getPropertyValue('font-size');
const fontWeight = divStyle?.getPropertyValue('font-weight');

assert.equal(textAlign, 'center');
assert.equal(fontSize, '32px');
assert.equal(fontWeight,'bold');
```

Debes tener un elemento `p` y debe contener algún texto.

```js
const pElement = document.querySelector('p');

assert.isNotNull(pElement);
assert.isAtLeast(pElement?.innerText.length, 1)
```

Tu elemento `p` debe tener sus estilos agregados internamente usando un elemento `style`.

```js
const styleElement = document.querySelector('style:not([class])');
const rules = styleElement?.sheet?.cssRules?.[0] || styleElement?.sheet?.rules?.[0];
let isStyled = false;

if (rules && rules.selectorText === 'p') {
  isStyled = true;
}

assert.isTrue(isStyled);
```

Tu elemento `p` debe tener un `font-size` de `18px` y tener `color` establecido en `white`.

```js
const styleElement = document.querySelector('style:not([class])');
const rules = styleElement?.sheet?.cssRules?.[0] || styleElement?.sheet?.rules?.[0];
let fontSize, color;

if (rules && rules.selectorText === 'p') {
  fontSize = rules.style.fontSize;
  color = rules.style.color;
}

assert.equal(fontSize, "18px");
assert.equal(color, 'white');
```

Debes tener un elemento `button` que contenga algún texto.

```js
const btnElement = document.querySelector('button');

assert.isNotNull(btnElement);
assert.isAtLeast(btnElement?.innerText.length, 1);
```

Tu elemento `button` debe tener un estilo en línea.

```js
assert.isTrue(document.querySelector('button')?.hasAttribute('style'));
```

Tu elemento `button` debe tener su `background-color` establecido en `orange`.

```js
assert.equal(document.querySelector('button')?.style.backgroundColor, 'orange')
```

Tu elemento `button` debe tener su `font-size` establecido en `18px`.

```js
assert.equal(document.querySelector('button')?.style.fontSize, '18px')
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Exercise A</title>
  </head>
  <body>

  </body>
</html>
```

```css
/* styles.css */
```

# --solutions--

```html
<!DOCTYPE html>
<html>
<head>
  <title>My Styling Example</title>
  <link rel="stylesheet" type="text/css" href="styles.css">
  <style>
    p {
      background-color: green;
      color: white;
      font-size: 18px;
    }
  </style>
</head>
<body>
  <div>Hello World!</div>
  <p>This is a paragraph.</p>
  <button style="background-color: orange; font-size: 18px;">Click Me</button>
</body>
</html>
```

```css
div {
  background-color: red;
  color: white;
  font-size: 32px;
  text-align: center;
  font-weight: bold;
}
```
