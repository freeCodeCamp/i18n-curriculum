---
id: 587d78b1367417b2b2512b0c
title: Typografie responsiv gestalten
challengeType: 0
videoUrl: 'https://scrimba.com/p/pzrPu4/crzN7T8'
forumTopicId: 301141
dashedName: make-typography-responsive
---

# --description--

Instead of using `em` or `px` to size text, you can use viewport units for responsive typography. Viewport units, like percentages, are relative units, but they are based off different items. Viewport units are relative to the viewport dimensions (width or height) of a device, and percentages are relative to the size of the parent container element.

Die vier verschiedenen Viewport-Einheiten sind:

<ul><li><code>vw</code> (viewport width): <code>10vw</code> would be 10% of the viewport's width.</li><li><code>vh</code> (Viewport-Höhe): <code>3vh</code> wäre 3% der Höhe des Viewports.</li><li><code>vmin</code> (Viewport minimum): <code>70vmin</code> wäre 70% der kleineren Größe des Viewports (Höhe oder Breite).</li><li><code>vmax</code> (Viewport maximal): <code>100vmax</code> wäre 100% der größeren Größe des Viewports (Höhe oder Breite).</li></ul>

Hier ist ein Beispiel, das ein `body` Tag auf 30% der Breite des Viewports setzt.

```css
body {
  width: 30vw;
}
```

# --instructions--

Setze die `width` des `h2`-Tags auf 80% der Breite des Viewports und die `width` des Absatzes auf 75% der kleineren Dimension des Viewports.

# --hints--

Dein `h2`-Tag sollte eine `width` von 80vw besitzen.

```js
assert.match(
  __helpers.removeCssComments(code),
  /h2\s*?{\s*?width:\s*?80vw;\s*?}/g
);
```

Dein `p`-Tag sollte eine `width` von 75vmin besitzen.

```js
assert.match(
  __helpers.removeCssComments(code),
  /p\s*?{\s*?width:\s*?75vmin;\s*?}/g
);
```

# --seed--

## --seed-contents--

```html
<style>

</style>

<h2>Importantus Ipsum</h2>
<p>
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis tempus
  massa. Aenean erat nisl, gravida vel vestibulum cursus, interdum sit amet
  lectus. Sed sit amet quam nibh. Suspendisse quis tincidunt nulla. In hac
  habitasse platea dictumst. Ut sit amet pretium nisl. Vivamus vel mi sem.
  Aenean sit amet consectetur sem. Suspendisse pretium, purus et gravida
  consequat, nunc ligula ultricies diam, at aliquet velit libero a dui.
</p>
```

# --solutions--

```html
<style>
  h2 {
    width: 80vw;
  }
  p {
    width: 75vmin;
  }
</style>

<h2>Importantus Ipsum</h2>
<p>
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis tempus
  massa. Aenean erat nisl, gravida vel vestibulum cursus, interdum sit amet
  lectus. Sed sit amet quam nibh. Suspendisse quis tincidunt nulla. In hac
  habitasse platea dictumst. Ut sit amet pretium nisl. Vivamus vel mi sem.
  Aenean sit amet consectetur sem. Suspendisse pretium, purus et gravida
  consequat, nunc ligula ultricies diam, at aliquet velit libero a dui.
</p>
```
