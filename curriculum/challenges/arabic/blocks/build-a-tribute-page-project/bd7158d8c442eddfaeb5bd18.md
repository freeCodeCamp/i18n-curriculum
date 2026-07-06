---
id: bd7158d8c442eddfaeb5bd18
title: بناء صفحة تكريم
challengeType: 14
saveSubmissionToDB: true
forumTopicId: 301147
dashedName: build-a-tribute-page
---

# --description--

**الهدف:** بناء تطبيق يشبه وظيفيًا <a href="https://tribute-page.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://tribute-page.freecodecamp.rocks</a>. **لا تنسخ هذا المشروع التجريبي**.

**قصص المستخدم:**

1. يجب أن تحتوي صفحة التكريم على عنصر `main` مع خاصية `id` تساوي `main`، ويحتوي هذا العنصر على جميع العناصر الأخرى
1. يجب أن ترى عنصرًا يحمل خاصية `id` تساوي `title`، ويحتوي على سلسلة نصية تصف موضوع صفحة التكريم (مثل "د. نورمان بورلوج")
1. يجب أن ترى عنصر `figure` أو `div` يحمل خاصية `id` تساوي `img-div`
1. داخل عنصر `#img-div`، يجب أن ترى عنصر `img` مع خاصية `id="image"`
1. داخل عنصر `#img-div`، يجب أن ترى عنصرًا يحمل خاصية `id="img-caption"` يحتوي على نص يصف الصورة المعروضة في `#img-div`
1. يجب أن ترى عنصرًا يحمل خاصية `id="tribute-info"`، ويحتوي على نص يصف موضوع صفحة التكريم
1. يجب أن ترى عنصر `a` يحمل خاصية `id="tribute-link"`، يربط بموقع خارجي ويحتوي على معلومات إضافية عن موضوع صفحة التكريم. تلميح: يجب أن تعطي العنصر الخاصية `target` وتضبطها على `_blank` حتى يفتح الرابط في تبويب جديد
1. يجب أن يستخدم عنصر `#image` خاصيتي `max-width` و`height` ليتم تغيير حجمه بشكل متجاوب حسب عرض العنصر الأب، دون أن يتجاوز حجمه الأصلي
1. يجب أن يكون عنصر `img` في وسط العنصر الأب

نفذ قصص المستخدم واجتز جميع الاختبارات أدناه لإكمال هذا المشروع. أضف لمستك الشخصية. برمجة سعيدة!

**ملاحظة:** تأكد من إضافة `<link rel="stylesheet" href="styles.css">` في ملف HTML لربط ورقة الأنماط وتطبيق CSS الخاص بك

# --hints--

يجب أن يكون لديك عنصر `main` مع `id` هو `main`.

```js
const el = document.getElementById('main');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'MAIN');
```

يجب أن تكون عناصر `#img-div` و`#image` و`#img-caption` و`#tribute-info` و`#tribute-link` جميعها عناصر تابعة لـ `#main`.

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

يجب أن يكون لديك عنصر مع `id` هو `title`.

```js
const el = document.getElementById('title');
assert.isNotNull(el);
```

يجب ألا يكون `#title` فارغًا.

```js
const el = document.getElementById('title');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText.trim());
```

يجب أن يكون لديك عنصر `figure` أو `div` مع `id` هو `img-div`.

```js
const el = document.getElementById('img-div');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGURE');
```

يجب أن يكون لديك عنصر `img` مع `id` هو `image`.

```js
const el = document.getElementById('image');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'IMG');
```

يجب أن يكون `#image` عنصرًا تابعًا لـ `#img-div`.

```js
const el = document.querySelector('#img-div #image');
assert.isNotNull(el);
```

يجب أن يكون لديك عنصر `figcaption` أو `div` مع `id` هو `img-caption`.

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGCAPTION');
```

يجب أن يكون `#img-caption` عنصرًا تابعًا لـ `#img-div`.

```js
const el = document.querySelector('#img-div #img-caption');
assert.isNotNull(el);
```

يجب ألا يكون `#img-caption` فارغًا.

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

يجب أن يكون لديك عنصر مع `id` هو `tribute-info`.

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
```

يجب ألا يكون `#tribute-info` فارغًا.

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

يجب أن يكون لديك عنصر `a` مع `id` هو `tribute-link`.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'A');
```

يجب أن يحتوي `#tribute-link` على خاصية `href` وقيمة.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.isNotNull(el.href);
assert.isNotEmpty(el.href);
```

يجب أن يحتوي `#tribute-link` على خاصية `target` مضبوطة على `_blank`.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.target, '_blank');
```

يجب أن يكون لعنصر `img` خاصية `display` بقيمة `block`.

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('display');
assert.strictEqual(style, 'block');
```

يجب أن يكون لـ `#image` خاصية `max-width` بقيمة `100%`.

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('max-width');
assert.strictEqual(style, '100%');
```

يجب أن يكون لـ `#image` خاصية `height` بقيمة `auto`.

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

يجب أن يكون `#image` مركزًا داخل العنصر الأب.

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
