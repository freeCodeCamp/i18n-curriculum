---
id: 672bccae6e556cd81cef6af2
title: 什麼是邊距重疊，以及它如何運作？
challengeType: 19
dashedName: what-is-margin-collapsing
---

# --interactive--

邊距合併是 CSS 中一個基本的概念，經常讓網頁開發新手感到困惑。

當相鄰元素的垂直外邊距重疊時，會發生此行為，導致產生一個相等於兩者中較大者的單一外邊距。

了解邊距合併對於精確控制網頁設計中的間距和版面配置非常重要。因此，讓我們深入了解邊距合併的運作方式，並探討一些常見的發生情境。

在 CSS 中，當兩個垂直邊距相互接觸時，它們會合併，這表示不會相加，而是較大的邊距勝出並決定元素之間的間距。此行為僅適用於垂直邊距（上方和下方），不適用於水平邊距（左方和右方）。以下是一個用來說明這個概念的範例：

:::interactive_editor

```html
<style>
  .box1 {
    margin-bottom: 20px;
    background-color: lightblue;
  }
  .box2 {
    margin-top: 30px;
    background-color: lightgreen;
  }
</style>

<div class="box1">Box 1</div>
<div class="box2">Box 2</div>
```

:::

在此範例中，你可能會預期 `.box1` 和 `.box2` 之間的總間距為 50 像素（20 像素加上 30 像素）。然而，由於外邊距合併，實際間距將為 30 像素，這是兩個外邊距中較大的那一個。

如同我們在前一個範例中看到的，相鄰兄弟元素的外邊距會合併。這是外邊距合併最直接的情況。讓我們探討更多可能發生外邊距合併的情況。 

邊距也可以在父元素與其第一個或最後一個子元素之間合併。如果沒有邊框、內距、行內內容或間隙將父元素的邊距與子元素的邊距分開，它們將會合併。

:::interactive_editor

```html
<style>
  .parent {
    margin-top: 40px;
    background-color: lightyellow;
  }
  .child {
    margin-top: 30px;
    background-color: lightpink;
  }
</style>

<div class="parent">
  <div class="child">Child element</div>
</div>
```

:::

在這種情況下，你可能會預期子元素距離頂部為 70 像素（40 像素加上 30 像素）。然而，邊距會合併，並使用較大的 40 像素邊距。

如果一個元素沒有內容、內距或邊框，其上下邊距可以合併成單一邊距。 

:::interactive_editor

```html
<style>
  .empty-block {
    margin-top: 20px;
    margin-bottom: 10px;
    height: 0;
  }
  .next-block {
    background-color: lightgray;
  }
</style>

<div class="empty-block"></div>
<div class="next-block">Next block</div>
```

:::

在此範例中，`empty-block` 的上下邊距合併為單一 20 像素的邊距，為兩者中較大的值。

以下是使用內邊距防止摺疊的範例： 

:::interactive_editor

```html
<style>
  .parent {
    margin-top: 40px;
    padding-top: 1px;
    background-color: lightyellow;
  }
  .child {
    margin-top: 30px;
    background-color: lightpink;
  }
</style>

<div class="parent">
  <div class="child">Child element</div>
</div>
```

:::

在這種情況下，父元素上的一個像素內邊距防止了外邊距合併，導致從父元素頂部到子內容頂部的總間距為 71 像素。

理解邊距合併對於精確控制 CSS 中的版面配置和間距非常重要。雖然它有時會導致意想不到的結果，但這是一項旨在在文件中創造更美觀且一致間距的功能。透過了解何時會發生邊距合併以及在必要時如何防止它，你可以創建更可預測且易於維護的網頁設計版面配置。

# --questions--

## --text--

邊距合併發生在哪個方向？

## --answers--

僅限水平邊距。

### --feedback--

思考哪些邊距（上、下、左、右）會受到此行為的影響。

---

僅垂直邊距。

---

水平和垂直邊距。

### --feedback--

思考哪些邊距（上、下、左、右）會受到此行為的影響。

---

對角邊距。

### --feedback--

思考哪些邊距（上、下、左、右）會受到此行為的影響。

## --video-solution--

2

## --text--

當兩個相鄰元素有不同的 margin 值時會發生什麼？

## --answers--

邊距相加。

### --feedback--

考慮在折疊發生時哪個邊距「勝出」。

---

較小的邊距被使用。

### --feedback--

考慮在折疊發生時哪個邊距「勝出」。

---

較大的邊距被使用。

---

使用兩個邊距的平均值。

### --feedback--

考慮在折疊發生時哪個邊距「勝出」。

## --video-solution--

3

## --text--

以下哪一項不會防止父元素與其第一個子元素之間的邊距合併？

## --answers--

為你的父元素添加 `border`。

### --feedback--

思考哪些屬性會在父元素和子元素的邊距之間產生分隔。

---

在父元素上設定 `padding-top: 1px;`。

### --feedback--

思考哪些屬性會在父元素和子元素的邊距之間產生分隔。

---

在子元素上使用 `display: inline-block;`。

### --feedback--

思考哪些屬性會在父元素和子元素的邊距之間產生分隔。

---

在子元素上設定 `margin-top: 0;`。

## --video-solution--

4
