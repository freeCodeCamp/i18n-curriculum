---
id: bad87fee1348bd9aedf08820
title: Перетворіть зображення на посилання
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cRdBnUr'
forumTopicId: 18327
dashedName: turn-an-image-into-a-link
---

# --description--

You can make elements into links by nesting them within an `a` element.

Вкладіть ваше зображення в `a` елемент. Ось приклад:

```html
<a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
```

Не забувайте використовувати `#` як властивість `href` вашого елемента `a`, щоб перетворити його на мертве посилання.

# --instructions--

Розмістіть наявний елемент зображення в `a` (*anchor*) елементі.

Після цього наведіть курсор на ваше зображення. Звичайний вказівник вашого курсора повинен стати вказівником натискання за посиланням. Тепер зображення стало посиланням.

# --hints--

Наявний `img` елемент повинен бути вкладеним в `a` елемент.

```js
const anchor = document.querySelectorAll('a')[1];
const children = anchor.querySelectorAll("img");
assert.notEmpty(children);
```

Елемент `a` має бути мертвим посиланням з атрибутом `href` зі значенням `#`.

```js
const anchor = document.querySelectorAll('a')[1];
const parentHREF = anchor.querySelector("img").parentNode.getAttribute('href');
assert.match(parentHREF,new RegExp('#'));
```

Кожен елемент `a` повинен мати кінцевий тег.

```js
assert.match(code,/<\/a>/g);
assert.match(code,/<a/g);
assert.strictEqual(code.match(/<\/a>/g).length, code.match(/<a/g).length)
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">

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

  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```
