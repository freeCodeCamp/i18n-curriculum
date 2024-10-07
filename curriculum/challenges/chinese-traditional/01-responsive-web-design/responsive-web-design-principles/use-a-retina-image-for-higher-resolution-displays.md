---
id: 587d78b1367417b2b2512b0a
title: 針對高分辨率屏幕應使用視網膜圖片
challengeType: 0
videoUrl: 'https://scrimba.com/p/pzrPu4/cVZ4Rfp'
forumTopicId: 301142
dashedName: use-a-retina-image-for-higher-resolution-displays
---

# --description--

With the increase of internet connected devices, their sizes and specifications vary, and the displays they use could be different externally and internally. Pixel density is an aspect that could be different on one device from others and this density is known as Pixel Per Inch(PPI) or Dots Per Inch(DPI). The most famous such display is the one known as a "Retina Display" on the latest Apple MacBook Pro notebooks, and recently iMac computers. Due to the difference in pixel density between a "Retina" and "Non-Retina" displays, some images that have not been made with a High-Resolution Display in mind could look "pixelated" when rendered on a High-Resolution display.

讓圖像正確出現在高分辨率顯示器（例如 MacBook Pros “Revistina display”）上的最簡單方式， 是定義它們的 `width` 和 `height` 值爲原始值的一半。 下面是一個僅使用原始高度和寬度一半的圖像示例：

```html
<style>
  img { height: 250px; width: 250px; }
</style>
<img src="coolPic500x500" alt="A most excellent picture">
```

# --instructions--

設置 `img` 標籤的 `width` 和 `height` 爲它們的原始值的一半。 在這個例子中，原始 `height` 和原始 `width` 的值都爲 `200px`。

# --hints--

`img` 標籤的 `width` 屬性值應爲 100px。

```js
assert(document.querySelector('img').width === 100);
```

`img` 標籤的 `height` 屬性值應爲 100px。

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
