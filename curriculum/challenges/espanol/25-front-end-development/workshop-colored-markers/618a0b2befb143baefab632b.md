---
id: 618a0b2befb143baefab632b
title: Paso 32
challengeType: 0
dashedName: step-32
---

# --description--

Observa que los colores rojo y cian son muy brillantes uno al lado del otro. Este contraste puede ser desconcertante si se utiliza en exceso en un sitio web, y puede dificultar la lectura del texto si se coloca en un fondo de color complementario.

Es mejor práctica elegir un color como color dominante y usar su color complementario como acento para llamar la atención sobre cierto contenido en la página.

Primero, en la regla del `h1`, utiliza la función `rgb` para establecer su `background-color` a cian.

# --hints--

No debes eliminar o modificar la propiedad `text-align` o su valor.

```js
assert.strictEqual(new __helpers.CSSHelp(document).getStyle('h1')?.textAlign, 'center');
```

La regla CSS de `h1` debe tener una propiedad `background-color` configurada a `rgb(0, 255, 255)`.

```js
assert.strictEqual(new __helpers.CSSHelp(document).getStyle('h1')?.backgroundColor, 'rgb(0, 255, 255)');
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
