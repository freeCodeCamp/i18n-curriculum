---
id: 68ec6e8d0caee3afaaf142ef
title: Paso 8
challengeType: 0
dashedName: step-8
---

# --description--

Puedes agregar múltiples elementos dentro de un elemento `div` para agrupar contenido relacionado. Dentro del elemento que tiene una `class` de `card-container`, crea otro elemento `div`. Este `div` representará la primera tarjeta de libro.

Agrega un atributo `class` a este nuevo elemento `div` y establece el valor del atributo `class` en `card`.

# --hints--

Debes tener un elemento `div` anidado dentro del elemento con una clase `card-container`.

```js
assert.exists(document.querySelector('.card-container div'));
```

Tu nuevo elemento `div` debe tener un atributo `class`.

```js
assert.isTrue(document.querySelector('.card-container div')?.hasAttribute('class'));
```

Tu nuevo elemento `div` debe tener un `class` con el valor de `card`.

```js
assert.exists(document.querySelector('.card-container div.card'));
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>XYZ Bookstore Page</title>
</head>

<body>
  <h1>XYZ Bookstore</h1>
  <p>Browse our collection of amazing books!</p>
 --fcc-editable-region--
  <div class="card-container">

  </div>
--fcc-editable-region--
</body>

</html>
```
