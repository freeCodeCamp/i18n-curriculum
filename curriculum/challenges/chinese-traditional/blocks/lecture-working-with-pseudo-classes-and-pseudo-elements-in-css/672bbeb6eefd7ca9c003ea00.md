---
id: 672bbeb6eefd7ca9c003ea00
title: 樹狀結構偽類的範例有哪些？
challengeType: 19
dashedName: what-are-examples-of-tree-structural-pseudo-classes
---

# --interactive--

樹狀結構偽類允許你根據元素在文件樹中的位置來標的並設定樣式。文件樹是指 HTML 文件中元素的階層結構。

這是一個樹狀結構偽類的列表：

- `:root`
- `:empty`
- `:nth-child(n)`
- `:nth-last-child(n)`
- `:first-child`
- `:last-child`
- `:only-child`
- `:nth-of-type`
- `:first-of-type`
- `:last-of-type`
- `:only-of-type`

讓我們仔細看看每個樹狀結構的偽類別，並附上範例。

`:root` 偽類通常是根 `html` 元素。它幫助你標的文件中最高的層級，讓你可以為整個文件套用共用樣式。     

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Welcome to My Website</h1>
<p>This is a sample paragraph to demonstrate the :root pseudo-class.</p>
```

```css
:root {
  background: black;
  color: aliceblue;
}
```

:::

`:root` 偽類也常用於設定 CSS 變數：

```css
:root {
  --main-font: 'Arial, sans-serif';
  --primary-color: blue; 
  --secondary-color: green; 
}
```

使用 CSS 變數，你可以儲存數值並在樣式表中重複使用它們。你稍後會學到更多關於這些的內容。

空元素，也就是除了空白字元外沒有子元素的元素，也包含在文件樹中。這就是為什麼有 `:empty` 偽類別來標的空元素。<dfn>例如</dfn>，這段 HTML 程式碼有兩個空的列表項目。使用 `:empty` 偽類別，你可以對空的列表項目做不同的樣式設定：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  background: black;
}
```

:::

對於空列表項目，最實際的做法可能是完全不顯示它們：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  display: none;
}
```

:::

`:nth-child(n)` 允許你根據元素在父元素中的位置來選取元素，而 `:nth-last-child(n)` 則啟用你從末端開始計數來選取元素。`n` 可以是特定數字或像 `odd` 或 `even` 這樣的關鍵字。這在根據位置為表格儲存格設定樣式時非常有用：偶數和奇數。

這是一個水果價格列表表格的 HTML 範例。CSS 使用 `:nth-child` 偽類別來根據奇數和偶數位置標的表格儲存格：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<table>
  <tr>
    <th>Item</th>
    <th>Price</th>
  </tr>
  <tr>
    <td>Apple</td>
    <td>$1.00</td>
  </tr>
  <tr>
    <td>Banana</td>
    <td>$0.50</td>
  </tr>
  <tr>
    <td>Orange</td>
    <td>$0.80</td>
  </tr>
</table>
```

```css
th,
td {
  border: 1px solid lightgray;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: orangered;
}

tr:nth-child(odd) {
  background-color: lightgreen;
}
```

:::

`:first-child`、`:last-child` 和 `:only-child` 偽類皆作用於父容器內的條款或整個文件中的條款。

- `:first-child` 選取父元素或文件中的第一個元素。
- `:last-child` 選擇父元素或文件中的最後一個元素。
- `:only-child` 選取父元素或文件中唯一的元素。

使用 `:first-child` 和 `:last-child` 偽類別將會選取此範例中的 `Item 1` 和 `Item 3`。

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```

```css
li:first-child {
  background-color: orangered;
}

li:last-child {
  background-color: lightgreen;
}
```

:::

如果你在頁面上有更多無序列表，你必須更具體地選擇： 

為了向你展示 `:only-child` 偽類別的運作方式，這裡有一個包含兩個獨立 `div` 元素的 HTML 範例。使用 `:only-child` 偽類別可確保只選取具有單一子元素的 `div` 元素：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<div class="container">
  <div>This is the only item in this container.</div>
</div>

<div class="container">
  <div>This is one of two items in this container.</div>
  <div>Here is the second item.</div>
</div>
```

```css
.container div:only-child {
  border: 2px solid crimson;
  padding: 10px;
  background-color: lightblue;
}
```

:::

