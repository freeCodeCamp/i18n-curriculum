---
id: 587d774c367417b2b2512a9c
title: 为视觉障碍用户添加替代图像的文本
challengeType: 0
videoUrl: 'https://scrimba.com/c/cPp7VfD'
forumTopicId: 16628
dashedName: add-a-text-alternative-to-images-for-visually-impaired-accessibility
---

# --description--

You've likely seen an `alt` attribute on an `img` tag in other challenges. `alt` text describes the image's content and provides a text-alternative for it. An `alt` attribute helps in cases where the image fails to load or can't be seen by a user. Search engines also use it to understand what an image contains to include it in search results. 如下所示：

```html
<img src="importantLogo.jpeg" alt="Company logo">
```

视觉障碍用户无法通过视觉获取信息，而是通过屏幕阅读器将网页内容转换为音频以获取信息。 他们无法通过直观的呈现理解信息。 屏幕阅读器可以识别 `alt` 属性，朗读其中的内容，来告知用户图片包含的关键信息。

`alt` 文本可以为屏幕阅读器提供图片的描述信息， 所以你应始终为图片添加 `alt` 属性。 另外，根据最新的 HTML5 标准，为图片添加这个属性是必须的。

# --instructions--

碰巧，Camper Cat 是忍者中写代码最厉害的，他正在建立一个可以分享忍者知识的网站。 他打算使用的个人资料图片可以展示他的技能，且应得到所有网站访问者的赞赏。 请给 `img` 标签添加一个 `alt` 属性，说明 Camper Cat 正在学习空手道 （图片的 `src` 属性指向的是一个不存在的文件，因此你会看到 `alt` 属性中的文本出现在页面上）

# --hints--

`img` 标签应该包含一个非空的 `alt` 属性。

```js
assert.isNotEmpty(document.querySelector('img')?.getAttribute('alt'));
```

# --seed--

## --seed-contents--

```html
<img src="doingKarateWow.jpeg">
```

# --solutions--

```html
<img src="doingKarateWow.jpeg" alt="Someone doing karate">
```
