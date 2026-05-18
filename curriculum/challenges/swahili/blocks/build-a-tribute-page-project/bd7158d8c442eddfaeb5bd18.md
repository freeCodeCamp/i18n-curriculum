---
id: bd7158d8c442eddfaeb5bd18
title: Jenga ukurasa wa heshima
challengeType: 14
saveSubmissionToDB: true
forumTopicId: 301147
dashedName: build-a-tribute-page
---

# --description--

**Lengo:** Jenga programu inayofanana kiutendaji na <a href="https://tribute-page.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://tribute-page.freecodecamp.rocks</a>. **Usikopi mradi huu wa maonyesho**.

**Hadithi za mtumizi:**

1. Ukurasa wako wa heshima unapaswa kuwa na kipengele cha `main` chenye `id` inayolingana ya `main`, ambayo ina vipengele vyote vingine
1. Unapaswa kuona kipengele chenye `id` ya `title`, kinachojumuisha mfuatano wa herufi (yaani maandishi), unaoelezea somo la ukurasa wa heshima (mfano "Dr. Norman Borlaug")
1. Unapaswa kuona kipengele cha `figure` au `div` chenye `id` ya `img-div`
1. Ndani ya kipengele cha `#img-div`, unapaswa kuona kipengele cha `img` chenye `id="image"` inayolingana
1. Ndani ya kipengele cha `#img-div`, unapaswa kuona kipengele chenye `id="img-caption"` inayolingana kinachojumuisha maelezo ya maandishi yanayoelezea picha iliyoonyeshwa katika `#img-div`
1. Unapaswa kuona kipengele chenye `id="tribute-info"` inayolingana, kinachojumuisha maelezo ya maandishi yanayoelezea somo la ukurasa wa heshima
1. Unapaswa kuona kipengele cha `a` chenye `id="tribute-link"` inayolingana, kinachounganisha na tovuti ya nje, yenye taarifa za ziada kuhusu somo la ukurasa wa heshima. KUNDI: Lazima upatie kipengele chako sifa ya `target` na kuiweka kuwa `_blank` ili kiungo chako kufunguka kwenye kichupo kipya
1. `#image` yako inapaswa kutumia mali za `max-width` na `height` kubadilika ukubwa kulingana na upana wa kipengele cha mzazi wake, bila kuzidi ukubwa wake wa awali
1. Kipengele chako cha `img` kinapaswa kuwekwa katikati ndani ya kipengele cha mzazi wake

Timiza hadithi za mtumizi na pita vipimo vyote hapa chini ili ukamilishe mradi huu. Toa mtindo wako binafsi. Furahia kuandika msimbo!

**Kumbuka:** Hakikisha unaongeza `<link rel="stylesheet" href="styles.css">` katika HTML yako ili kuunganisha karatasi yako ya mtindo na kutumia CSS yako

# --hints--

Unapaswa kuwa na kipengele cha `main` chenye `id` ya `main`.

```js
const el = document.getElementById('main');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'MAIN');
```

`#img-div`, `#image`, `#img-caption`, `#tribute-info`, na `#tribute-link` zako zote zinapaswa kuwa mzao wa `#main`.

```js
const el1 = document.querySelector('#main #img-div');
const el2 = document.querySelector('#main #image');
const el3 = document.querySelector('#main #img-caption');
const el4 = document.querySelector('#main #tribute-info');
const el5 = document.querySelector('#main #tribute-link');
assert.isNotNull(el1);
assert.isNotNull(el2);
assert.isNotNull(el3);
assert.isNotNull(el4);
assert.isNotNull(el5);
```

Unapaswa kuwa na kipengele chenye `id` ya `title`.

```js
const el = document.getElementById('title');
assert.isNotNull(el);
```

`#title` yako haipaswi kuwa tupu.

```js
const el = document.getElementById('title');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText.trim());
```

Unapaswa kuwa na kipengele cha `figure` au `div` chenye `id` ya `img-div`.

```js
const el = document.getElementById('img-div');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGURE');
```

Unapaswa kuwa na kipengele cha `img` chenye `id` ya `image`.

```js
const el = document.getElementById('image');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'IMG');
```

`#image` yako inapaswa kuwa mzao wa `#img-div`.

```js
const el = document.querySelector('#img-div #image');
assert.isNotNull(el);
```

Unapaswa kuwa na kipengele cha `figcaption` au `div` chenye `id` ya `img-caption`.

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGCAPTION');
```

`#img-caption` yako inapaswa kuwa mzao wa `#img-div`.

```js
const el = document.querySelector('#img-div #img-caption');
assert.isNotNull(el);
```

`#img-caption` yako haipaswi kuwa tupu.

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

Unapaswa kuwa na kipengele chenye `id` ya `tribute-info`.

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
```

`#tribute-info` yako haipaswi kuwa tupu.

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

