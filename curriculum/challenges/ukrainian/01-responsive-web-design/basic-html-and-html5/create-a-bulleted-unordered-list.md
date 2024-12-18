---
id: bad87fee1348bd9aedf08827
title: Створюємо невпорядкований маркований список
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cDKVPuv'
forumTopicId: 16814
dashedName: create-a-bulleted-unordered-list
---

# --description--

HTML has a special element for creating <dfn>unordered lists</dfn>, or bullet point style lists.

Невпорядковані списки починаються з відкриття елементу `<ul>`, після якого слідує будь-яка кількість елементів `<li>`. Невпорядковані списки закриваються `</ul>`.

Наприклад:

```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

створить список точних значень `milk` та `cheese`.

# --instructions--

Видаліть останні два елементи `p` та створіть у нижній частині сторінки невпорядкований список трьох речей, які люблять коти.

# --hints--

Створіть елемент `ul`.

```js
assert.isNotEmpty(document.querySelectorAll('ul'));
```

У вас має бути три елементи `li` всередині вашого елементу `ul`.

```js
assert.lengthOf(document.querySelectorAll('ul li'),3);
```

Елемент `ul` повинен мати кінцевий тег.

```js
assert.match(code,/<\/ul>/gi);
assert.match(code,/<ul/gi);
assert.strictEqual(code.match(/<\/ul>/gi).length,code.match(/<ul/gi).length);
```

Елементи `li` повинні мати кінцеві теги.

```js
assert.match(code,/<\/li>/gi);
assert.match(code,/<li[\s>]/gi);
assert.strictEqual(code.match(/<\/li>/gi).length,code.match(/<li[\s>]/gi).length);
```

Ваші елементи `li` не повинні містити порожній рядок чи навіть пробіли.

```js
assert.isEmpty([...document.querySelectorAll('ul li')].filter((item) => item.textContent.trim() === ""));
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <ul>
    <li>milk</li>
    <li>mice</li>
    <li>catnip</li>
  </ul>
</main>
```
