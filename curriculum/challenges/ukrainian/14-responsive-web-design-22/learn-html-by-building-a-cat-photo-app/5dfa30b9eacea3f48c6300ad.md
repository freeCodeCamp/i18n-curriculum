---
id: 5dfa30b9eacea3f48c6300ad
title: Крок 17
challengeType: 0
dashedName: step-17
---

# --description--

У попередніх кроках ви використовували елемент посилання, щоб перетворити текст на посилання. Інші типи вмісту також можна перетворити на посилання, загорнувши їх в теги посилання.

Ось приклад перетворення зображення на посилання:

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

Перетворіть зображення на посилання, оточивши його необхідними тегами елементів. Використайте `https://freecatphotoapp.com` як значення атрибута `href` елемента посилання.

# --hints--

Ви повинні мати елемент `img` з `src` зі значенням `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`. Можливо, ви випадково видалили його.

```js
assert(
  document.querySelector('img') &&
    document.querySelector('img').getAttribute('src') ===
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

Елемент посилання (`a`) повинен мати початковий тег. Початкові теги мають такий синтаксис: `<elementName>`.

```js
assert(document.querySelectorAll('a').length >= 2);
```

У вас відсутній кінцевий тег (`a`) після зображення.

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

Елемент посилання (`a`) повинен мати кінцевий тег. Кінцеві теги мають `/` одразу після символу `<`.

```js
assert(code.match(/<\/a>/g).length >= 2);
```

Додайте лише один кінцевий тег посилання (`a`). Будь ласка, видаліть всі зайві.

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

Елемент посилання (`a`) не має атрибута `href`. Перевірте, чи є пробіл після назви початкового тега та/або є пробіли перед усіма назвами атрибутів.

```js
assert(document.querySelector('a').hasAttribute('href'));
```

Елемент посилання (`a`) повинен направляти на `https://freecatphotoapp.com`. Ви або не написали URL-адресу, або маєте друкарську помилку.

```js
assert(
  document.querySelectorAll('a')[1].getAttribute('href') ===
    'https://freecatphotoapp.com'
);
```

Your anchor (`a`) element does not have an `href` attribute. Check that there is a space after the opening tag's name and/or there are spaces before all attribute names.

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

Your anchor (`a`) element should link to `https://freecatphotoapp.com`. You have either omitted the URL or have a typo.

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

Елемент `img` повинен бути вкладеним в межах елемента посилання (`a`). Весь елемент `img` повинен бути всередині початкового та кінцевого тегів елемента посилання (`a`).

```js
assert(document.querySelector('img').parentNode.nodeName === 'A');
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

