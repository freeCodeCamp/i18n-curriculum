---
id: 587d7789367417b2b2512aa4
title: Як покращити доступність аудіоконтенту за допомогою елементу audio
challengeType: 0
videoUrl: 'https://scrimba.com/c/cVJVkcZ'
forumTopicId: 301014
dashedName: improve-accessibility-of-audio-content-with-the-audio-element
---

# --description--

HTML5's `audio` element gives semantic meaning when it wraps sound or audio stream content in your markup. Audio content also needs a text alternative to be accessible to people who are deaf or hard of hearing. This can be done with nearby text on the page or a link to a transcript.

Теґ `audio` підтримує атрибут `controls`. Він відображає елементи браузера за замовчуванням: відтворення, паузу та інші; а також підтримує функціональність клавіатури. Це логічний (булевий) атрибут, тобто такий, що не потребує значення, його присутність на тезі вмикає налаштування.

Ось приклад:

```html
<audio id="meowClip" controls>
  <source src="audio/meow.mp3" type="audio/mpeg">
  <source src="audio/meow.ogg" type="audio/ogg">
</audio>
```

**Примітка:** Мультимедійний контент зазвичай має як візуальні, так і аудіальні компоненти. Він потребує синхронізованих субтитрів і розшифровки, щоб користувачі з вадами зору та/або слуху мали до нього доступ. Загалом, веб-розробник не є відповідальним за створення субтитрів чи розшифровки, але повинен вміти їх додавати.

# --instructions--

Давайте відпочинемо від Camper Cat та зустрінемося з його приятелем Зерсіаксом (@zersiax), чемпіоном з доступності та користувачем програми для читання з екрану. Щоб почути запис роботи читача екрана, додайте елемент `audio` після елемента `p`. Додайте атрибут `controls`. Потім розмістіть елемент `source` всередині тегів `audio` з атрибутом `src` зі значенням `https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3` та атрибутом `type` зі значенням `"audio/mpeg"`.

**Примітка:** Запис може здатися занадто швидким і малозрозумілим, але це звичайна швидкість для користувачів зчитувачів з екрану.

# --hints--

Ваш код повинен містити один теґ `audio`.

```js
assert.lengthOf(document.querySelectorAll('audio'),1);
```

Елемент `audio` повинен мати кінцевий тег.

```js
assert.match(code,/<audio.*>[\s\S]*<\/audio>/g);
assert.lengthOf(code.match(/<\/audio>/g),1);
```

Теґ `audio` повинен містити атрибут `controls`.

```js
assert.exists(document.querySelector('audio')?.getAttribute('controls'));
```

Ваш код повинен містити один теґ `source`.

```js
assert.lengthOf(document.querySelectorAll('source'), 1);
```

Теґ `source` повинен знаходитися всередині теґів `audio`.

```js
const audio = document.querySelector('audio');
const children = audio.querySelectorAll(`:scope ${'source'}`);
assert.lengthOf(children,1);
```

Значення атрибута `src` на тезі `source` має повністю збігатися з посиланням в поясненнях.

```js
assert.equal(
  document.querySelector('source')?.getAttribute('src'),
  'https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3'
);
```

Ваш код повинен містити атрибут `type` на тезі `source` зі значенням audio/mpeg.

```js
assert.equal(document.querySelector('source')?.getAttribute('type'), 'audio/mpeg');
```

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Real Coding Ninjas</h1>
  </header>
  <main>
    <p>A sound clip of Zersiax's screen reader in action.</p>



  </main>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Real Coding Ninjas</h1>
  </header>
  <main>
    <p>A sound clip of Zersiax's screen reader in action.</p>
    <audio controls>
      <source src="https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3" type="audio/mpeg"/>
    </audio>
  </main>
</body>
```
