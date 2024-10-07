---
id: 587d78b1367417b2b2512b0a
title: Verwende ein Retina-Bild für Displays mit höherer Auflösung
challengeType: 0
videoUrl: 'https://scrimba.com/p/pzrPu4/cVZ4Rfp'
forumTopicId: 301142
dashedName: use-a-retina-image-for-higher-resolution-displays
---

# --description--

With the increase of internet connected devices, their sizes and specifications vary, and the displays they use could be different externally and internally. Pixel density is an aspect that could be different on one device from others and this density is known as Pixel Per Inch(PPI) or Dots Per Inch(DPI). The most famous such display is the one known as a "Retina Display" on the latest Apple MacBook Pro notebooks, and recently iMac computers. Due to the difference in pixel density between a "Retina" and "Non-Retina" displays, some images that have not been made with a High-Resolution Display in mind could look "pixelated" when rendered on a High-Resolution display.

Der einfachste Weg, damit deine Bilder auf hochauflösenden Bildschirmen wie dem "Retina-Display" des MacBook Pros richtig angezeigt werden, besteht darin, die Werte für `width` und `height` auf die Hälfte der Originaldatei zu beschränken. Hier ist ein Beispiel für ein Bild, das nur die Hälfte der ursprünglichen Höhe und Breite verwendet:

```html
<style>
  img { height: 250px; width: 250px; }
</style>
<img src="coolPic500x500" alt="A most excellent picture">
```

# --instructions--

Setze die `width` und `height` des `img`-Tags auf die Hälfte ihrer ursprünglichen Werte. In diesem Fall sind sowohl die ursprüngliche `height` als auch die ursprüngliche `width` gleich `200px`.

# --hints--

Dein `img`-Tag sollte eine `width` von 100 Pixeln besitzen.

```js
assert(document.querySelector('img').width === 100);
```

Dein `img`-Tag sollte eine `height` von 100 Pixeln besitzen.

```js
assert(document.querySelector('img').height === 100);
```

# --seed--

## --seed-contents--

```html
<style>

</style>

<img src="https://cdn.freecodecamp.org/curriculum/responsive-web-design-principles/FCCStickers-CamperBot200x200.jpg" alt="freeCodeCamp sticker that says 'Because CamperBot Cares'">
```

# --solutions--

```html
<style>
  img { 
    height: 100px; 
    width: 100px; 
  }
</style>

<img src="https://cdn.freecodecamp.org/curriculum/responsive-web-design-principles/FCCStickers-CamperBot200x200.jpg" alt="freeCodeCamp sticker that says 'Because CamperBot Cares'">
```
