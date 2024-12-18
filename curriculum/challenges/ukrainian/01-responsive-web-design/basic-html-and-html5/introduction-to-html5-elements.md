---
id: bad87fee1348bd9aecf08801
title: Ознайомлення з елементами HTML5
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cBkZGpt7'
forumTopicId: 301097
dashedName: introduction-to-html5-elements
---

# --description--

HTML5 introduces more descriptive HTML tags. These include `main`, `header`, `footer`, `nav`, `video`, `article`, `section` and others.

Ці теги надають вашому HTML описову структуру, полегшують прочитання вашого HTML, а також допомагають з оптимізацією пошукової системи (SEO) та доступністю. Тег HTML5 `main` допомагає пошуковим системам та іншим розробникам знайти основний зміст вашої сторінки.

Нижче наведено приклад використання елемента `main` з вкладеними у нього двома дочірніми елементами:

```html
<main> 
  <h1>Hello World</h1>
  <p>Hello Paragraph</p>
</main>
```

**Примітка:** Багато нових тегів HTML5 та їхні переваги описані в розділі "Прикладна доступність".

# --instructions--

Створіть другий елемент `p` з поданим текстом-прикладом: `Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.`

Тоді створіть `main` елемент і помістіть лише два `p` елементи у `main` елемент.

# --hints--

Ви повинні мати 2 елементи `p` з поданим текстом-прикладом.

```js
assert.lengthOf(document.querySelectorAll('p'),2);
```

Кожен елемент `p` повинен мати кінцевий тег.

```js
assert.match(code,/<\/p>/g);
assert.strictEqual(code.match(/<\/p>/g).length,code.match(/<p/g).length);
```

Ваш `p` елемент повинен містити перші декілька слів з додаткового тексту-прикладу `kitty ipsum`.

```js
assert.match(document.querySelectorAll('p')[1].textContent,/Purr\s+jump\s+eat/gi);
```

Ваш код повинен містити один `main` елемент.

```js
assert.lengthOf(document.querySelectorAll('main'),1);
```

Елемент `main` повинен містити два елементи абзацу в якості дочірніх.

```js
const main = document.querySelector('main');
const children = main.querySelectorAll("p"); 
assert.lengthOf(children,2);
```

Тег `main` повинен знаходитися перед тегом першого абзацу.

```js
assert.match(code,(/<main>\s*?<p>/g));
```

Тег `main` закриття повинен знаходитися після другого тегу, який закриває абзац.

```js
assert.match(code,(/<\/p>\s*?<\/main>/g));
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>

<p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```
