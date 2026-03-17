---
id: bd7158d8c442eddfaeb5bd18
title: Crea una pagina tributo
challengeType: 25
demoType: onClick
dashedName: build-a-tribute-page
saveSubmissionToDB: true
---

# --description--

**Obiettivo:** Completa le storie utente qui sotto e fai superare tutti i test per completare il laboratorio.

**Storie utente:**

1. La tua pagina tributo dovrebbe avere un elemento `main` con un corrispondente `id` di `main`, che contiene tutti gli altri elementi.
1. Dovresti vedere un elemento con un `id` di `title`, che contiene una stringa (cioè testo), che descrive il soggetto della pagina tributo (ad esempio "Dr. Norman Borlaug").
1. Dovresti vedere un elemento `figure` o `div` con un `id` di `img-div`.
1. All'interno dell'elemento `#img-div`, dovresti vedere un elemento `img` con un corrispondente `id="image"`.
1. All'interno dell'elemento `#img-div`, dovresti vedere un elemento con un corrispondente `id="img-caption"` che contiene contenuto testuale che descrive l'immagine mostrata in `#img-div`.
1. Dovresti vedere un elemento con un corrispondente `id="tribute-info"`, che contiene contenuto testuale che descrive il soggetto della pagina tributo.
1. Dovresti vedere un elemento `a` con un corrispondente `id="tribute-link"`, che collega a un sito esterno, che contiene informazioni aggiuntive sul soggetto della pagina tributo. SUGGERIMENTO: Devi dare al tuo elemento un attributo `target` e impostarlo su `_blank` affinché il collegamento si apra in una nuova scheda.
1. Il tuo `#image` dovrebbe usare le proprietà `max-width` e `height` per ridimensionarsi in modo responsivo, rispetto alla larghezza del suo elemento genitore, senza superare la sua dimensione originale.
1. Il tuo elemento `img` dovrebbe essere centrato all'interno del suo elemento genitore.

**Nota:** Assicurati di collegare il tuo foglio di stile nel tuo HTML e di applicare il CSS.

# --hints--

Dovresti avere un elemento `main` con un `id` di `main`.

```js
const el = document.getElementById('main');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'MAIN');
```

Il tuo `#img-div`, `#image`, `#img-caption`, `#tribute-info` e `#tribute-link` dovrebbero essere tutti discendenti di `#main`.

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
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Tribute Page</title>
  </head>

  <body></body>
</html>
```

```css

