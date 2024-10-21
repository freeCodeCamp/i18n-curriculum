---
id: bd7158d8c442eddfaeb5bd18
title: 製作一個致敬頁
challengeType: 14
demoType: onClick
dashedName: build-a-tribute-page
---

# --description--

Fulfill the user stories below and get all the tests to pass to complete the lab.

**用戶需求:**

1. Your tribute page should have a `main` element with a corresponding `id` of `main`, which contains all other elements.
1. You should see an element with an `id` of `title`, which contains a string (i.e. text), that describes the subject of the tribute page (e.g. "Dr. Norman Borlaug").
1. You should see either a `figure` or a `div` element with an `id` of `img-div`.
1. Within the `#img-div` element, you should see an `img` element with a corresponding `id="image"`.
1. Within the `#img-div` element, you should see an element with a corresponding `id="img-caption"` that contains textual content describing the image shown in `#img-div`.
1. You should see an element with a corresponding `id="tribute-info"`, which contains textual content describing the subject of the tribute page.
1. 你應該看到一個帶有相應 `id="tribute-link"` 的 `a` 元素，該元素鏈接到外部站點，其中包含有關致敬頁面主題的附加信息。 HINT: You must give your element an attribute of `target` and set it to `_blank` in order for your link to open in a new tab.
1. Your `#image` should use `max-width` and `height` properties to resize responsively, relative to the width of its parent element, without exceeding its original size.
1. Your `img` element should be centered within its parent element.

**Note:** Be sure to link your stylesheet in your HTML and apply your CSS.

# --hints--

你的頁面應該包含一個 `main` 元素，且它有一個值爲`main` 的`id`屬性。

```js
const el = document.getElementById('main')
assert(!!el && el.tagName === 'MAIN')
```

你的 `#img-div`、`#image`、`#img-caption`、`#tribute-info` 和 `#tribute-link` 應該是 `#main` 的子元素。

```js
const el1 = document.querySelector('#main #img-div')
const el2 = document.querySelector('#main #image')
const el3 = document.querySelector('#main #img-caption')
const el4 = document.querySelector('#main #tribute-info')
const el5 = document.querySelector('#main #tribute-link')
assert(!!el1 & !!el2 && !!el3 && !!el4 && !!el5)
```

你應該有一個 `id` 爲 `title` 的元素。

```js
const el = document.getElementById('title')
assert(!!el)
```

你的 `#title` 元素不應爲空。

```js
const el = document.getElementById('title')
assert(!!el && el.innerText.length > 0)

```

你應該有一個 `id` 爲 `img-div` 的 `figure` 或 `div` 元素。

```js
const el = document.getElementById('img-div')
assert(!!el && (el.tagName === 'DIV' || el.tagName === 'FIGURE'))
```

你應該有一個 `id` 爲 `image` 的 `img` 元素。

```js
const el = document.getElementById('image')
assert(!!el && el.tagName === 'IMG')
```

你的 `#image` 元素應該是 `#img-div` 元素的子元素。

```js
const el = document.querySelector('#img-div #image')
assert(!!el)
```

你應該有一個 `id` 爲 `img-caption` 的 `figcaption` 元素或 `div` 元素。

```js
const el = document.getElementById('img-caption')
assert(!!el && (el.tagName === 'DIV' || el.tagName === 'FIGCAPTION'))
```

你的 `#img-caption` 元素應該是 `#img-div` 元素的子元素。

```js
const el = document.querySelector('#img-div #img-caption')
assert(!!el)
```

你的 `#img-caption` 不應爲空。

```js
const el = document.getElementById('img-caption')
assert(!!el && el.innerText.length > 0)
```

你應該有一個 `id` 爲 `tribute-info` 的元素。

```js
const el = document.getElementById('tribute-info')
assert(!!el)
```

你的 `#tribute-info` 不應爲空。

```js
const el = document.getElementById('tribute-info')
assert(!!el && el.innerText.length > 0)
```

你應該有一個 `id` 爲 `tribute-link` 的 `a` 元素。

```js
const el = document.getElementById('tribute-link')
assert(!!el && el.tagName === 'A')
```

你的 `#tribute-link` 應該有一個 `href` 屬性和值。

```js
const el = document.getElementById('tribute-link')
assert(!!el && !!el.href && el.href.length > 0)
```

你的 `#tribute-link` 元素應該有一個值爲 `_blank` 的 `target` 屬性。

```js
const el = document.getElementById('tribute-link')
assert(!!el && el.target === '_blank')
```

你的 `img` 元素應該具有 `display` 值爲 `block`。

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('display')
assert(style === 'block')
```

你的 `#image` 應該具有 `max-width` 值爲 `100%`。

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('max-width')
assert(style === '100%')
```

你的 `#image` 應該具有 `height` 值爲 `auto`。

```js
// taken from the testable-projects repo
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const oldDisplayValue = imgStyle.getPropertyValue('display');
const oldDisplayPriority = imgStyle.getPropertyPriority('display');
img?.style.setProperty('display', 'none', 'important');
const heightValue = imgStyle?.getPropertyValue('height')
img?.style.setProperty('display', oldDisplayValue, oldDisplayPriority);
assert(heightValue === 'auto')
```

你的 `#image` 元素應該在其父元素內居中。

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
assert(leftMargin - rightMargin < 6 && rightMargin - leftMargin < 6)
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Tribute Page</title>
</head>

<body>

</body>

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
            breeding pest-resistent plants.
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
            6,000 different strains of disease resistent wheat - including
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
