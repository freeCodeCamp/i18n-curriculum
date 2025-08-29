---
id: 587d78a5367417b2b2512ada
title: Verwende die transform-Eigenschaft mit scale, um ein Element bei einem Hover zu vergrößern
challengeType: 0
videoUrl: 'https://scrimba.com/c/cyLPJuM'
forumTopicId: 301077
dashedName: use-the-css-transform-scale-property-to-scale-an-element-on-hover
---

# --description--

The `transform` property has a variety of functions that let you scale, move, rotate, skew, etc., your elements. When used with pseudo-classes such as `:hover` that specify a certain state of an element, the `transform` property can easily add interactivity to your elements.

Hier ist ein Beispiel, um die Absatzelemente auf das 2,1-fache ihrer ursprünglichen Größe zu skalieren, wenn ein Benutzer über sie fährt:

```css
p:hover {
  transform: scale(2.1);
}
```

**Hinweis:** Das Anwenden einer Transformation auf ein `div`-Element wirkt sich auch auf alle seine Unterelemente aus.

# --instructions--

Füge eine CSS-Regel für den `hover`-Status des `div` hinzu und verwende die Eigenschaft `transform`, um das `div`-Element auf das 1,1-fache seiner Ursprungsgröße zu skalieren, wenn ein Benutzer darüber fährt.

# --hints--

Die Größe des `div`-Elements sollte um das 1,1-fache skaliert werden, wenn ein Benutzer über das Element fährt.

```js
assert.match(code, /div:hover\s*?{\s*?transform:\s*?scale\(1\.1\);/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  div {
    width: 70%;
    height: 100px;
    margin:  50px auto;
    background: linear-gradient(
      53deg,
      #ccfffc,
      #ffcccf
    );
  }



</style>

<div></div>
```

# --solutions--

```html
<style>
  div {
    width: 70%;
    height: 100px;
    margin:  50px auto;
    background: linear-gradient(
      53deg,
      #ccfffc,
      #ffcccf
    );
  }
  div:hover {
    transform: scale(1.1);
  }
</style>
<div></div>
```
