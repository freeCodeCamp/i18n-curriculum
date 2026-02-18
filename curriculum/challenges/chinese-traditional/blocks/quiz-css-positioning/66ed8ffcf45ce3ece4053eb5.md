---
id: 66ed8ffcf45ce3ece4053eb5
title: CSS 定位測驗
challengeType: 8
dashedName: quiz-css-positioning
---

# --description--

要通過測驗，你必須在以下 20 題中正確回答至少 18 題。

# --quizzes--

## --quiz--

### --question--

#### --text--

以下哪一項不是 `position` 屬性的有效值？

#### --distractors--

`fixed`

---

`absolute`

---

`relative`

#### --answer--

`above`

### --question--

#### --text--

`float` 屬性在 CSS 中的主要用途是什麼？

#### --distractors--

浮動用於將元素從頁面上的正常流程中移除，並自動將其定位在網頁的右上方。

---

浮動用於將元素從頁面上的正常流程中移除，並將其定位到其容器的頂部。

---

浮動用於將元素從頁面上的正常流程中移除，並自動將其定位在網頁的右下方。

#### --answer--

浮動用於將元素從頁面上的正常流程中移除，並將其定位在其容器的左側或右側。

### --question--

#### --text--

以下哪一項是讓盒子元素向左浮動的範例？

#### --distractors--

