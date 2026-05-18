---
id: bd7158d8c442eddfaeb5bd18
title: Eine Hommage-Seite erstellen
challengeType: 14
saveSubmissionToDB: true
forumTopicId: 301147
dashedName: build-a-tribute-page
---

# --description--

**Ziel:** Erstellen Sie eine App, die funktional ähnlich ist wie <a href="https://tribute-page.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://tribute-page.freecodecamp.rocks</a>. **Kopieren Sie dieses Demo-Projekt nicht**.

**User Stories:**

1. Ihre Hommage-Seite sollte ein `main`-Element mit einem entsprechenden `id` von `main` haben, das alle anderen Elemente enthält
1. Sie sollten ein Element mit einem `id` von `title` sehen, das einen String (also Text) enthält, der das Thema der Hommage-Seite beschreibt (z. B. „Dr. Norman Borlaug“)
1. Sie sollten entweder ein `figure`- oder ein `div`-Element mit einem `id` von `img-div` sehen
1. Innerhalb des `#img-div`-Elements sollten Sie ein `img`-Element mit einem entsprechenden `id="image"` sehen
1. Innerhalb des `#img-div`-Elements sollten Sie ein Element mit einem entsprechenden `id="img-caption"` sehen, das textuellen Inhalt enthält, der das in `#img-div` gezeigte Bild beschreibt
1. Sie sollten ein Element mit einem entsprechenden `id="tribute-info"` sehen, das textuellen Inhalt enthält, der das Thema der Hommage-Seite beschreibt
1. Sie sollten ein `a`-Element mit einem entsprechenden `id="tribute-link"` sehen, das zu einer externen Seite verlinkt, die zusätzliche Informationen zum Thema der Hommage-Seite enthält. HINWEIS: Sie müssen Ihrem Element ein Attribut `target` geben und es auf `_blank` setzen, damit Ihr Link in einem neuen Tab geöffnet wird
1. Ihr `#image` sollte `max-width`- und `height`-Eigenschaften verwenden, um sich responsiv relativ zur Breite seines Elternelements zu skalieren, ohne seine ursprüngliche Größe zu überschreiten
1. Ihr `img`-Element sollte innerhalb seines Elternelements zentriert sein

Erfüllen Sie die User Stories und bestehen Sie alle untenstehenden Tests, um dieses Projekt abzuschließen. Verleihen Sie ihm Ihren eigenen Stil. Viel Spaß beim Coden!

**Hinweis:** Fügen Sie unbedingt `<link rel="stylesheet" href="styles.css">` in Ihrem HTML hinzu, um Ihr Stylesheet zu verknüpfen und Ihr CSS anzuwenden

# --hints--

Sie sollten ein `main`-Element mit einem `id` von `main` haben.

```js
const el = document.getElementById('main');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'MAIN');
```

Ihr `#img-div`, `#image`, `#img-caption`, `#tribute-info` und `#tribute-link` sollten alle Nachfahren von `#main` sein.

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

Sie sollten ein Element mit einem `id` von `title` haben.

```js
const el = document.getElementById('title');
assert.isNotNull(el);
```

Ihr `#title` sollte nicht leer sein.

```js
const el = document.getElementById('title');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText.trim());
```

Sie sollten ein `figure`- oder `div`-Element mit einem `id` von `img-div` haben.

```js
const el = document.getElementById('img-div');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGURE');
```

Sie sollten ein `img`-Element mit einem `id` von `image` haben.

```js
const el = document.getElementById('image');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'IMG');
```

Ihr `#image` sollte ein Nachfahre von `#img-div` sein.

```js
const el = document.querySelector('#img-div #image');
assert.isNotNull(el);
```

Sie sollten ein `figcaption`- oder `div`-Element mit einem `id` von `img-caption` haben.

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGCAPTION');
```

Ihr `#img-caption` sollte ein Nachfahre von `#img-div` sein.

```js
const el = document.querySelector('#img-div #img-caption');
assert.isNotNull(el);
```

Ihr `#img-caption` sollte nicht leer sein.

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

Sie sollten ein Element mit einem `id` von `tribute-info` haben.

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
```

Ihr `#tribute-info` sollte nicht leer sein.

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

Sie sollten ein `a`-Element mit einem `id` von `tribute-link` haben.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'A');
```

Ihr `#tribute-link` sollte ein `href`-Attribut und einen Wert haben.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.isNotNull(el.href);
assert.isNotEmpty(el.href);
```

Ihr `#tribute-link` sollte ein `target`-Attribut haben, das auf `_blank` gesetzt ist.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.target, '_blank');
```

Ihr `img`-Element sollte ein `display` von `block` haben.

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('display');
assert.strictEqual(style, 'block');
```

Ihr `#image` sollte ein `max-width` von `100%` haben.

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('max-width');
assert.strictEqual(style, '100%');
```

Ihr `#image` sollte ein `height` von `auto` haben.

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

Ihr `#image` sollte innerhalb seines Elternelements zentriert sein.

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
