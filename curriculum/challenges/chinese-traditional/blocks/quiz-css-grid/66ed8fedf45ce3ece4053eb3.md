---
id: 66ed8fedf45ce3ece4053eb3
title: CSS Grid 測驗
challengeType: 8
dashedName: quiz-css-grid
---

# --description--

要通過測驗，你必須在以下 20 題中正確回答至少 18 題。

# --quizzes--

## --quiz--

### --question--

#### --text--

什麼是 CSS Grid？

#### --distractors--

用於在網站上顯示表格的方法。

---

用於平鋪影像的行為。

---

一種在 HTML 元素周圍顯示輪廓的方法。

#### --answer--

HTML 文件的二維佈局。

### --question--

#### --text--

以下哪一種方式是正確的 `grid container` 創建方法？

#### --distractors--

`display: grid-area;`

---

`grid: grid-template;`

---

`grid-template: set;`

#### --answer--

`display: grid;`

### --question--

#### --text--

`grid-template-columns` 屬性有什麼作用？

#### --distractors--

為一個網格容器定義兩個行和三個列。

---

將網格佈局的所有行設為固定長度。

---

創建一個兩行網格佈局容器。

#### --answer--

定義網格佈局中的行數。

### --question--

#### --text--

`grid-template-rows` 屬性有什麼作用？

#### --distractors--

指定網格項目的大小和在網格佈局中的位置。

---

創建一個用於創建新網格列的模板。

---

指定網格容器中的預設列大小。

#### --answer--

指定網格佈局中每個列的數量和高度。

### --question--

#### --text--

`minmax()` 函式（程式）做什麼？

#### --distractors--

根據可用空間在第一個值和第二個值之間切換。

---

傳回兩個輸入的平均值。

---

設定元素在瀏覽器全螢幕模式下的最小尺寸。

#### --answer--

設定軌道的最小和最大尺寸。

### --question--

#### --text--

`column-gap` 和 `row-gap` 屬性的簡寫是什麼？

#### --distractors--

`gap-column-row`

---

`gutters`

---

`grid-gap`

#### --answer--

`gap`

### --question--

#### --text--

隱喻的網格和明確的網格有什麼差別？

#### --distractors--

隱式網格使用 `grid-template-columns` 屬性，而明確網格使用 `grid-template-rows` 屬性。

---

明確的網格使用 `grid-template-columns` 屬性，而隱式網格使用 `grid-template-rows` 屬性。

---

隱式網格使用 `grid-template-columns` 或 `grid-template-rows` 屬性來創建行，而在顯式網格中，列和行會自動創建。

#### --answer--

明確的網格使用 `grid-template-columns` 或 `grid-template-rows` 屬性來創建行，而在隱式網格中，列和行會自動生成。

### --question--

#### --text--

以下哪一個單位表述網格容器內空間的一部分？

#### --distractors--

`fractional`

---

`frac`

---

`f`

#### --answer--

`fr`

### --question--

#### --text--

什麼是網格線？

#### --distractors--

列和行的簡寫。

---

網格元素的輪廓。

---

用於生成網格行和列的線。

#### --answer--

每個網格項目開始和結束的行。

### --question--

#### --text--

`grid-column` 屬性是做什麼用的？

#### --distractors--

將新的網格元素添加為它所應用元素的子元素。

---

將文字在格線項目中垂直對齊。

---

為你的網格容器設定兩個行。

#### --answer--

告訴網格項目應該從哪條網格線開始和結束。

### --question--

#### --text--

你如何創建四個寬度相等的行？

#### --distractors--

`grid-template-columns: repeat(4);`

---

`grid-template-columns: repeat(1, 4);`

---

`grid-template-columns: repeat(1fr, 4);`

#### --answer--

`grid-template-columns: repeat(4, 1fr);`

### --question--

#### --text--

`grid-template-areas` 屬性有什麼作用？

#### --distractors--

它用於指定該項目在網格容器中一行的起始位置。

---

它用於在容器中的軌道之間創建間隙。

---

它用於重複軌道列表中的區段。 

#### --answer--

它用於為你將要在網格上定位的項目命名。

### --question--

#### --text--

`grid-auto-flow` 屬性有什麼作用？

#### --distractors--

