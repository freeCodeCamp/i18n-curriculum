---
id: 66ed8fc1f45ce3ece4053ead
title: CSS 存取性測驗
challengeType: 8
dashedName: quiz-css-accessibility
---

# --description--

要通過測驗，你必須正確回答以下 10 題中的至少 9 題。

# --quizzes--

## --quiz--

### --question--

#### --text--

為什麼你的網頁需要有良好的色彩對比？

#### --distractors--

為頁面增添更多活力。

---

為了符合搜尋引擎優化（SEO）的需求。

---

讓頁面中的重要元素突出顯示。

#### --answer--

使頁面內容可存取且易於閱讀。

### --question--

#### --text--

以下哪一個工具允許你輸入背景和前景顏色並檢查它們的對比度比率？

#### --distractors--

TPGi 色彩對比分析器

---

Figma

---

Canva

#### --answer--

WebAIM 的色彩對比檢查器

### --question--

#### --text--

以下哪一個工具允許你從顯示在你的螢幕上的內容中選取背景和前景顏色，並檢查它們的對比度比率？

#### --distractors--

Figma

---

Canva

---

WebAIM 的色彩對比檢查器

#### --answer--

TPGi 色彩對比分析器

### --question--

#### --text--

為什麼你不應該使用 `display: none` 和 `visibility: hidden` 來視覺上隱藏內容？

#### --distractors--

這些方法使得只有像螢幕閱讀器這樣的輔助技術能夠存取隱藏的內容。

---

這些方法使內容只會在使用者將滑鼠移動到內容上之前隱藏。

---

這些方法在某些瀏覽器中無法使用。

#### --answer--

這些方法會將內容從無障礙樹中移除，使螢幕閱讀器無法存取隱藏的內容。

### --question--

#### --text--

什麼是無障礙樹？

#### --distractors--

網頁版面配置的視覺表現。

---

螢幕閱讀器用來讀取網頁文字內容的結構。

---

DOM 樹的複本。

#### --answer--

螢幕閱讀器用來解讀並與網頁內容互動的結構體。

### --question--

#### --text--

以下哪一項確保影像具有最小寬度為 `400px`，但當視窗寬度大於 `1000px` 時會變寬？

#### --distractors--

```css
img {
  width: max(400px, 10vw);
}
```

---

```css
img {
  width: max(400px, 30vw);
}
```

---

```css
img {
  width: max(400px, 20vw);
}
```

#### --answer--

```css
img {
  width: max(400px, 40vw);
}
```

### --question--

#### --text--

以下哪一個 `scroll-behavior` 值允許平滑滾動行為？

#### --distractors--

`auto`

---

`inherit`

---

`revert`

#### --answer--

`smooth`

### --question--

#### --text--

以下哪一個特性用於偵測使用者的動畫偏好？

#### --distractors--

`prefers-contrast`

---

`display-mode`

---

`animation`

#### --answer--

`prefers-reduce-motion`

### --question--

#### --text--

以下哪一項是 `input` 元素中 `placeholder` 屬性的存取性問題？

#### --distractors--

佔位文字會阻止螢幕閱讀器讀取輸入標籤文字。

---

佔位文字可防止螢幕閱讀器讀取輸入值。

---

佔位文字太小，無法閱讀。

#### --answer--

佔位文字可能會與實際輸入值混淆。

### --question--

#### --text--

`hidden` 屬性有什麼作用？

#### --distractors--

它會隱藏內容並在暫留時顯示。

---

它只會從無障礙樹中隱藏內容。

---

它在視覺上隱藏內容，但內容仍可在無障礙樹中取用。

#### --answer--

它同時在視覺上和無障礙樹中隱藏內容。
