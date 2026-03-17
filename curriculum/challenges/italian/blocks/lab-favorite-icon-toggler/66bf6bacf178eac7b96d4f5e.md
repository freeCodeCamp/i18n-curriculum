---
id: 66bf6bacf178eac7b96d4f5e
title: Costruisci un selettore per icona preferita
challengeType: 25
dashedName: build-a-favorite-icon-toggler
demoType: onClick
---

# --description--

In questo laboratorio userai gli eventi click di JavaScript per alternare l'aspetto di un'icona preferita. Quando clicchi sull'icona a forma di cuore, l'aspetto del cuore cambia da vuoto a pieno e viceversa.

**Obiettivo:** Completa le storie utente qui sotto e fai superare tutti i test per completare il laboratorio.

**Storie utente:**

1. Devi avere una lista non ordinata con tre elementi.
2. La lista non ordinata deve avere la classe `item-list`.
3. I tre elementi della lista devono contenere il nome dell'elemento seguito da un elemento `button` con la classe `favorite-icon`.
4. L'elemento `button` deve contenere inizialmente il codice `&#9825;` per rappresentare un cuore vuoto.
5. Quando un elemento `button` contenente un cuore viene cliccato, devi aggiungere una classe chiamata `filled` all'elemento `button` cliccato se non è già presente, e rimuoverla se invece lo è.
6. Devi avere un selettore di classe che prende di mira la classe `filled` e imposta alcune proprietà CSS.
7. Quando un elemento `button` contenente un cuore viene cliccato, il simbolo del cuore deve alternare tra `&#9825;` (cuore vuoto) e `&#10084;` (cuore pieno), a seconda del suo stato attuale.

**Nota:** Assicurati di collegare il tuo file JavaScript nel tuo HTML. (Es. `<script src="script.js"></script>`)

# --hints--

Devi avere una lista non ordinata.

```js
assert.exists(document.querySelector('ul'));
```

La tua lista non ordinata deve avere 3 elementi.

```js
assert.lengthOf(document.querySelectorAll('ul li'), 3);
```

La tua lista non ordinata deve avere la classe `item-list`.

```js
assert.exists(document.querySelector('ul.item-list'));
```

I singoli elementi della lista devono contenere il nome dell'elemento.

```js
assert.exists(document.querySelector('ul li').textContent);
```

Il singolo elemento della lista deve contenere un elemento `button` con la classe `favorite-icon`.

```js
assert.exists(document.querySelector('ul li button.favorite-icon'));
```

Inizialmente, gli elementi `button` devono contenere il codice `&#9825;` per rappresentare un cuore vuoto.

```js
const inputs = document.querySelectorAll('ul li button.favorite-icon');
assert.isNotEmpty(inputs);

for (let input of inputs) {
  assert.strictEqual(input.innerHTML.charCodeAt(0), 9825);
}
```

Devi avere un selettore `.filled` che imposta alcune proprietà CSS.

```js
const filled = new __helpers.CSSHelp(document).getStyle('.filled');
assert.exists(filled); 
assert.isNotEmpty([...filled]); 
```

Quando l'elemento `button` viene cliccato, e contiene la classe `filled`, devi rimuovere la classe `filled` dall'elemento `button` e cambiare l'innerHTML dell'elemento `button` in `&#9825;`.

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

Quando l'elemento `button` viene cliccato, e non contiene la classe `filled`, devi aggiungere la classe `filled` all'elemento `button` e cambiare il `innerHTML` dell'elemento `button` in `&#10084;`.

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