```

# --solutions--

```html
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="styles.css" />
  </head>
  <body>
    <main id="main">
      <h1 id="title">Dr. Norman Borlaug</h1>
      <p>The man who saved a billion lives</p>
      <figure id="img-div">
        <img
          id="image"
          src="https://cdn.freecodecamp.org/testable-projects-fcc/images/tribute-page-main-image.jpg"
          alt="Dr. Norman Borlaug seen standing in Mexican wheat field with a group of biologists"
        />
        <figcaption id="img-caption">
          Dr. Norman Borlaug, third from the left, trains biologists in Mexico
          on how to increase wheat yields - part of his life-long war on hunger.
        </figcaption>
      </figure>
      <section id="tribute-info">
        <h3 id="headline">Here's a time line of Dr. Borlaug's life:</h3>
        <ul>
          <li><strong>1914</strong> - Born in Cresco, Iowa</li>
          <li>
            <strong>1933</strong> - Leaves his family's farm to attend the
            University of Minnesota, thanks to a Depression era program known as
            the "National Youth Administration"
          </li>
          <li>
            <strong>1935</strong> - Has to stop school and save up more money.
            Works in the Civilian Conservation Corps, helping starving
            Americans. "I saw how food changed them", he said. "All of this left
            scars on me."
          </li>
          <li>
            <strong>1937</strong> - Finishes university and takes a job in the
            US Forestry Service
          </li>
          <li>
            <strong>1938</strong> - Marries wife of 69 years Margret Gibson.
            Gets laid off due to budget cuts. Inspired by Elvin Charles Stakman,
            he returns to school study under Stakman, who teaches him about
            breeding pest-resistant plants.
          </li>
          <li>
            <strong>1941</strong> - Tries to enroll in the military after the
            Pearl Harbor attack, but is rejected. Instead, the military asked
            his lab to work on waterproof glue, DDT to control malaria,
            disinfectants, and other applied science.
          </li>
          <li>
            <strong>1942</strong> - Receives a Ph.D. in Genetics and Plant
            Pathology
          </li>
          <li>
            <strong>1944</strong> - Rejects a 100% salary increase from Dupont,
            leaves behind his pregnant wife, and flies to Mexico to head a new
            plant pathology program. Over the next 16 years, his team breeds
            6,000 different strains of disease resistant wheat - including
            different varieties for each major climate on Earth.
          </li>
          <li>
            <strong>1945</strong> - Discovers a way to grown wheat twice each
            season, doubling wheat yields
          </li>
          <li>
            <strong>1953</strong> - crosses a short, sturdy dwarf breed of wheat
            with a high-yielding American breed, creating a strain that responds
            well to fertilizer. It goes on to provide 95% of Mexico's wheat.
          </li>
          <li>
            <strong>1962</strong> - Visits Delhi and brings his high-yielding
            strains of wheat to the Indian subcontinent in time to help mitigate
            mass starvation due to a rapidly expanding population
          </li>
          <li><strong>1970</strong> - receives the Nobel Peace Prize</li>
          <li>
            <strong>1983</strong> - helps seven African countries dramatically
            increase their maize and sorghum yields
          </li>
          <li>
            <strong>1984</strong> - becomes a distinguished professor at Texas
            A&M University
          </li>
          <li>
            <strong>2005</strong> - states "we will have to double the world
            food supply by 2050." Argues that genetically modified crops are the
            only way we can meet the demand, as we run out of arable land. Says
            that GM crops are not inherently dangerous because "we've been
            genetically modifying plants and animals for a long time. Long
            before we called it science, people were selecting the best breeds."
          </li>
          <li><strong>2009</strong> - dies at the age of 95.</li>
        </ul>
        <blockquote
          cite="http://news.rediff.com/report/2009/sep/14/pm-pays-tribute-to-father-of-green-revolution-borlaug.htm"
        >
          <p>
            "Borlaug's life and achievement are testimony to the far-reaching
            contribution that one man's towering intellect, persistence and
            scientific vision can make to human peace and progress."
          </p>
          <cite>-- Indian Prime Minister Manmohan Singh</cite>
        </blockquote>
        <h3>
          If you have time, you should read more about this incredible human
          being on his
          <a
            id="tribute-link"
            href="https://en.wikipedia.org/wiki/Norman_Borlaug"
            target="_blank"
            >Wikipedia entry</a
          >.
        </h3>
      </section>
    </main>
  </body>
</html>
```

```css
html {
  /* Setting a base font size of 10px give us easier rem calculations
       Info: 1rem === 10px, 1.5rem === 15px, 2rem === 20px and so forth
     */
  font-size: 10px;
}

body {
  /* Native font stack https://getbootstrap.com/docs/4.2/content/reboot/#native-font-stack */
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto',
    'Helvetica Neue', Arial, sans-serif;
  font-size: 1.6rem;
  line-height: 1.5;
  text-align: center;
  color: #333;
  margin: 0;
}

h1 {
  font-size: 4rem;
  margin-bottom: 0;
}

@media (max-width: 460px) {
  h1 {
    font-size: 3.5rem;
    line-height: 1.2;
  }
}

h2 {
  font-size: 3.25rem;
}

a {
  color: #477ca7;
}

a:visited {
  color: #74638f;
}

#main {
  margin: 30px 8px;
  padding: 15px;
  border-radius: 5px;
  background: #eee;
}

@media (max-width: 460px) {
  #main {
    margin: 0;
  }
}

img {
  max-width: 100%;
  display: block;
  height: auto;
  margin: 0 auto;
}

#img-div {
  background: white;
  padding: 10px;
  margin: 0;
}

#img-caption {
  margin: 15px 0 5px 0;
}

@media (max-width: 460px) {
  #img-caption {
    font-size: 1.4rem;
  }
}

#headline {
  margin: 50px 0;
  text-align: center;
}

ul {
  max-width: 550px;
  margin: 0 auto 50px auto;
  text-align: left;
  line-height: 1.6;
}

li {
  margin: 16px 0;
}

blockquote {
  font-style: italic;
  max-width: 545px;
  margin: 0 auto 50px auto;
  text-align: left;
}
```
