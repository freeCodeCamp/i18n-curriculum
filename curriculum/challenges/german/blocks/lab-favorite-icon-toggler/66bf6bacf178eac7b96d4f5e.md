---
id: 66bf6bacf178eac7b96d4f5e
title: Lieblingssymbol-Umschalter erstellen
challengeType: 25
dashedName: build-a-favorite-icon-toggler
demoType: onClick
---

# --description--

In diesem Labor verwenden Sie JavaScript-Klick-Ereignisse, um das Aussehen eines Lieblingssymbols umzuschalten. Wenn auf das Herzsymbol geklickt wird, ändert sich das Aussehen des Herzens von leer zu gefüllt und umgekehrt.

**Ziel:** Erfüllen Sie die untenstehenden User Stories und bestehen Sie alle Tests, um das Labor abzuschließen.

**User Stories:**

1. Sie sollten eine ungeordnete Liste mit drei Elementen haben.
2. Die ungeordnete Liste sollte die Klasse `item-list` haben.
3. Die drei Listenelemente sollten den Elementnamen gefolgt von einem `button`-Element mit der Klasse `favorite-icon` enthalten.
4. Das `button`-Element sollte anfangs den Code `&#9825;` enthalten, um ein leeres Herz darzustellen.
5. Wenn auf ein `button`-Element mit einem Herz geklickt wird, sollten Sie eine Klasse namens `filled` zum angeklickten `button` hinzufügen, falls sie noch nicht vorhanden ist, und entfernen, falls sie vorhanden ist.
6. Sie sollten einen Klassenselektor haben, der die Klasse `filled` anspricht und einige CSS-Eigenschaften setzt.
7. Wenn auf ein `button`-Element mit einem Herz geklickt wird, sollte das Herzsymbol je nach aktuellem Zustand zwischen `&#9825;` (leeres Herz) und `&#10084;` (gefülltes Herz) umgeschaltet werden.

**Hinweis:** Vergewissern Sie sich, dass Sie Ihre JavaScript-Datei in Ihrem HTML verlinken. (z. B. `<script src="script.js"></script>`)

# --hints--

Sie sollten eine ungeordnete Liste haben.

```js
assert.exists(document.querySelector('ul'));
```

Ihre ungeordnete Liste sollte 3 Elemente enthalten.

```js
assert.lengthOf(document.querySelectorAll('ul li'), 3);
```

Ihre ungeordnete Liste sollte die Klasse `item-list` haben.

```js
assert.exists(document.querySelector('ul.item-list'));
```

Ihre einzelnen Listenelemente sollten den Elementnamen enthalten.

```js
assert.exists(document.querySelector('ul li').textContent);
```

Ihr einzelnes Listenelement sollte ein `button`-Element mit der Klasse `favorite-icon` enthalten.

```js
assert.exists(document.querySelector('ul li button.favorite-icon'));
```

Anfangs sollten die `button`-Elemente den Code `&#9825;` enthalten, um ein leeres Herz darzustellen.

```js
const inputs = document.querySelectorAll('ul li button.favorite-icon');
assert.isNotEmpty(inputs);

for (let input of inputs) {
  assert.strictEqual(input.innerHTML.charCodeAt(0), 9825);
}
```

Sie sollten einen `.filled`-Selektor haben, der einige CSS-Eigenschaften setzt.

```js
const filled = new __helpers.CSSHelp(document).getStyle('.filled');
assert.exists(filled); 
assert.isNotEmpty([...filled]); 
```

Wenn auf das `button`-Element geklickt wird und es die Klasse `filled` enthält, sollten Sie die Klasse `filled` vom `button`-Element entfernen und den innerHTML-Wert des `button`-Elements auf `&#9825;` ändern.

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

Wenn auf das `button`-Element geklickt wird und es die Klasse `filled` nicht enthält, sollten Sie die Klasse `filled` zum `button`-Element hinzufügen und den `innerHTML` des `button`-Elements auf `&#10084;` ändern.

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
