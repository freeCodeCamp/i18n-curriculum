---
id: 587d78a5367417b2b2512ad8
title: Durch Hinzufügen eines subtilen Hintergrundmusters eine Textur erstellen
challengeType: 0
videoUrl: 'https://scrimba.com/c/cQdwJC8'
forumTopicId: 301052
dashedName: create-texture-by-adding-a-subtle-pattern-as-a-background-image
---

# --description--

One way to add texture and interest to a background and have it stand out more is to add a subtle pattern. The key is balance, as you don't want the background to stand out too much, and take away from the foreground. The `background` property supports the `url()` function in order to link to an image of the chosen texture or pattern. The link address is wrapped in quotes inside the parentheses.

# --instructions--

Lege unter Verwendung der URL `https://cdn-media-1.freecodecamp.org/imgr/MJAkxbh.png` den `background` der gesamten Seite mit dem `body`-Selektor fest.

# --hints--

Dein `body`-Element sollte eine `background`-Eigenschaft auf eine `url()` mit dem angegebenen Link setzen.

```js
assert.match(code,/background(-image)?:\s*?url\(\s*("|'|)https:\/\/cdn-media-1\.freecodecamp\.org\/imgr\/MJAkxbh\.png\2\s*\)/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  body {

  }
</style>
```

# --solutions--

```html
<style>
  body {
    background: url("https://cdn-media-1.freecodecamp.org/imgr/MJAkxbh.png");
  }
</style>
```
