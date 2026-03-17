---
id: 5dfa30b9eacea3f48c6300ad
title: Крок 17
challengeType: 0
dashedName: step-17
---

# --description--

У попередніх кроках ви використовували елемент посилання, щоб перетворити текст на посилання. Інші типи вмісту також можна перетворити на посилання, обгорнувши їх у теги посилання.

Ось приклад, як зробити зображення посиланням:

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

Перетворіть зображення на посилання, оточивши його необхідними тегами елемента. Використайте `https://freecatphotoapp.com` як значення атрибута `href` елемента посилання.

# --hints--

У вас має бути елемент `img` зі значенням `src` рівним `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`. Можливо, ви випадково його видалили.

```js
assert.equal(
  document.querySelector('img')?.getAttribute('src'),
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

Ваш елемент посилання (`a`) має мати початковий тег. Початкові теги мають такий синтаксис: `<elementName>`.

```js
assert.isAtLeast(document.querySelectorAll('a').length, 3);
```

Після зображення бракує кінцевого (`a`) тегу.

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

Ваш елемент посилання (`a`) має мати кінцевий тег. Кінцеві теги мають `/` одразу після символу `<`.

```js
assert.isAtLeast(code.match(/<\/a>/g)?.length, 3);
```

Ви повинні додати лише один кінцевий тег посилання (`a`). Будь ласка, видаліть зайві.

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

Ваш елемент посилання (`a`) не має атрибута `href`. Перевірте, чи є пробіл після назви початкового тегу і/або пробіли перед усіма назвами атрибутів.

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

Ваш елемент посилання (`a`) має направляти на `https://freecatphotoapp.com`. Ви або пропустили URL, або зробили помилку.

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

Ваш елемент `img` має бути вкладений у елемент посилання (`a`). Весь елемент `img` має бути всередині початкового і кінцевого тегів елемента посилання (`a`).

```js
assert.equal(document.querySelector('img')?.parentNode.nodeName, 'A');
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <h2>Cat Photos</h2>
      <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
      <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
--fcc-editable-region--
      <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
--fcc-editable-region--
    </main>
  </body>
</html>
```
