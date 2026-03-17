---
id: bd7158d8c442eddfaeb5bd18
title: Створіть пам’ятну сторінку
challengeType: 25
demoType: onClick
dashedName: build-a-tribute-page
saveSubmissionToDB: true
---

# --description--

**Мета:** Виконайте наведені нижче історії користувача та пройдіть усі тести, щоб завершити лабораторну роботу.

**Історії користувача:**

1. Ваша пам’ятна сторінка повинна мати елемент `main` з відповідним `id` типу `main`, який містить усі інші елементи.
1. Ви повинні бачити елемент з `id` рівним `title`, який містить рядок (текст), що описує тему пам’ятної сторінки (наприклад, "Dr. Norman Borlaug").
1. Ви повинні бачити або елемент `figure`, або `div` з `id` рівним `img-div`.
1. Всередині елемента `#img-div` ви повинні бачити елемент `img` з відповідним `id="image"`.
1. Всередині елемента `#img-div` ви повинні бачити елемент з відповідним `id="img-caption"`, який містить текстовий вміст, що описує зображення, показане в `#img-div`.
1. Ви повинні бачити елемент з відповідним `id="tribute-info"`, який містить текстовий вміст, що описує тему пам’ятної сторінки.
1. Ви повинні бачити елемент `a` з відповідним `id="tribute-link"`, який посилається на зовнішній сайт і містить додаткову інформацію про тему пам’ятної сторінки. ПІДКАЗКА: Ви повинні додати атрибут `target` і встановити його в `_blank`, щоб посилання відкривалося в новій вкладці.
1. Ваш `#image` повинен використовувати властивості `max-width` і `height` для адаптивного масштабування відносно ширини батьківського елемента, не перевищуючи свій початковий розмір.
1. Ваш елемент `img` повинен бути центрований всередині свого батьківського елемента.

**Примітка:** Обов’язково підключіть свій файл стилів у HTML і застосуйте CSS.

# --hints--

Ви повинні мати елемент `main` з `id` рівним `main`.

```js
const el = document.getElementById('main');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'MAIN');
```

Ваші `#img-div`, `#image`, `#img-caption`, `#tribute-info` і `#tribute-link` повинні бути нащадками `#main`.

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

Ви повинні мати елемент з `id` рівним `title`.

```js
const el = document.getElementById('title');
assert.isNotNull(el);
```

Ваш `#title` не повинен бути порожнім.

```js
const el = document.getElementById('title');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText.trim());
```

Ви повинні мати елемент `figure` або `div` з `id` рівним `img-div`.

```js
const el = document.getElementById('img-div');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGURE');
```

Ви повинні мати елемент `img` з `id` рівним `image`.

```js
const el = document.getElementById('image');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'IMG');
```

Ваш `#image` повинен бути нащадком `#img-div`.

```js
const el = document.querySelector('#img-div #image');
assert.isNotNull(el);
```

Ви повинні мати елемент `figcaption` або `div` з `id` рівним `img-caption`.

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGCAPTION');
```

Ваш `#img-caption` повинен бути нащадком `#img-div`.

```js
const el = document.querySelector('#img-div #img-caption');
assert.isNotNull(el);
```

Ваш `#img-caption` не повинен бути порожнім.

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

Ви повинні мати елемент з `id` рівним `tribute-info`.

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
```

Ваш `#tribute-info` не повинен бути порожнім.

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

Ви повинні мати елемент `a` з `id` рівним `tribute-link`.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'A');
```

Ваш `#tribute-link` повинен мати атрибут `href` зі значенням.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.isNotNull(el.href);
assert.isNotEmpty(el.href);
```

Ваш `#tribute-link` повинен мати атрибут `target`, встановлений у `_blank`.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.target, '_blank');
```

Ваш елемент `img` повинен мати `display` рівним `block`.

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('display');
assert.strictEqual(style, 'block');
```

Ваш `#image` повинен мати `max-width` рівним `100%`.

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('max-width');
assert.strictEqual(style, '100%');
```

Ваш `#image` повинен мати `height` рівним `auto`.

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

Ваш `#image` повинен бути центрований всередині свого батьківського елемента.

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
