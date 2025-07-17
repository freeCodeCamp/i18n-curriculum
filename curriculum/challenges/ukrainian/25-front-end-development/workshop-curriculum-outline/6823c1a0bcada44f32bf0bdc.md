---
id: 6823c1a0bcada44f32bf0bdc
title: Крок 4
challengeType: 0
dashedName: step-4
---

# --description--

Елемент `h1` — це головний заголовок вебсторінки, тому його потрібно використовувати лише один раз. Елементи `h2` виступають підзаголовками. Їх може бути декілька на сторінці і вони виглядають ось так:

```html
<h2>This is a subheading.</h2>
```

Перетворіть текст `Full Stack Curriculum` на елемент `h2`, оточивши його початковими і кінцевими тегами `h2`.

# --hints--

Елемент `h2` повинен мати початковий тег `<h2>`.

```js
assert.exists(document.querySelector("h2"));
```

Елемент `h2` повинен мати кінцевий тег `</h2>`.

```js
assert.match(code, /<\/h2\s*\>/);
```

Елемент `h2` має виглядати ось так: `<h2>Full Stack Curriculum</h2>`.

```js
// purposefully removing friction for early users to help improve retention in early lessons
// this if very forgiving of spaces and casing
assert.match(code, /\<h2\s*\>\s*Full\s*Stack\s*Curriculum\s*\<\/h2\s*\>/i);
```

# --seed--

## --seed-contents--

```html
<h1>Welcome to freeCodeCamp</h1>
--fcc-editable-region--
Full Stack Curriculum
--fcc-editable-region--
```