控制格線項目的顯示順序。

---

調整網格元素之間的間距。

---

自動調整元素以適應網格。

#### --answer--

控制自動放置元素如何插入到網格中。

### --question--

#### --text--

以下哪一項是使用 `grid-template-areas` 屬性的正確方式？

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: apply(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set-areas;
  gap: 20px; 
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas:
    "header header"
    "sidebar main"
    "footer footer"; 
  gap: 20px; 
}
```

### --question--

#### --text--

以下哪一項是使用 `grid-auto-flow` 屬性的正確方式？

#### --distractors--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: none;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: allow;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: set;
  grid-auto-columns: 1fr;
}
```

#### --answer--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: column;
  grid-auto-columns: 1fr;
}
```

### --question--

#### --text--

以下哪一項不是有效的 grid 屬性？

#### --distractors--

`gap`

---

`grid-column`

---

`grid-template-columns`

#### --answer--

`grid-set`

### --question--

#### --text--

這些屬性中，哪些可以用來置中 `grid` 元素內的項目？

#### --distractors--

`allow-items`

---

`set-items`

---

`center-items`

#### --answer--

`align-items`

### --question--

#### --text--

以下哪一項是用於 `grid-auto-columns` 屬性的正確值？

#### --distractors--

`grid-auto-columns: unset-grid;`

---

`grid-auto-columns: revert-grid;`

---

`grid-auto-columns: set-content(20%);`

#### --answer--

`grid-auto-columns: 1fr;`

### --question--

#### --text--

什麼是 grid tracks？

#### --distractors--

列和行的簡寫。

---

你可以沿著這些線條來動畫化網格項目的移動。

---

每個網格項目開始和結束的行。

#### --answer--

兩條相鄰網格線之間的間距。

### --question--

#### --text--

以下哪一種是使用 `minmax()` 函式（程式）的正確方式？

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(apply);
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax();
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(set);
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(150px, auto);
}
```

## --quiz--

### --question--

#### --text--

你如何在由 `grid-template-areas` 定義的版面配置中定位網格項目？

#### --distractors--

透過使用 `grid-template-rows` 和 `grid-template-columns` 直接定義條款在網格中的大小和位置。

---

透過使用 `grid-area` 屬性並指定列和行的起始與結束位置。

---

透過同時設定 `grid-area` 和明確的像素座標。

#### --answer--

透過將命名區域指定到該項目的 `grid-area` 屬性。

### --question--

#### --text--

`grid-auto-rows` 屬性控制什麼？

#### --distractors--

明確定義列的高度。

---

網格行的最大寬度。

---

列之間的間距。

#### --answer--

隱式創建的列的大小。

### --question--

#### --text--

你會使用哪個屬性讓網格項目跨越多個列？

#### --distractors--

`grid-row-span`

---

`row-span`

---

`span-rows`

#### --answer--

`grid-row`

### --question--

#### --text--

什麼定義了明確的網格？

#### --distractors--

自動創建以適應內容的軌道。

---

由 `fr` 單位定義的軌道。

---

使用 `grid-auto-flow` 添加的軌道。

#### --answer--

由 `grid-template-columns` 或 `grid-template-rows` 明確設定的軌道。

### --question--

#### --text--

`grid-auto-flow` 的哪個值會讓新項目先填滿行？

#### --distractors--

`row`

---

`vertical`

---

`row dense`

#### --answer--

`column`

### --question--

#### --text--

`grid-template-areas` 的用途是什麼？

#### --distractors--

自動產生隱式軌道。

---

取代 `fr` 單位。

---

設定 `z-index` 值。

#### --answer--

將項目映射到命名的網格區域以進行視覺化。

### --question--

#### --text--

你如何讓網格項目從第 2 行開始，並在第 4 行結束？

#### --distractors--

`grid-column: 2 / span 4;`

---

`grid-column: start 2 / end 4;`

---

`grid-column: from 2 to 4;`

#### --answer--

`grid-column: 2 / 4;`

### --question--

#### --text--

`grid-template-columns: 1fr 2fr 1fr` 的效果是什麼？

#### --distractors--

創建三個等寬的行。

---

使中間的行寬度是其他行的三倍。

---

強制所有行的寬度都精確為 `1fr`。