Unapaswa kuwa na kipengele cha `a` chenye `id` ya `tribute-link`.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'A');
```

`#tribute-link` yako inapaswa kuwa na sifa ya `href` na thamani yake.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.isNotNull(el.href);
assert.isNotEmpty(el.href);
```

`#tribute-link` yako inapaswa kuwa na sifa ya `target` iliyowekwa kuwa `_blank`.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.target, '_blank');
```

Kipengele chako cha `img` kinapaswa kuwa na `display` ya `block`.

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('display');
assert.strictEqual(style, 'block');
```

`#image` yako inapaswa kuwa na `max-width` ya `100%`.

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('max-width');
assert.strictEqual(style, '100%');
```

`#image` yako inapaswa kuwa na `height` ya `auto`.

```js
// taken from the testable-projects repo
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const oldDisplayValue = imgStyle.getPropertyValue('display');
const oldDisplayPriority = imgStyle.getPropertyPriority('display');
img?.style.setProperty('display', 'none', 'important');
const heightValue = imgStyle?.getPropertyValue('height');
img?.style.setProperty('display', oldDisplayValue, oldDisplayPriority);
assert.strictEqual(heightValue, 'auto');
```

`#image` yako inapaswa kuwekwa katikati ndani ya mzazi wake.

```js
// taken from the testable-projects repo
const img = document.getElementById('image'),
  imgParent = img?.parentElement,
  imgLeft = img?.getBoundingClientRect().left,
  imgRight = img?.getBoundingClientRect().right,
  parentLeft = imgParent?.getBoundingClientRect().left,
  parentRight = imgParent?.getBoundingClientRect().right,
  leftMargin = imgLeft - parentLeft,
  rightMargin = parentRight - imgRight;
assert.isBelow(leftMargin - rightMargin, 6);
assert.isBelow(rightMargin - leftMargin, 6);
```

# --seed--

## --seed-contents--

```html

```

```css

```

# --solutions--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <link
      href="https://fonts.googleapis.com/css?family=Pacifico"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Lobster"
      rel="stylesheet"
    />
    <link href="styles.css" rel="stylesheet" />
    <title>Tribute Page</title>
  </head>
  <body>
    <h1>Tribute Page</h1>
    <p>The below card was designed as a tribute page for freeCodeCamp.</p>
    <main id="main">
      <div id="img-div">
        <img
          id="image"
          class="border"
          src="https://upload.wikimedia.org/wikipedia/en/5/53/Pok%C3%A9mon_Togepi_art.png"
          alt="An image of Togepi"
        />
        <figcaption id="img-caption">Togepi, happy as always.</figcaption>
      </div>
      <h2 id="title">Togepi</h2>
      <hr />
      <div id="tribute-info">
        <p>
          Togepi was first discovered in the Johto region, when Ash Ketchum
          discovered a mysterious egg. However, when the egg hatched, Togepi saw
          Ash's friend Misty first and imprinted on her. Like many other
          creatures, this imprinting process created a bond and Togepi views
          Misty as his mother.
        </p>
        <p>
          Togepi is a very childlike Pokemon, and is very emotionally
          expressive. He demonstrates extreme levels of joy and sadness.
        </p>
        <hr />
        <p><u>Battle Information</u></p>
        <ul style="list-style-type: none">
          <li>Type: Fairy</li>
          <li>Evolutions: Togepi -> Togetic -> Togekiss</li>
          <li>Moves: Growl, Pound, Sweet Kiss, Charm</li>
          <li>Weaknesses: Poison, Steel</li>
          <li>Resistances: Dragon</li>
        </ul>
        <p>
          Check out this
          <a
            id="tribute-link"
            href="https://bulbapedia.bulbagarden.net/wiki/Togepi_(Pok%C3%A9mon)"
            target="_blank"
            rel="noopener noreferrer"
            >Bulbapedia article on Togepi</a
          >
          for more information on this great Pokemon.
        </p>
      </div>
    </main>
  </body>
  <footer>
    <a href="../">Return to Project List</a> |
    <a href="https://www.nhcarrigan.com">Return to HomePage</a>
  </footer>
</html>
```

```css
body {
  background-color: #3a3240;
  color: white;
}
main {
  background-color: #92869c;
  font-family: Lobster;
  max-width: 500px;
  margin: 20px auto;
  color: black;
  border-radius: 50px;
  box-shadow: 10px 10px rgba(0, 0, 0, 0.5);
}
h2 {
  text-align: center;
  font-size: 20pt;
  font-family: Pacifico;
}
body {
  text-align: center;
  font-size: 12pt;
}
footer {
  text-align: center;
  font-size: 10pt;
}
.border {
  border-color: black;
  border-width: 5px;
  border-style: solid;
}
#image {
  height: auto;
  display: block;
  margin: auto;
  max-width: 100%;
  border-radius: 50%;
}
#img-caption {
  font-size: 10pt;
}
a:not(#tribute-link) {
  color: white;
}
hr {
  border-color: black;
}
```
