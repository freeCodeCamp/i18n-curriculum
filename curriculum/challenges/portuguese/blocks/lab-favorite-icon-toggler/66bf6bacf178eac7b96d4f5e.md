---
id: 66bf6bacf178eac7b96d4f5e
title: Crie um alternador de ícones favoritos
challengeType: 25
dashedName: build-a-favorite-icon-toggler
demoType: onClick
---

# --description--

Neste laboratório, você usará eventos de clique em JavaScript para alternar a aparência de um ícone favorito.Quando o ícone de coração é clicado, a aparência do coração muda de vazio para preenchido, e vice-versa.

**Objetivo:** Cumprir as user stories abaixo e fazer todos os testes passarem para completar o laboratório.

**Histórias de Usuário:**

1. Você deve ter uma lista não ordenada com três itens.
2. A lista não ordenada deve ter a classe `item-list`.
3. Os três itens da lista devem conter o nome do item seguido por um elemento `button` com a classe `favorite-icon`.
4. O elemento `button` deve conter o código `&#9825;` inicialmente para representar um coração vazio.
5. Quando um elemento `button` contendo um coração for clicado, você deve adicionar uma classe chamada `filled` ao `button` clicado se ela ainda não estiver presente, e removê-la, se estiver.
6. Você deve ter um seletor de classe que aponte para a classe `filled` e defina algumas propriedades CSS.
7. Quando um elemento `button` contendo um coração for clicado, o símbolo do coração deve alternar entre `&#9825;` (coração vazio) e `&#10084;` (coração preenchido), dependendo do seu estado atual.

**Nota:** Certifique-se de vincular seu arquivo JavaScript no seu HTML. (Ex. `<script src="script.js"></script>`)

# --hints--

Você deve ter uma lista não ordenada.

```js
assert.exists(document.querySelector('ul'));
```

Sua lista não ordenada deve conter 3 itens.

```js
assert.lengthOf(document.querySelectorAll('ul li'), 3);
```

Sua lista não ordenada deve ter a classe `item-list`.

```js
assert.exists(document.querySelector('ul.item-list'));
```

Seus itens individuais da lista devem conter o nome do item.

```js
assert.exists(document.querySelector('ul li').textContent);
```

Seu item de lista individual deve conter um elemento `button` com a classe `favorite-icon`.

```js
assert.exists(document.querySelector('ul li button.favorite-icon'));
```

Inicialmente, os elementos `button` devem conter o código `&#9825;` para representar um coração vazio.

```js
const inputs = document.querySelectorAll('ul li button.favorite-icon');
assert.isNotEmpty(inputs);

for (let input of inputs) {
  assert.strictEqual(input.innerHTML.charCodeAt(0), 9825);
}
```

Você deve ter um seletor `.filled` que define algumas propriedades CSS.

```js
const filled = new __helpers.CSSHelp(document).getStyle('.filled');
assert.exists(filled); 
assert.isNotEmpty([...filled]); 
```

Quando o elemento `button` for clicado, e ele contiver a classe `filled`, você deve remover a classe `filled` do elemento `button` e alterar o innerHTML do elemento `button` para `&#9825;`.

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

Quando o elemento `button` for clicado, e ele não contiver a classe `filled`, você deve adicionar a classe `filled` ao elemento `button` e alterar o `innerHTML` do elemento `button` para `&#10084;`.

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