#### --answer--

創建三個行，其中中間的行寬是兩側的兩倍。

### --question--

#### --text--

你要如何創建一個有 3 個相等行且它們之間有 `20px` 間距的網格？

#### --distractors--

```css
.container {
  display: grid;
  grid-template: repeat(3, 1fr) / 20px;
} 
```

---

```css
.container {
  display: grid;
  grid: 1fr 1fr 1fr / gap 20px;
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 20px 1fr 1fr 1fr;
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
}
```

### --question--

#### --text--

`repeat(3, minmax(100px, 1fr))` 會創建什麼？

#### --distractors--

三個行無法縮小到低於 `100px`。

---

三個固定的 `100px` 行。

---

三 列，最大高度為 `1fr`。

#### --answer--

三個按比例增長但不會縮小到低於 `100px` 的行。

### --question--

#### --text--

關於隱式網格，哪個述語是正確的？

#### --distractors--

隱式網格會忽略 `gap` 屬性。

---

隱式軌跡必須使用 `grid-template-areas` 定義。

---

隱式軌道只能使用 `grid-auto-flow` 屬性創建。

#### --answer--

當內容不符合明確的軌道時，會創建隱式軌道。

### --question--

#### --text--

`place-items` 屬性在 CSS Grid 中的作用是什麼？

#### --distractors--

它會根據可用空間自動設定網格項目的大小。

---

它控制 `grid template` 的行和列定義。

---

它會調整容器中網格項目的順序。

#### --answer--

它是用來同時對齊區塊軸和行內軸上的網格項目的簡寫。

### --question--

#### --text--

這段 CSS 達成了什麼效果？

```css
.container {
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
}
```

#### --distractors--

創建固定寬度為 `150px` 的行，並且會超出容器的範圍。

---

創建寬度恰好為 `1fr` 的行，無論內容為何。

---

每 150px 可用寬度最多創建一個行。

#### --answer--

創建彈性行，至少為 `150px`，並在空間有限時收合。

### --question--

#### --text--

你如何創建非對稱網格佈局？

#### --distractors--

僅使用 `fr` 單位。

---

透過混合不同長度單位於 `grid-template-columns`。

---

透過設定 `grid-asymmetric: true`。

#### --answer--

透過為每個軌道定義不同的大小。

### --question--

#### --text--

`grid-column-start: 2` 對網格項目有什麼作用？

#### --distractors--

使其跨越 2 行。

---

將它偏移 2 像素。

---

將其定位在第二條垂直網格線起始處。

#### --answer--

使其從第二行開始。

### --question--

#### --text--

你會使用哪個屬性來控制網格軌道中的上限溢位行為？

#### --distractors--

`grid-overflow`

---

`track-sizing`

---

`fit-content`

#### --answer--

`minmax()`

### --question--

#### --text--

以下 `code` 的結果會是什麼？

```css
.container {
  display: grid;
  grid-template-columns: 100px 1fr 2fr;
  grid-template-rows: auto 150px;
  gap: 10px;
}
```

#### --distractors--

該容器將有三個寬度相等的行，以及兩個高度為 `150px` 的列。

---

該容器將有三個行，寬度皆為 `100px`，以及兩個列，高度為 `150px`。

---

該容器將有兩個列，每個列的高度為 `1fr`。

#### --answer--

該容器將有三個行：寬度分別為 100px、`1fr` 和 `2fr`，以及兩個列：一個自動高度和一個高度為 `150px`。

### --question--

#### --text--

你會如何讓一個 grid 項目跨越所有可用的列？

#### --distractors--

`grid-row: full;`

---

`grid-row: auto / -1;`

---

`grid-row: 1 / span infinite;`

#### --answer--

`grid-row: 1 / -1;`

### --question--

#### --text--

哪個屬性控制網格項目沿著區塊軸的對齊？

#### --distractors--

`justify-items`

---

`place-items`

---

`align-content`

#### --answer--

`align-items`

### --question--

#### --text--

你如何確保一個 grid 項目無論 grid 如何變動都保持在第一行？

#### --distractors--

`grid-column: fixed;`

---

`grid-column: first;`

---

`grid-lock: column;`

#### --answer--

`grid-column: 1;`
