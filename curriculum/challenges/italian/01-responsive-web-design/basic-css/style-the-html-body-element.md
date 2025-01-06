---
id: bad87fee1348bd9aedf08736
title: Stilizzare l'elemento Body
challengeType: 0
videoUrl: 'https://scrimba.com/c/cB77PHW'
forumTopicId: 18313
dashedName: style-the-html-body-element
---

# --description--

Now let's start fresh and talk about CSS inheritance.

Ogni pagina HTML ha un elemento `body`.

# --instructions--

Possiamo dimostrare che l'elemento `body` esiste dandogli un `background-color` nero.

Possiamo farlo aggiungendo quanto segue al nostro elemento `style`:

```css
body {
  background-color: black;
}
```

# --hints--

Il tuo elemento `body` dovrebbe avere il `background-color` nero.

```js
const body = document.querySelector('body');
const backgroundColor = window.getComputedStyle(body)['background-color'];

assert.strictEqual(backgroundColor, 'rgb(0, 0, 0)');
```

La regola CSS dovrebbe essere formattata correttamente con entrambe le parentesi graffe di apertura e chiusura.

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
