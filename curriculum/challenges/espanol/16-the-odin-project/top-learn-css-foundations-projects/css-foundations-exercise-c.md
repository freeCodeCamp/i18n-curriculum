---
id: 63ee3fe9381756f9716727f1
title: Ejercicio C de las bases de CSS
challengeType: 14
dashedName: css-foundations-exercise-c
---

# --description--

Compilamos un poco sobre el ejercicio anterior, en el cual agregaste múltiples clases a un solo elemento para aplicar dos reglas diferentes a este.

1. Debes ver un fondo negro y texto blanco en el primer elemento `button`.
1. Debes ver un fondo amarillo en el segundo elemento `button`.
1. Debes establecer un tamaño de fuente de `28px` usando un selector de agrupamiento.
1. Debes tener una lista de fuentes que contenga `Helvetica` y `Times New Roman` con `sans-serif` como alternativa.
1. Debes ver un nombre de clase único en cada elemento.
1. Debes tener un selector de agrupamiento para estilos que ambos elementos comparten.

# --hints--

Debes tener un fondo `black` en el primer elemento.

```js
const classes = document.querySelectorAll('button')?.[0].classList;

const style = new __helpers.CSSHelp(document).getStyle(`.${classes[0]}`);

assert.equal(style?.backgroundColor, 'black');

```

Tu primer elemento debe tener un color de texto de `white`.

```js

const classes = document.querySelectorAll('button')?.[0].classList;

const style = new __helpers.CSSHelp(document).getStyle(`.${classes[0]}`);

assert.equal(style?.color, 'white');

```

Debe establecer el `font-size` para ambos elementos a `28px` usando un selector de agrupamiento.

```js
const classOne = document.querySelectorAll('button')?.[0].classList?.[0];
const classTwo = document.querySelectorAll('button')?.[1].classList?.[0];

function eitherOr() {
  const a = new __helpers.CSSHelp(document)
  return a.getStyle(`.${classOne}, .${classTwo}`) ?? a.getStyle(`.${classTwo}, .${classOne}`);
}
assert.equal(eitherOr()?.fontSize, '28px');
```

Tienes un nombre de clase único en cada elemento.

```js
const elementOneClasses = document.querySelectorAll('button')?.[0].classList;
const elementTwoClasses = document.querySelectorAll('button')?.[1].classList;

for(let i = 0; i < elementOneClasses.length; i++){
    assert(![...elementTwoClasses].includes(elementOneClasses[i]));
}

```

Debes tener un selector de agrupamiento para estilos que ambos elementos comparten.

```js
const classOne = document.querySelectorAll('button')?.[0].classList?.[0];
const classTwo = document.querySelectorAll('button')?.[1].classList?.[0];

function eitherOr() {
  const a = new __helpers.CSSHelp(document)
  return a.getStyle(`.${classOne}, .${classTwo}`) ?? a.getStyle(`.${classTwo}, .${classOne}`);
}
assert.exists(eitherOr());
```

Debes tener una lista de fuentes que contenga `Helvetica` y `Times New Roman` con `sans-serif` como alternativa.

```js
const classOne = document.querySelectorAll('button')?.[0].classList?.[0];
const classTwo = document.querySelectorAll('button')?.[1].classList?.[0];

function eitherOr() {
  const a = new __helpers.CSSHelp(document)
  return a.getStyle(`.${classOne}, .${classTwo}`) ?? a.getStyle(`.${classTwo}, .${classOne}`);
}

assert.equal(eitherOr()?.fontFamily, 'Helvetica, "Times New Roman", sans-serif');
```

Cada elemento solo debe tener una clase.

```js
const elementOneClasses = document.querySelectorAll('button')?.[0].classList;
const elementTwoClasses = document.querySelectorAll('button')?.[1].classList;

assert(elementOneClasses.length === 1 && elementTwoClasses.length === 1);
```


# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Grouping Selectors</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <button>Click Me!</button>
    <button>No, Click Me!</button>
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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grouping Selectors</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <button class="inverted">Click Me!</button>
    <button class="fancy">No, Click Me!</button>
  </body>
</html>
```

```css
.inverted,
.fancy {
  font-family: Helvetica, "Times New Roman", sans-serif;
  font-size: 28px;
}

.inverted {
  background-color: black;
  color: white;
}

.fancy {
  background-color: yellow;
}
```
