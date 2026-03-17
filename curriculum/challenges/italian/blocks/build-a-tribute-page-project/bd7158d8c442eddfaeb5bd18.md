---
id: bd7158d8c442eddfaeb5bd18
title: Costruisci una pagina tributo
challengeType: 14
saveSubmissionToDB: true
forumTopicId: 301147
dashedName: build-a-tribute-page
---

# --description--

**Obiettivo:** Costruisci un'app che sia funzionalmente simile a <a href="https://tribute-page.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://tribute-page.freecodecamp.rocks</a>. **Non copiare questo progetto dimostrativo**.

**Storie utente:**

1. La tua pagina tributo dovrebbe avere un elemento `main` con un corrispondente `id` di `main`, che contiene tutti gli altri elementi
1. Dovresti vedere un elemento con un `id` di `title`, che contiene una stringa (cioè testo), che descrive il soggetto della pagina tributo (ad esempio "Dr. Norman Borlaug")
1. Dovresti vedere un elemento `figure` o `div` con un `id` di `img-div`
1. All'interno dell'elemento `#img-div`, dovresti vedere un elemento `img` con un corrispondente `id="image"`
1. All'interno dell'elemento `#img-div`, dovresti vedere un elemento con un corrispondente `id="img-caption"` che contiene contenuto testuale che descrive l'immagine mostrata in `#img-div`
1. Dovresti vedere un elemento con un corrispondente `id="tribute-info"`, che contiene contenuto testuale che descrive il soggetto della pagina tributo
1. Dovresti vedere un elemento `a` con un corrispondente `id="tribute-link"`, che collega a un sito esterno, che contiene informazioni aggiuntive sul soggetto della pagina tributo. SUGGERIMENTO: devi dare al tuo elemento un attributo `target` e impostarlo su `_blank` affinché il collegamento si apra in una nuova scheda
1. Il tuo `#image` dovrebbe usare le proprietà `max-width` e `height` per ridimensionarsi in modo responsivo, rispetto alla larghezza del suo elemento genitore, senza superare la sua dimensione originale
1. Il tuo elemento `img` dovrebbe essere centrato all'interno del suo elemento genitore

Completa le storie utente e supera tutti i test qui sotto per completare questo progetto. Dagli il tuo stile personale. Buona programmazione!

**Nota:** Assicurati di aggiungere `<link rel="stylesheet" href="styles.css">` nel tuo HTML per collegare il foglio di stile e applicare il CSS

# --hints--

Dovresti avere un elemento `main` con un `id` di `main`.

```js
const el = document.getElementById('main');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'MAIN');
```

I tuoi `#img-div`, `#image`, `#img-caption`, `#tribute-info` e `#tribute-link` dovrebbero essere tutti discendenti di `#main`.

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

Dovresti avere un elemento con un `id` di `title`.

```js
const el = document.getElementById('title');
assert.isNotNull(el);
```

Il tuo `#title` non dovrebbe essere vuoto.

```js
const el = document.getElementById('title');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText.trim());
```

Dovresti avere un elemento `figure` o `div` con un `id` di `img-div`.

```js
const el = document.getElementById('img-div');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGURE');
```

Dovresti avere un elemento `img` con un `id` di `image`.

```js
const el = document.getElementById('image');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'IMG');
```

Il tuo `#image` dovrebbe essere un discendente di `#img-div`.

```js
const el = document.querySelector('#img-div #image');
assert.isNotNull(el);
```

Dovresti avere un elemento `figcaption` o `div` con un `id` di `img-caption`.

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGCAPTION');
```

Il tuo `#img-caption` dovrebbe essere un discendente di `#img-div`.

```js
const el = document.querySelector('#img-div #img-caption');
assert.isNotNull(el);
```

Il tuo `#img-caption` non dovrebbe essere vuoto.

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

Dovresti avere un elemento con un `id` di `tribute-info`.

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
```

Il tuo `#tribute-info` non dovrebbe essere vuoto.

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

Dovresti avere un elemento `a` con un `id` di `tribute-link`.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'A');
```

Il tuo `#tribute-link` dovrebbe avere un attributo e valore `href`.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.isNotNull(el.href);
assert.isNotEmpty(el.href);
```

Il tuo `#tribute-link` dovrebbe avere un attributo `target` impostato su `_blank`.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.target, '_blank');
```

Il tuo elemento `img` dovrebbe avere un `display` di `block`.

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('display');
assert.strictEqual(style, 'block');
```

Il tuo `#image` dovrebbe avere un `max-width` di `100%`.

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('max-width');
assert.strictEqual(style, '100%');
```

Il tuo `#image` dovrebbe avere un `height` di `auto`.

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

Il tuo `#image` dovrebbe essere centrato all'interno del suo genitore.

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