`:first-of-type` 和 `:last-of-type` 偽類別會選取其父元素中指定元素型別的第一個和最後一個出現。它們對於為該元素型別在兄弟元素中第一個或最後一個實體套用獨特樣式非常有用。

在以下範例中，`:first-of-type` 和 `:last-of-type` 套用於 `section` 元素內的第一個元素和最後一個元素：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<section>
  <h2>Introduction</h2>
  <p>This is the first paragraph in the first section</p>
  <p>This is the second paragraph in the first section</p>
</section>
<section>
  <h2>Details</h2>
  <p>This is the first paragraph in the second section.</p>
  <p>This is the second paragraph in the second section.</p>
</section>
```

```css
section p:first-of-type {
  background-color: lightgreen;
}

section p:last-of-type {
  background-color:lightblue;
}
```

:::

`:nth-of-type(n)` 允許你根據同類型兄弟元素中的位置，選取其父元素內的特定元素。例如，在以下 HTML 中，`:nth-of-type(2)` 標的為容器中的第二個元素：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>First paragraph</p>
  <p>Second paragraph</p>
  <p>Third paragraph</p>
</div>
```

```css
p:nth-of-type(2) {
  color: red;
  font-weight: bold;
}
```

:::

`:only-of-type` 選取元素，當它是其父元素中唯一的該型別時。這對於強調單一條款或確保當它們不屬於群組時有不同的樣式非常有用。

在以下範例中，有兩個 `div` 元素，其中一個只有一個元素。CSS 僅套用到第一個容器：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>The only paragraph</p>
</div>

<div class="container">
  <p>The first paragraph</p>
  <p>The second paragraph</p>
</div>
```

```css
p:only-of-type {
  border: 4px solid green;
}
```

:::

# --questions--

## --text--

`:first-of-type` 和 `:last-of-type` 偽類有什麼差別？

## --answers--

`:first-of-type` 會選取其父元素中指定型別的第一個元素，而 `:last-of-type` 會選取不同型別的最後一個元素。

### --feedback--

考慮這些偽類如何幫助你為特定標記（例如 `p` 或 `h1`）的第一個和最後一個實體設計樣式。

---

`:first-of-type` 和 `:last-of-type` 都會將標的設定為元素的第一次出現，但位於文件的不同區段。

### --feedback--

考慮這些偽類如何幫助你為特定標記（例如 `p` 或 `h1`）的第一個和最後一個實體設計樣式。

---

`:first-of-type` 選取其父元素中指定元素型別的第一個出現，而 `:last-of-type` 選取其父元素中相同元素型別的最後一個出現。

---

`:last-of-type` 對文件中第一個和最後一個元素套用樣式，而 `:last-of-type` 對特定型別的所有元素套用樣式。

### --feedback--

考慮這些偽類如何幫助你為特定標記（例如 `p` 或 `h1`）的第一個和最後一個實體設計樣式。

## --video-solution--

3

## --text--

`:first-child` 和 `:last-child` 偽類有什麼差別？

## --answers--

`:first-child` 會標的其父元素內的第一個元素，而 `:last-child` 會標的不同父元素內的最後一個元素。

### --feedback--

思考這兩個偽類如何幫助你為同一父容器內的第一個和最後一個元素設計樣式。

---

`:first-child` 會標的其父元素內的第一個元素，而 `:last-child` 會標的同一父元素內的最後一個元素。

---

`:first-child` 會選取其父元素中指定型別的第一個元素，而 `:last-child` 會選取其父元素中不同型別的最後一個元素。

### --feedback--

思考這兩個偽類如何幫助你為同一父容器內的第一個和最後一個元素設計樣式。

---

`:first-child` 標的父元素內的第一個和最後一個元素，而 `:last-child` 標的所有其他元素。

### --feedback--

思考這兩個偽類如何幫助你為同一父容器內的第一個和最後一個元素設計樣式。

## --video-solution--

2

## --text--

哪一個偽類別允許你標的沒有子元素的元素，包括那些只包含空白字元的元素？

## --answers--

`:empty`

---

`:first-child`

### --feedback--

思考你如何為沒有內容的元素設計樣式。

---

`:last-child`

### --feedback--

思考你如何為沒有內容的元素設計樣式。

---

`:only-of-type`

### --feedback--

思考你如何為沒有內容的元素設計樣式。

## --video-solution--

1
