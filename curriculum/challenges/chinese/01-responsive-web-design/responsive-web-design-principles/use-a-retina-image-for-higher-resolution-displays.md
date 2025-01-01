---
id: 587d78b1367417b2b2512b0a
title: 针对高分辨率屏幕应使用视网膜图片
challengeType: 0
videoUrl: 'https://scrimba.com/p/pzrPu4/cVZ4Rfp'
forumTopicId: 301142
dashedName: use-a-retina-image-for-higher-resolution-displays
---

# --description--

With the increase of internet connected devices, their sizes and specifications vary, and the displays they use could be different externally and internally. Pixel density is an aspect that could be different on one device from others and this density is known as Pixel Per Inch(PPI) or Dots Per Inch(DPI). The most famous such display is the one known as a "Retina Display" on the latest Apple MacBook Pro notebooks, and recently iMac computers. Due to the difference in pixel density between a "Retina" and "Non-Retina" displays, some images that have not been made with a High-Resolution Display in mind could look "pixelated" when rendered on a High-Resolution display.

让图像正确出现在高分辨率显示器（例如 MacBook Pros “Revistina display”）上的最简单方式， 是定义它们的 `width` 和 `height` 值为原始值的一半。 下面是一个仅使用原始高度和宽度一半的图像示例：

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

设置 `img` 标签的 `width` 和 `height` 为它们的原始值的一半。 在这个例子中，原始 `height` 和原始 `width` 的值都为 `200px`。

# --hints--

`img` 标签的 `width` 属性值应为 100px。

```js
assert.strictEqual(document.querySelector('img').width, 100);
```

`img` 标签的 `height` 属性值应为 100px。

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
