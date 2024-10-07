---
id: 587d78b1367417b2b2512b0a
title: 高解像度ディスプレイのために Retina 画像を使用する
challengeType: 0
videoUrl: 'https://scrimba.com/p/pzrPu4/cVZ4Rfp'
forumTopicId: 301142
dashedName: use-a-retina-image-for-higher-resolution-displays
---

# --description--

With the increase of internet connected devices, their sizes and specifications vary, and the displays they use could be different externally and internally. Pixel density is an aspect that could be different on one device from others and this density is known as Pixel Per Inch(PPI) or Dots Per Inch(DPI). The most famous such display is the one known as a "Retina Display" on the latest Apple MacBook Pro notebooks, and recently iMac computers. Due to the difference in pixel density between a "Retina" and "Non-Retina" displays, some images that have not been made with a High-Resolution Display in mind could look "pixelated" when rendered on a High-Resolution display.

MacBook Pro の「Retina ディスプレイ」のような高解像度ディスプレイで画像を適切に表示する最も簡単な方法は、`width` と `height` の値を元のファイルの半分だけと定義することです。 以下に、元の画像の高さと幅の半分を設定する例を示します。

```html
<style>
  img { height: 250px; width: 250px; }
</style>
<img src="coolPic500x500" alt="A most excellent picture">
```

# --instructions--

`img` タグの `width` と `height` を元の値の半分に設定してください。 今回の場合、オリジナルの `height` とオリジナルの `width` は両方とも `200px` です。

# --hints--

`img` タグは `width` が 100 ピクセルである必要があります。

```js
assert(document.querySelector('img').width === 100);
```

`img` タグは `height` が 100 ピクセルである必要があります。

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
