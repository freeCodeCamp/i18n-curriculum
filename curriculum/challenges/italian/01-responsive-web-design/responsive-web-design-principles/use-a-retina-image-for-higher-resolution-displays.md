---
id: 587d78b1367417b2b2512b0a
title: Usare un'immagine retina per display con risoluzione superiore
challengeType: 0
videoUrl: 'https://scrimba.com/p/pzrPu4/cVZ4Rfp'
forumTopicId: 301142
dashedName: use-a-retina-image-for-higher-resolution-displays
---

# --description--

With the increase of internet connected devices, their sizes and specifications vary, and the displays they use could be different externally and internally. Pixel density is an aspect that could be different on one device from others and this density is known as Pixel Per Inch(PPI) or Dots Per Inch(DPI). The most famous such display is the one known as a "Retina Display" on the latest Apple MacBook Pro notebooks, and recently iMac computers. Due to the difference in pixel density between a "Retina" and "Non-Retina" displays, some images that have not been made with a High-Resolution Display in mind could look "pixelated" when rendered on a High-Resolution display.

Il modo più semplice per far apparire correttamente le immagini sui display ad alta risoluzione, come il "retina display" dei MacBook Pro è quello di definire i loro valori di `width` e `height` come la metà della dimensione del file originale. Ecco un esempio di un'immagine che usa solo la metà dell'altezza e della larghezza originali:

```html
<style>
  img {
    height: 250px;
    width: 250px;
  }
</style>
<img src="coolPic500x500" alt="A most excellent picture" />
```

# --instructions--

Imposta `width` e `height` del tag `img` a metà dei loro valori originali. In questo caso, sia l'`height` che la `width` originali sono `200px`.

# --hints--

Il tuo tag `img` dovrebbe avere una `width` di 100 pixel.

```js
assert.strictEqual(document.querySelector('img').width, 100);
```

Il tuo tag `img` dovrebbe avere una `height` di 100 pixel.

```js
assert.strictEqual(document.querySelector('img').height, 100);
```

# --seed--

## --seed-contents--

```html
<style></style>

<img
  src="https://cdn.freecodecamp.org/curriculum/responsive-web-design-principles/FCCStickers-CamperBot200x200.jpg"
  alt="freeCodeCamp sticker that says 'Because CamperBot Cares'"
/>
```

# --solutions--

```html
<style>
  img {
    height: 100px;
    width: 100px;
  }
</style>

<img
  src="https://cdn.freecodecamp.org/curriculum/responsive-web-design-principles/FCCStickers-CamperBot200x200.jpg"
  alt="freeCodeCamp sticker that says 'Because CamperBot Cares'"
/>
```
