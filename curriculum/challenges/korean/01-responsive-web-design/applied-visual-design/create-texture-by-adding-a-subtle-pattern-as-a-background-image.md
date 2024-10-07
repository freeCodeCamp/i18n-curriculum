---
id: 587d78a5367417b2b2512ad8
title: 작은 패턴을 배경 이미지로 추가하여 질감을 만들기
challengeType: 0
videoUrl: 'https://scrimba.com/c/cQdwJC8'
forumTopicId: 301052
dashedName: create-texture-by-adding-a-subtle-pattern-as-a-background-image
---

# --description--

One way to add texture and interest to a background and have it stand out more is to add a subtle pattern. The key is balance, as you don't want the background to stand out too much, and take away from the foreground. The `background` property supports the `url()` function in order to link to an image of the chosen texture or pattern. The link address is wrapped in quotes inside the parentheses.

# --instructions--

지정된 URL `https://cdn-media-1.freecodecamp.org/imgr/MJAkxbh.png`을 사용하여 페이지 전체의 `background`를 설정합니다. `body` 선택자를 사용하세요.

# --hints--

당신의 `body` 요소는 주어진 링크를 사용한 `url()`로 설정된 `background` 속성이 있어야 합니다.

```js
assert.match(code,/background(-image)?:\s*?url\(\s*("|'|)https:\/\/cdn-media-1\.freecodecamp\.org\/imgr\/MJAkxbh\.png\2\s*\)/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  body {

  }
</style>
```

# --solutions--

```html
<style>
  body {
    background: url("https://cdn-media-1.freecodecamp.org/imgr/MJAkxbh.png");
  }
</style>
```
