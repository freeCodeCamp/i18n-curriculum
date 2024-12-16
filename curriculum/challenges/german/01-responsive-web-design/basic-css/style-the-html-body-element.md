---
id: bad87fee1348bd9aedf08736
title: Style das HTML Body Element
challengeType: 0
videoUrl: 'https://scrimba.com/c/cB77PHW'
forumTopicId: 18313
dashedName: style-the-html-body-element
---

# --description--

Now let's start fresh and talk about CSS inheritance.

Jede HTML-Seite hat ein `body`-Element.

# --instructions--

Wir können beweisen, dass das `body`-Element hier existiert, indem wir ihm eine `background-color` von schwarz geben.

Wir können dies tun, indem wir das Folgende zu unserem `style`-Element hinzufügen:

```css
body {
  background-color: black;
}
```

# --hints--

Deine `body`-Elemente sollten die `background-color` Schwarz haben.

```js
const body = document.querySelector('body');
const backgroundColor = window.getComputedStyle(body)['background-color'];

assert.strictEqual(backgroundColor, 'rgb(0, 0, 0)');
```

Deine CSS-Regel sollte ordentlich formatiert sein, sowohl mit einer öffnenden als auch einer schließenden geschwungenen Klammer.

```js
assert.match(code, /<style>\s*body\s*\{\s*background.*\s*:\s*.*;\s*\}\s*<\/style>/i);
```

Your CSS rule should end with a semicolon.

```js
assert.match(code, /<style>\s*body\s*\{\s*background.*\s*:\s*.*;\s*\}\s*<\/style>/i);
```

# --seed--

## --seed-contents--

```html
<style>

</style>
```

# --solutions--

```html
<style>
body {
  background-color: black;
}
</style>
```
