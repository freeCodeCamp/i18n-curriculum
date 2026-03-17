---
id: 6823c1a0bcada44f32bf0bdc
title: Крок 4
challengeType: 0
dashedName: step-4
---

# --description--

Елемент `h1` є головним заголовком сторінки, і на одній сторінці слід використовувати лише один такий. Елементи `h2` представляють підзаголовки. Їх може бути кілька на сторінці, і вони виглядають так:

```html
<h2>This is a subheading.</h2>
```

Перетворіть текст `Full-Stack Curriculum` на елемент `h2`, оточивши його відкриваючим і закриваючим тегами `h2`.

# --hints--

Ваш елемент `h2` повинен мати відкриваючий тег `<h2>`.

```js
assert.exists(document.querySelector("h2"));
```

Ваш елемент `h2` повинен мати закриваючий тег `</h2>`.

```js
assert.match(code, /<\/h2\s*\>/);
```

Ваш елемент `h2` має виглядати так: `<h2>Full-Stack Curriculum</h2>`.

```js
// purposefully removing friction for early users to help improve retention in early lessons
// this if very forgiving of spaces and casing
assert.match(code, /\<h2\s*\>\s*Full-Stack\s*Curriculum\s*\<\/h2\s*\>/i);
```

# --seed--

## --seed-contents--

```html
<h1>Welcome to freeCodeCamp</h1>
--fcc-editable-region--
Full-Stack Curriculum
--fcc-editable-region--
```
