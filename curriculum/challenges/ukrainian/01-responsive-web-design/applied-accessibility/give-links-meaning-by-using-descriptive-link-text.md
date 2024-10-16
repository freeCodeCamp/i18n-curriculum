---
id: 587d778f367417b2b2512aae
title: Надайте значення посиланням, використовуючи текстовий опис
challengeType: 0
videoUrl: 'https://scrimba.com/c/c437DcV'
forumTopicId: 301013
dashedName: give-links-meaning-by-using-descriptive-link-text
---

# --description--

Screen reader users have various options for what type of content their device reads. These options include skipping to (or over) landmark elements, jumping to the main content, or getting a page summary from the headings. Another option is to only hear the links available on a page.

Зчитувачі з екрану, читають текст посилання або ж те, що знаходиться між теґами прив'язки (`a`). Список посилань на зразок "натисніть тут" або "читати більше" не допоможе у такому випадку. Замість цього використовуйте короткий, але змістовний, текст у межах теґів `a`, щоб користувачі змогли зрозуміти призначення лінку.

# --instructions--

Текст посилання, який використовує Кіт Кампер, не дуже змістовний поза контекстом. Перемістіть теґи прив'язки (`a`) так, щоб вони огортали текст `information about batteries` замість `Click here`.

# --hints--

Ваш код має перемістити теґи прив'язки `a` навколо слів `Click here` так, щоб огорнути слова `information about batteries`.

```js
assert.match(document.querySelector('a')?.textContent, /^(information about batteries)$/g);
```

Елемент `a` повинен мати атрибут `href` зі значенням порожнього рядка `""`.

```js
assert.isEmpty(document.querySelector('a')?.getAttribute('href'));
```

Елемент `a` повинен мати кінцевий тег.

```js
assert.isTrue(code.match(/<\/a>/g)?.length === code.match(/<a href=(''|"")>/g)?.length);
```

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>Defeating your Foe: the Red Dot is Ours!</h2>
    <p>Felines the world over have been waging war on the most persistent of foes. This red nemesis combines both cunning stealth and lightning speed. But chin up, fellow fighters, our time for victory may soon be near. <a href="">Click here</a> for information about batteries</p>
  </article>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>Defeating your Foe: the Red Dot is Ours!</h2>
    <p>Felines the world over have been waging war on the most persistent of foes. This red nemesis combines both cunning stealth and lightning speed. But chin up, fellow fighters, our time for victory may soon be near. Click here for <a href="">information about batteries</a></p>
  </article>
</body>
```
