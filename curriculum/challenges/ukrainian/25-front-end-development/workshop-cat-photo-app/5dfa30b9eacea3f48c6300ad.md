---
id: 5dfa30b9eacea3f48c6300ad
title: Крок 17
challengeType: 0
dashedName: step-17
---

# --description--

У попередніх кроках ви використовували елемент-посилання, щоб перетворити текст на посилання. Інші типи вмісту також можна перетворити на посилання, оточивши їх тегами посилання.

Ось приклад перетворення зображення на посилання:

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

Перетворіть зображення на посилання, оточивши його необхідними тегами. Використайте `https://freecatphotoapp.com` як значення атрибута `href` елемента посилання.

# --hints--

Ви повинні мати елемент `img` з атрибутом `src` зі значенням `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`. Можливо, ви випадково видалили його.

```js
assert.equal(
  document.querySelector('img')?.getAttribute('src'),
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

Елемент посилання (`a`) повинен мати початковий тег. Початкові теги мають такий синтаксис: `<elementName>`.

```js
assert.isAtLeast(document.querySelectorAll('a').length, 3);
```

У вас відсутній кінцевий тег (`a`) після зображення.

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

Елемент посилання (`a`) повинен мати кінцевий тег. Кінцеві теги мають `/` одразу після символу `<`.

```js
assert.isAtLeast(code.match(/<\/a>/g)?.length, 3);
```

Додайте лише один кінцевий тег посилання (`a`). Будь ласка, видаліть все зайве.

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

Елемент посилання (`a`) не має атрибута `href`. Перевірте, чи є пробіл після назви початкового тега та/або є пробіли перед усіма назвами атрибутів.

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

Елемент посилання (`a`) має направляти на `https://freecatphotoapp.com`. Ви або не написали посилання, або маєте друкарську помилку.

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

Елемент `img` має бути вкладеним в межах елемента посилання (`a`). Весь елемент `img` має бути в межах початкового та кінцевого тегів елемента посилання (`a`).

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
