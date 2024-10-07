---
id: 587d78b1367417b2b2512b0a
title: 고해상도 디스플레이를 위한 레티나 이미지 사용하기
challengeType: 0
videoUrl: 'https://scrimba.com/p/pzrPu4/cVZ4Rfp'
forumTopicId: 301142
dashedName: use-a-retina-image-for-higher-resolution-displays
---

# --description--

With the increase of internet connected devices, their sizes and specifications vary, and the displays they use could be different externally and internally. Pixel density is an aspect that could be different on one device from others and this density is known as Pixel Per Inch(PPI) or Dots Per Inch(DPI). The most famous such display is the one known as a "Retina Display" on the latest Apple MacBook Pro notebooks, and recently iMac computers. Due to the difference in pixel density between a "Retina" and "Non-Retina" displays, some images that have not been made with a High-Resolution Display in mind could look "pixelated" when rendered on a High-Resolution display.

맥북 프로 "레티나 디스플레이"같이 고해상도 디스플레이에서 이미지를 잘 보이도록 만드는 가장 간단한 방법은 이미지의 `width`와 `height` 를 원래 파일의 반절로 정의하는 것입니다. 여기 본래의 높이와 너비의 반절을 사용하는 이미지 예시가 있습니다.

```html
<style>
  img { height: 250px; width: 250px; }
</style>
<img src="coolPic500x500" alt="A most excellent picture">
```

# --instructions--

`img` 태그의 `width`와 `height`를 원래 값의 반절로 설정하세요. 이 경우에 원래 `height`와 `width`는 `200px`입니다.

# --hints--

`img` 태그는 100px의 `width`를 가져야 합니다.

```js
assert(document.querySelector('img').width === 100);
```

`img` 태그는 100px의 `height`를 가져야 합니다.

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
