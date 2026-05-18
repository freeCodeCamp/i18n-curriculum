---
id: 6823c1a0bcada44f32bf0bdc
title: Schritt 4
challengeType: 0
dashedName: step-4
---

# --description--

Ein `h1`-Element ist die Hauptüberschrift einer Webseite, und Sie sollten pro Seite nur eine verwenden. `h2`-Elemente stellen Unterüberschriften dar. Sie können mehrere pro Seite haben, und sie sehen so aus:

```html
<h2>This is a subheading.</h2>
```

Verwandeln Sie den `Full-Stack Curriculum`-Text in ein `h2`-Element, indem Sie ihn mit öffnenden und schließenden `h2`-Tags umgeben.

# --hints--

Ihr `h2`-Element sollte ein öffnendes `<h2>`-Tag haben.

```js
assert.exists(document.querySelector("h2"));
```

Ihr `h2`-Element sollte ein schließendes `</h2>`-Tag haben.

```js
assert.match(code, /<\/h2\s*\>/);
```

Ihr `h2`-Element sollte so aussehen: `<h2>Full-Stack Curriculum</h2>`.

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
