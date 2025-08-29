---
id: 587d774d367417b2b2512a9e
title: 使用標題顯示內容的層次關係
challengeType: 0
videoUrl: 'https://scrimba.com/c/cqVEktm'
forumTopicId: 301026
dashedName: use-headings-to-show-hierarchical-relationships-of-content
---

# --description--

Headings (`h1` through `h6` elements) are workhorse tags that help provide structure and labeling to your content. Screen readers can be set to read only the headings on a page so the user gets a summary. This means it is important for the heading tags in your markup to have semantic meaning and relate to each other, not be picked merely for their size values.

*語義化*的意思是，標籤名能準確地表達它所含內容的信息類型。

如果你正在撰寫帶有導言、主體和結論的論文，在你的概要中把結論作爲主體的一部分是沒有意義的。 結論應該是單獨的一個部分。 類似地，頁面中的標題標籤也應該是有序的，並且能表明內容的層次關係。

在使用中，相同級別（或者更高級別）的標題標籤用於開啓新的章節，低一級別的標題標籤用於開啓上一級標題標籤的子小節。

例如，一個頁面帶有一個 `h2` 元素，後面跟着幾個用 `h4` 元素標記的小節，這會使屏幕閱讀器用戶感到困惑。 儘管在瀏覽器所顯示的頁面中，錯誤地使用這六個標題標籤依然可以讓它們在視覺效果上看起來很合理。 但此時，我們應該按照層級正確地使用標籤，然後用 CSS 來調整樣式。

最後一點，每個頁面應只有一個 `h1` 標籤，用來概括說明頁面的主題。 另外，這六個標題標籤可以讓搜索引擎獲取頁面的大綱。

# --instructions--

Camper Cat 希望他的網站有一個介紹如何成爲忍者的頁面。 幫助他修改好標題，以便他的標記使內容具有語義意義，並顯示其章節的父級與子級的關係。 你需要將所有的 `h5` 標題標籤調整爲恰當的級別，來說明它們是 `h2` 標題標籤的子級。 調整爲 `h3` 標籤即可。

# --hints--

你的代碼應該有 6 個 `h3` 元素。

```js
assert.lengthOf(document.querySelectorAll('h3') , 6);
```

確保 `h3` 有結束標籤

```js
assert.lengthOf((code.match(/\/h3/g) || []) ,6);
```

你的代碼不應包含任何 `h5` 元素。

```js
assert.isEmpty(document.querySelectorAll('h5'));
```

不應該存在 `h5` 的結束標籤。

```js
assert.notMatch(code, /\/h5/);
```

# --seed--

## --seed-contents--

```html
<h1>How to Become a Ninja</h1>
<main>
  <h2>Learn the Art of Moving Stealthily</h2>
  <h5>How to Hide in Plain Sight</h5>
  <h5>How to Climb a Wall</h5>

  <h2>Learn the Art of Battle</h2>
  <h5>How to Strengthen your Body</h5>
  <h5>How to Fight like a Ninja</h5>

  <h2>Learn the Art of Living with Honor</h2>
  <h5>How to Breathe Properly</h5>
  <h5>How to Simplify your Life</h5>
</main>
```

# --solutions--

```html
<h1>How to Become a Ninja</h1>
<main>
  <h2>Learn the Art of Moving Stealthily</h2>
  <h3>How to Hide in Plain Sight</h3>
  <h3>How to Climb a Wall</h3>

  <h2>Learn the Art of Battle</h2>
  <h3>How to Strengthen your Body</h3>
  <h3>How to Fight like a Ninja</h3>

  <h2>Learn the Art of Living with Honor</h2>
  <h3>How to Breathe Properly</h3>
  <h3>How to Simplify your Life</h3>
</main>
```
