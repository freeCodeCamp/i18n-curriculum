---
id: 66bf6bacf178eac7b96d4f5e
title: Construir un conmutador de íconos favoritos
challengeType: 25
dashedName: build-a-favorite-icon-toggler
demoType: onClick
---

# --description--

En este laboratorio, utilizarás eventos de clic de JavaScript para alternar la apariencia de un ícono favorito. Cuando se hace clic en el ícono de corazón, la apariencia del corazón cambia de vacío a lleno, y viceversa.

**Objective:** Fulfill the user stories below and get all the tests to pass to complete the lab.

**Historia de usuario:**

1. Debe tener una lista desordenada con tres elementos.
2. La lista desordenada debe tener la clase `item-list`.
3. Los tres elementos de la lista deben contener el nombre del artículo seguido de un elemento `button` con la clase `favorite-icon`.
4. El elemento `button` debe contener el código `&#9825;` inicialmente para representar un corazón vacío.
5. Cuando se hace clic en un elemento `button` que contiene un corazón, debe agregar una clase llamada `filled` al `button` clicado si no está presente, y eliminarla, si lo está.
6. Debe tener un selector de clase que apunte a la clase `filled` y establezca algunas propiedades de CSS.
7. Cuando se hace clic en un elemento `button` que contiene un corazón, el símbolo del corazón debe alternar entre `&#9825;` (corazón vacío) y `&#10084;` (corazón lleno), dependiendo de su estado actual.

**Nota:** Asegúrese de vincular su archivo JavaScript en su HTML. (Ej. `<script src="script.js"></script>`)

# --hints--

Debe tener una lista desordenada.

```js
assert.exists(document.querySelector('ul'));
```

Su lista desordenada debe tener 3 elementos.

```js
assert.lengthOf(document.querySelectorAll('ul li'), 3);
```

Su lista desordenada debe tener la clase `item-list`.

```js
assert.exists(document.querySelector('ul.item-list'));
```

Sus elementos de lista individuales deben contener el nombre del artículo.

```js
assert.exists(document.querySelector('ul li').textContent);
```

Su elemento de lista individual debe contener un elemento `button` con la clase `favorite-icon`.

```js
assert.exists(document.querySelector('ul li button.favorite-icon'));
```

Inicialmente, los elementos `button` deben contener el código `&#9825;` para representar un corazón vacío.

```js
const inputs = document.querySelectorAll('ul li button.favorite-icon');
assert.isNotEmpty(inputs);

for (let input of inputs) {
  assert.strictEqual(input.innerHTML.charCodeAt(0), 9825);
}
```

Debe tener un selector `.filled` que establezca algunas propiedades de CSS.

```js
const filled = new __helpers.CSSHelp(document).getStyle('.filled');
assert.exists(filled); 
assert.isNotEmpty([...filled]); 
```

Cuando se hace clic en el elemento `button`, y contiene la clase `filled`, debe eliminar la clase `filled` del elemento `button` y cambiar el innerHTML del elemento `button` a `&#9825;`.

```js
const buttonElements = document.querySelectorAll('.favorite-icon');
assert.isNotEmpty(buttonElements);

buttonElements.forEach(button => button.classList.add('filled'));

buttonElements.forEach(button => {
  button.dispatchEvent(new Event('click', { bubbles: true }));
  assert.isFalse(button.classList.contains('filled'));
  assert.equal(button.innerHTML.charCodeAt(0), 9825);
});
```

Cuando se hace clic en el elemento `button`, y no contiene la clase `filled`, debe agregar la clase `filled` al elemento `button` y cambiar el `innerHTML` del elemento `button` a `&#10084;`.

```js
const buttonElements = document.querySelectorAll('.favorite-icon');
assert.isNotEmpty(buttonElements);

buttonElements.forEach(button => button.classList.remove('filled'));

buttonElements.forEach(button => {
  button.dispatchEvent(new Event('click', { bubbles: true }));
  assert.isTrue(button.classList.contains('filled'));
  assert.equal(button.innerHTML.charCodeAt(0), 10084);
});
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Favorite Icon Toggler</title>
    <link rel="stylesheet" href="styles.css" />
  </head>

  <body>

  </body>
</html>
```

```css

```

```js

```

# --solutions--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Favorite Icon Toggle</title>
    <link rel="stylesheet" href="styles.css" />
  </head>

  <body>
    <h1>Art Supplies</h1>
    <ul class="item-list">
      <li>
        120 gm paper
        <button class="favorite-icon" id="favoriteIcon1">&#9825;</button>
      </li>
      <li>
        Watercolor set
        <button class="favorite-icon" id="favoriteIcon2">&#9825;</button>
      </li>
      <li>
        Lead pencil 6B
        <button class="favorite-icon" id="favoriteIcon3">&#9825;</button>
      </li>
    </ul>

    <script src="script.js"></script>
  </body>
</html>
```

```css
body {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
  font-family: Arial, sans-serif;
}

h1 {
  margin-bottom: 20px;
}

.item-list {
  list-style-type: none;
  padding: 0;
}

.item-list li {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
  border-bottom: 1px solid #ddd;
  width: 200px;
}

.favorite-icon {
  font-size: 1.25rem;
  background-color: transparent;
  border: none;
  cursor: pointer;
}

.filled {
  color: #d22b2b;
}
```

```js
document.addEventListener("DOMContentLoaded", () => {
  const favoriteIcons = document.querySelectorAll(".favorite-icon");

  favoriteIcons.forEach(icon => {
    icon.addEventListener("click", () => {
      if (icon.classList.contains("filled")) {
        icon.classList.remove("filled");
        icon.innerHTML = "&#9825;"; // Empty heart
      } else {
        icon.classList.add("filled");
        icon.innerHTML = "&#10084;"; // Filled black heart
      }
    });
  });
});
```
