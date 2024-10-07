---
id: 587d774c367417b2b2512a9c
title: 爲視覺障礙用戶添加替代圖像的文本
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

視覺障礙用戶無法通過視覺獲取信息，而是通過屏幕閱讀器將網頁內容轉換爲音頻以獲取信息。 他們無法通過直觀的呈現理解信息。 屏幕閱讀器可以識別 `alt` 屬性，朗讀其中的內容，來告知用戶圖片包含的關鍵信息。

`alt` 文本可以爲屏幕閱讀器提供圖片的描述信息， 所以你應始終爲圖片添加 `alt` 屬性。 另外，根據最新的 HTML5 標準，爲圖片添加這個屬性是必須的。

# --instructions--

碰巧，Camper Cat 是忍者中寫代碼最厲害的，他正在建立一個可以分享忍者知識的網站。 他打算使用的個人資料圖片可以展示他的技能，且應得到所有網站訪問者的讚賞。 請給 `img` 標籤添加一個 `alt` 屬性，說明 Camper Cat 正在學習空手道 （圖片的 `src` 屬性指向的是一個不存在的文件，因此你會看到 `alt` 屬性中的文本出現在頁面上）

# --hints--

`img` 標籤應該包含一個非空的 `alt` 屬性。

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
