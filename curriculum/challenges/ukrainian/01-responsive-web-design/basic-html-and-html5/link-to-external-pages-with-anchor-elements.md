---
id: bad87fee1348bd9aedf08816
title: Покликання (посилання) на зовнішні сторінки з якірними елементами
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/c8EkncB'
forumTopicId: 18226
dashedName: link-to-external-pages-with-anchor-elements
---

# --description--

You can use `a` (*anchor*) elements to link to content outside of your web page.

Елементам `a` потрібна веб-адреса цільової сторінки, що називається атрибут `href`. Вони також потребують якірний текст. Ось приклад:

```html
<a href="https://www.freecodecamp.org">this links to freecodecamp.org</a>
```

Тоді ваш браузер відображатиме текст цих покликань `this links to freecodecamp.org`, на яке ви можете натиснути. Це покликання відправить вас на веб-адресу `https://www.freecodecamp.org`.

# --instructions--

Створіть елемент `a`, що покликається на `https://www.freecatphotoapp.com` та має "світлина кота" як якірний текст.

# --hints--

Ваш елемент `a` має містити якірний текст `cat photos`.

```js
assert.match(document.querySelector('a').textContent,/cat photos/gi);
```

Вам потрібен елемент `a`, що покликається на `https://www.freecatphotoapp.com`

```js
assert.match(document.querySelector('a').getAttribute('href'),/^https?:\/\/(www\.)?freecatphotoapp\.com\/?$/i);
```

Елемент `a` повинен мати кінцевий тег.

```js
assert.match(code,/<\/a>/g);
assert.strictEqual(code.match(/<\/a>/g).length,code.match(/<a/g).length);
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>
<main>



  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">

  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>

  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">

  <a href="https://www.freecatphotoapp.com">cat photos</a>
  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```
