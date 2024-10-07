---
id: 587d781e367417b2b2512ac9
title: Die relative Position eines Elements ändern
challengeType: 0
videoUrl: 'https://scrimba.com/c/czVmMtZ'
forumTopicId: 301044
dashedName: change-an-elements-relative-position
---

# --description--

CSS treats each HTML element as its own box, which is usually referred to as the <dfn>CSS Box Model</dfn>. Block-level items automatically start on a new line (think headings, paragraphs, and divs) while inline items sit within surrounding content (like images or spans). The default layout of elements in this way is called the <dfn>normal flow</dfn> of a document, but CSS offers the position property to override it.

Wenn die Position eines Elements auf `relative` gesetzt ist, kannst du angeben, wie CSS es *relativ* zu seiner aktuellen Position im normalen Fluss der Seite verschieben soll. Das funktioniert gemeinsam mit den CSS-Offset-Eigenschaften `left` oder `right` bzw. `top` oder `bottom`. Diese geben an, um wie viele Pixel, Prozent oder Ems das Element von seiner normalen Position *versetzt* werden soll. Im folgenden Beispiel wird der Absatz um 10 Pixel vom unteren Rand entfernt:

```css
p {
  position: relative;
  bottom: 10px;
}
```

Wenn du die Position eines Elements auf relativ änderst, wird es nicht aus dem normalen Fluss entfernt und andere Elemente in der Umgebung verhalten sich weiterhin so, als befände sich dieses Element in seiner Standardposition.

**Hinweis:** Die Positionierung gibt dir eine Menge Flexibilität und Kontrolle über das visuelle Layout einer Seite. Es ist gut, sich daran zu erinnern, dass unabhängig von der Position der Elemente das zugrunde liegende HTML-Markup sinnvoll organisiert sein sollte, wenn es von oben nach unten gelesen wird. So können Benutzer mit Sehbehinderungen, die auf Hilfsmittel wie Screenreader angewiesen sind, auf deine Inhalte zugreifen.

# --instructions--

Ändere die `position` des `h2` auf `relative` und verwende einen CSS-Offset, um es um 15 Pixel von der Position `top` zu verschieben, an der es sich im normalen Fluss befindet. Beachte, dass es keine Auswirkungen auf die Positionen der umgebenden h1- und p-Elemente gibt.

# --hints--

Das `h2`-Element sollte eine `position`-Eigenschaft haben, die auf `relative` gesetzt ist.

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.position, 'relative');
```

Dein Code sollte einen CSS-Offset verwenden, um das `h2` 15px relativ von `top` zu positionieren, wo es normalerweise sitzt.

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.top, '15px');
```

# --seed--

## --seed-contents--

```html
<style>
  h2 {


  }
</style>
<body>
  <h1>On Being Well-Positioned</h1>
  <h2>Move me!</h2>
  <p>I still think the h2 is where it normally sits.</p>
</body>
```

# --solutions--

```html
<style>
  h2 {
    position: relative;
    top: 15px;
  }
</style>
<body>
  <h1>On Being Well-Positioned</h1>
  <h2>Move me!</h2>
  <p>I still think the h2 is where it normally sits.</p>
</body>
```