```css
.box {
  left: float;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  position: float-left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  float: left-side;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

#### --answer--

```css
.box {
  float: left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

### --question--

#### --text--

`clear` 屬性的作用是什麼？

#### --distractors--

它用於判斷元素是否需要移動到底部。

---

它用於判斷元素是否需要從頁面中完全清除。

---

它用於判斷元素是否需要固定在頁面頂部。

#### --answer--

它用於判斷元素是否需要移動到浮動內容的下方。

### --question--

#### --text--

哪一個 CSS 屬性用來控制頁面上重疊定位元素的垂直堆疊順序？

#### --distractors--

`position`

---

`bg-green`

---

`float`

#### --answer--

`z-index`

### --question--

#### --text--

以下哪一項是相對定位的正確語法？

#### --distractors--

```css
.relative {
  position: relative-position;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative-position: relative;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative: position;
  top: 30px;
  left: 30px;
}
```

#### --answer--

```css
.relative {
  position: relative;
  top: 30px;
  left: 30px;
}
```

### --question--

#### --text--

你會使用哪個 CSS 屬性將元素固定在頁面上的某個位置，以便在滾動時不會移動？

#### --distractors--

`position: no-scroll;`

---

`position: relative;`

---

`display: block;`

#### --answer--

`position: fixed;`

### --question--

#### --text--

絕對定位對元素有什麼作用？

#### --distractors--

絕對定位用於判斷元素是否需要移動到浮動內容的下方。

---

絕對定位用於在正常的文件流程中定位元素。

---

絕對定位用於控制頁面上重疊定位元素的垂直堆疊順序。

#### --answer--

絕對定位允許你將元素從正常的文件流程中取出，使其行為獨立於其他元素。

### --question--

#### --text--

以下哪一項不是你可以用於絕對定位的有效屬性？

#### --distractors--

`right`

---

`bottom`

---

`top`

#### --answer--

`side`

### --question--

#### --text--

相對定位和絕對定位之間的主要差異是什麼？

#### --distractors--

絕對定位會將元素設為固定位置，而相對定位則會將元素從正常的文件流程中移出。

---

相對定位將元素設定在固定位置，而絕對定位則將元素從正常的文件流程中移除。

---

絕對定位會將元素定位在正常文件流程內，而相對定位則會將元素移出正常文件流程。

#### --answer--

相對定位將元素置於正常文件流程中，而絕對定位則將元素移出正常文件流程。

### --question--

#### --text--

以下哪一項是將方塊定位在頁面左上角的範例？

#### --distractors--

```css
.box {
  position: absolute;
  bottom: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  top: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  bottom: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

#### --answer--

```css
.box {
  position: absolute;
  top: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

### --question--

#### --text--

哪一種定位方法允許元素只有在你滾動超過某個點時才會固定在定義的位置？

#### --distractors--

浮動定位。

---

固定定位。

---

絕對定位。

#### --answer--

黏性定位。

### --question--

#### --text--

以下哪一項是使用 sticky 定位的正確範例？

#### --distractors--

```css
.box {
  sticky: position;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-fixed;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-top;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

#### --answer--

```css
.box {
  position: sticky;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

### --question--

#### --text--

sticky 定位和 fixed 定位有什麼差別？

#### --distractors--

Sticky 元素只能用於表格佈局，而 fixed 元素可以用於任何型別的 CSS 佈局。

---

黏性元素會始終保持在相同位置，而固定元素會黏附在某個點，然後表現得像相對元素。

---

固定元素將相對於其正常位置定位，而黏性元素只會黏附在某個點，然後表現得像相對元素。

#### --answer--

固定元素會保持在螢幕上的相同位置，而黏性元素只會黏附在某個點，然後表現得像相對元素。

### --question--

#### --text--

`clearfix` 技巧在處理浮動時解決了什麼問題？

#### --distractors--

`clearfix` 技巧幫助解決了浮動元素被移出正常文件流程並被置於頁面固定位置的問題。

---

`clearfix` 技巧幫助解決了浮動元素在行動裝置和平板佈局中無法響應的問題。

---

`clearfix` 技巧幫助解決了浮動元素從頁面消失的問題。

#### --answer--

`clearfix` 技巧幫助解決多個浮動元素並排堆疊時版面配置中的重疊和塌陷問題。

### --question--

#### --text--

以下哪一項是使用 `clearfix` 技巧的正確範例？

#### --distractors--

```css
.clearfix::before {
  position: fixed;
  top: 0;
  width: 100%;
  clear: both;
}
```

---

```css
.clearfix::after {
  position: relative;
  top: 30px;
  left: 30px;
  clear: all;
}
```

---

```css
.clearfix::before {
  top: 30px;
  clear: none;
}
```

#### --answer--

```css
.clearfix::after {
  content: "";
  display: block;
  clear: both;
}
```

### --question--

#### --text--

什麼是靜態定位？

#### --distractors--

這用於將元素從頁面上的正常流程中移除，並自動將其定位在網頁的右上方。

---

這讓你可以將元素從正常的文件流程中取出，使其行為獨立於其他元素。

---

這允許元素只有在你滾動超過某個點時才會固定在定義的位置。

#### --answer--

這是文件的正常流程。元素依序從上到下、從左到右排列。

### --question--

#### --text--

以下哪一項是使用固定定位將導覽列設定在頁面頂端的範例？

#### --distractors--

```css
.navbar {
  fixed: top;
  top: 0;
  width: 100%;
}
```

---

```css
.navbar {
  upper: fixed;
  width: 100%;
}
```

---

```css
.navbar {
  position: fixed-top;
  top: 0;
  width: 100%;
}
```

#### --answer--

```css
.navbar {
  position: fixed;
  top: 0;
  width: 100%;
}
```

### --question--

#### --text--

以下哪一項是 `z-index` 屬性可使用的有效值？

#### --distractors--

`12.0`

---

`none`

---

`up`

#### --answer--

`1`

### --question--

#### --text--

以下哪一項是 `position` 屬性的預設值？

#### --distractors--

`inherit`

---

`initial`

---

`relative`

#### --answer--

`static`

## --quiz--

### --question--

#### --text--

哪一個 `position` 值讓你可以使用 `top` 和 `left` 調整元素的位置，同時保持它在正常的文件流程中？

#### --distractors--

`position: absolute;`

---

`position: static;`

---

`position: fixed;`

#### --answer--

`position: relative;`

### --question--

#### --text--

具有 `position: sticky;` 的元素最初如何表現？

#### --distractors--

它的行為像一個 `fixed` 元素，直到達到滾動位置。

---

它總是從正常的文件流程中移除。

---

它在其父元素中表現得像一個 `absolute` 元素。

#### --answer--

它的行為像一個 `relative` 元素，直到達到指定的滾動位置。

### --question--

#### --text--

以下哪一項示範了有效且正確使用 `z-index` 屬性，使 `.box-two` 出現在 `.box-one` 之上？

#### --distractors--

```css
.box-one {
  position: static;
  z-index: 2;
}
.box-two {
  position: static;
  z-index: 1;
}
```

---

```css
.box-one {
  position: absolute;
  stack-order: 1;
}
.box-two {
  position: absolute;
  stack-order: 2;
}
```

---

```css
.box-one {
  float: left;
  z-index: 1;
}
.box-two {
  float: left;
  z-index: 2;
}
```

#### --answer--

```css
.box-one {
  position: absolute;
  z-index: 1;
}
.box-two {
  position: absolute;
  z-index: 2;
}
```

### --question--

#### --text--

CSS 中 `z-index` 屬性用於什麼？

#### --distractors--

它設定頁面的縮放層次。

---

它控制在彈性容器中元素的水平對齊方式。

---

它定義元素內容與其邊框之間的間距。

#### --answer--

它控制重疊的定位元素的垂直堆疊順序。

### --question--

#### --text--

當你對具有 `position: fixed;` 的元素套用 `top: 10%;` 時，`10%` 是相對於什麼計算的？

#### --distractors--

元素本身的高度。

---

其父容器的高度。

---

視窗的寬度。

#### --answer--

視窗的高度。

### --question--

#### --text--

哪一個程式碼範例是正確使用 `z-index` 屬性將覆蓋層置於其他內容之上的？

#### --distractors--

```css
.overlay {
  z-index: 5;
  background-color: black;
}
```

---

```css
.overlay {
  display: block;
  z-layer: 1;
  background-color: black;
}
```

---

```css
.overlay {
  float: left;
  z-index: 2;
  background-color: black;
}
```

#### --answer--

```css
.overlay {
  position: absolute;
  z-index: 10;
  background-color: black;
}
```

### --question--

#### --text--

哪一個 CSS 屬性用來控制元素是否應該移動到浮動控制元件的下方？

#### --distractors--

`float`

---

`overflow`

---

`display`

#### --answer--

`clear`

### --question--

#### --text--

具有 `position: relative;` 和 `bottom: 25px;` 的元素會如何移動？

#### --distractors--

它將從其正常位置向下移動 25px。

---

它將從正常位置向右移動 25px。

---

它將定位在距離視窗底部 25px。

#### --answer--

它將從其正常位置向上移動 25px。

### --question--

#### --text--

`z-index` 屬性只會影響具有哪個 CSS 屬性的元素？

#### --distractors--

除 `none` 以外的 `float` 值。

---

`display` 值為 `inline-block`。

---

一組 `background-color`。

#### --answer--

非 `static` 的 `position` 值。

### --question--

#### --text--

將 `float: right;` 應用到標頭中的標誌會使該標誌向右浮動。

#### --distractors--

標誌會對齊到右側，但仍會保持在正常的文件流程中，防止其他內容換行。

---

標誌將會脫離流程並置於整個瀏覽器視窗的右側，而非其容器內。

---

標誌將成為一個區塊層級元素，佔據標頭的整個寬度，並將其他元素推到其下方。

#### --answer--

標誌會從其正常流程中移除，並放置在其容器的右側，其他內容會環繞其周圍。

### --question--

#### --text--

哪一段 CSS 程式碼片段會在元素被捲動到時，將其固定在視窗頂部？

#### --distractors--

```css
.header {
  position: fixed;
  top: 0;
}
```

---

```css
.header {
  position: relative;
  top: 0;
}
```

---

```css
.header {
  position: absolute;
  top: 0;
}
```

#### --answer--

```css
.header {
  position: sticky;
  top: 0;
}
```

### --question--

#### --text--

`clear: both;` 在 CSS 中的具體用途是什麼？

#### --distractors--

它會取消元素本身的 `float` 屬性，將其傳回到正常的文件流程中。

---

它會移除從父元素繼承的任何 `clear` 屬性，恢復預設的浮動行為。

---

它只會清除位於右側的浮動元素，允許左側浮動元素保持原狀。

#### --answer--

它確保該元素被移動到出現在其左側和右側的任何浮動元素之下。

### --question--

#### --text--

給定以下程式碼，`.child` 將如何定位？

```css
.parent {
  /* No position property set */
  height: 200px;
}
.child {
  position: absolute;
  top: 10px;
}
```

#### --distractors--

它將會距離 `.parent` 元素頂部 10px，因為 `absolute` 定位總是相對於直接父元素。

---

它將保持在其預設靜態位置，因為在沒有 `z-index` 屬性的情況下，`absolute` 值是無效的。

---

它將定位在瀏覽器視窗頂部 10px 處，即使使用者滾動頁面也會保持固定位置。

#### --answer--

它將會距離初始包含區塊（例如 `<body>`）的頂部 10px，因為它的父元素沒有定位。

### --question--

#### --text--

以下 CSS 對 `.box` 元素會有什麼效果？

```css
.box {
  position: absolute;
  top: 50px;
  left: 50px;
}
```

#### --distractors--

該元素將保持在其正常流程中，但會從上方和左方縮排 50px，將其他元素推開。

---

該元素將固定在視窗中，即使頁面滾動，也會保持距離頂部 50px 和距離左側 50px。

---

該元素將相對於其自身起始點定位，向下移動 50px 並向右移動 50px，且不會離開文件流。

#### --answer--

該元素將被移出正常流程，並從其最近的定位祖先元素的頂部和左側各偏移 50px。

### --question--

#### --text--

以下哪一個 `position` 值會將元素完全從文件的正常流程中移除？

#### --distractors--

`position: static;`

---

`position: relative;`

---

`position: inherit;`

#### --answer--

`position: absolute;`

### --question--

#### --text--

給定一個 `.parent` 和一個 `.child` 元素，哪個 CSS 片段會正確地將 `.child` 元素從 `.parent` 元素的左上角定位 20px？

#### --distractors--

```css
.parent {
  /* position: static; by default */
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  position: relative;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  float: left;
  top: 20px;
  left: 20px;
}
```

#### --answer--

```css
.parent {
  position: relative;
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

### --question--

#### --text--

`static` 和 `relative` 定位之間的差異是什麼？

#### --distractors--

`static` 定位會將元素從文件流程中移除，而 `relative` 定位則會保持元素在流程中。

---

具有 `position: static;` 的元素可以使用 `top` 和 `left` 屬性進行偏移，而 `position: relative;` 則不行。

---

`static` 定位用於區塊層級元素，而 `relative` 定位僅用於行內元素。

#### --answer--

兩者都保持元素在正常的文件流中，但 `relative` 允許元素從其原始位置偏移。

### --question--

#### --text--

哪一段 CSS 程式碼能正確地將 `image` 向左浮動，並允許其他內容環繞它？

#### --distractors--

```css
.image {
  position: absolute;
  left: 0;
}
```

---

```css
.image {
  display: inline-block;
}
```

---

```css
.image {
  text-align: left;
}
```

#### --answer--

```css
.image {
  float: left;
}
```

### --question--

#### --text--

`absolute` 和 `fixed` 定位有什麼差別？

#### --distractors--

`absolute` 定位是相對於視窗，而 `fixed` 定位是相對於最近的已定位祖先。

---

`absolute` 定位會使元素保持在正常文件流程中，而 `fixed` 定位則會將其從流程中移除。

---

兩者皆相對於視窗定位，但 `fixed` 元素會隨頁面捲動，而 `absolute` 元素則不會。

#### --answer--

`absolute` 定位是相對於最近的已定位祖先，而 `fixed` 定位是相對於瀏覽器視窗。

### --question--

#### --text--

哪一個 `position` 值會將元素置於正常文件流程中，並防止像 `top` 和 `left` 這類偏移屬性產生任何效果？

#### --distractors--

`position: relative;`

---

`position: absolute;`

---

`position: fixed;`

#### --answer--

`position: static;`

