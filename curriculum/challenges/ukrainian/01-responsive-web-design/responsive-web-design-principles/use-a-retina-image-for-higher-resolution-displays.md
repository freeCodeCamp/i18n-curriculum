---
id: 587d78b1367417b2b2512b0a
title: Використання зображень Retina для дисплеїв із високою роздільною здатністю
challengeType: 0
videoUrl: 'https://scrimba.com/p/pzrPu4/cVZ4Rfp'
forumTopicId: 301142
dashedName: use-a-retina-image-for-higher-resolution-displays
---

# --description--

With the increase of internet connected devices, their sizes and specifications vary, and the displays they use could be different externally and internally. Pixel density is an aspect that could be different on one device from others and this density is known as Pixel Per Inch(PPI) or Dots Per Inch(DPI). The most famous such display is the one known as a "Retina Display" on the latest Apple MacBook Pro notebooks, and recently iMac computers. Due to the difference in pixel density between a "Retina" and "Non-Retina" displays, some images that have not been made with a High-Resolution Display in mind could look "pixelated" when rendered on a High-Resolution display.

Найпростіший спосіб, щоб ваші зображення належним чином відображалися на дисплеях з високою роздільною здатністю, таких як "Retina display" MacBook Pro, - це визначити значення `width` та `height` як половину вихідного файлу. Ось приклад зображення, що використовує тільки половину початкової висоти і ширини:

```html
<style>
  img { height: 250px; width: 250px; }
</style>
<img src="coolPic500x500" alt="A most excellent picture">
```

# --instructions--

Встановіть `width` та `height` тегу `img` в половину їх початкових значень. В цьому випадку як вихідна `height`, так і `width` дорівнюватимуть `200px`.

# --hints--

Ваш тег `img` повинен містити `width` в 100 пікселів.

```js
assert(document.querySelector('img').width === 100);
```

Ваш тег `img` повинен містити `height` в 100 пікселів.

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
