---
id: 66bf6bacf178eac7b96d4f5e
title: Jenga Kitufe cha Kubadilisha Ikoni ya Kupenda
challengeType: 25
dashedName: build-a-favorite-icon-toggler
demoType: onClick
---

# --description--

Katika maabara hii utatumia matukio ya bofya ya JavaScript kubadilisha muonekano wa ikoni ya kupenda. Ikoni ya moyo itakapobofyiwa, muonekano wa moyo hubadilika kutoka tupu kwenda imejazwa, na kinyume chake.

**Lengo:** Timiza hadithi za watumizi zilizo hapa chini na upite vipimo vyote ili kumaliza maabara.

**Hadithi za watumizi:**

1. Unapaswa kuwa na orodha isiyopangwa yenye vitu vitatu.
2. Orodha isiyopangwa inapaswa kuwa na darasa la vitu `item-list`.
3. Vitu vitatu vya orodha vinapaswa kuwa na jina la kipengee kifuatiwa na kipengee cha `button` chenye darasa la vitu `favorite-icon`.
4. Kipengee cha `button` kinapaswa kuwa na msimbo `&#9825;` mwanzoni kuwakilisha moyo tupu.
5. Tukio la bofya kwenye kipengee cha `button` chenye moyo linapotokea, unapaswa kuongeza darasa la vitu liitwalo `filled` kwenye `button` iliyobofyiwa ikiwa bado halipo, na kuiondoa ikiwa ipo.
6. Unapaswa kuwa na kichaguzi cha darasa la vitu kinacholenga darasa la vitu `filled` na kuweka baadhi ya mali za CSS.
7. Tukio la bofya kwenye kipengee cha `button` chenye moyo linapotokea, alama ya moyo inapaswa kubadilika kati ya `&#9825;` (moyo tupu) na `&#10084;` (moyo umejazwa), kulingana na hali yake ya sasa.

**Kumbuka:** Hakikisha umeunganisha faili lako la JavaScript kwenye HTML yako. (Mfano `<script src="script.js"></script>`)

# --hints--

Unapaswa kuwa na orodha isiyopangwa.

```js
assert.exists(document.querySelector('ul'));
```

Orodha yako isiyopangwa inapaswa kuwa na vitu 3.

```js
assert.lengthOf(document.querySelectorAll('ul li'), 3);
```

Orodha yako isiyopangwa inapaswa kuwa na darasa la vitu `item-list`.

```js
assert.exists(document.querySelector('ul.item-list'));
```

Vitu vyako vya orodha vinapaswa kuwa na jina la kipengee.

```js
assert.exists(document.querySelector('ul li').textContent);
```

Kipengee chako cha orodha kinapaswa kuwa na kipengee cha `button` chenye darasa la vitu `favorite-icon`.

```js
assert.exists(document.querySelector('ul li button.favorite-icon'));
```

Mwanzo, vipengee vya `button` vinapaswa kuwa na msimbo `&#9825;` kuwakilisha moyo tupu.

```js
const inputs = document.querySelectorAll('ul li button.favorite-icon');
assert.isNotEmpty(inputs);

for (let input of inputs) {
  assert.strictEqual(input.innerHTML.charCodeAt(0), 9825);
}
```

Unapaswa kuwa na kichaguzi cha `.filled` kinachoweka baadhi ya mali za CSS.

```js
const filled = new __helpers.CSSHelp(document).getStyle('.filled');
assert.exists(filled); 
assert.isNotEmpty([...filled]); 
```

Tukio la bofya kwenye kipengee cha `button`, na ikiwa kina darasa la vitu `filled`, unapaswa kuondoa darasa la vitu `filled` kutoka kwenye kipengee cha `button` na kubadilisha innerHTML ya kipengee cha `button` kuwa `&#9825;`.

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

Tukio la bofya kwenye kipengee cha `button`, na ikiwa hakina darasa la vitu `filled`, unapaswa kuongeza darasa la vitu `filled` kwenye kipengee cha `button` na kubadilisha `innerHTML` ya kipengee cha `button` kuwa `&#10084;`.

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
