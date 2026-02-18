---
id: 672bbeb6eefd7ca9c003ea00
title: 树结构伪类的示例有哪些？
challengeType: 19
dashedName: what-are-examples-of-tree-structural-pseudo-classes
---

# --interactive--

树结构伪类允许你根据元素在文档树中的位置来定位和样式化元素。文档树指的是超文本标记语言文档中元素的层级结构。

这是一个树结构伪类的列表：

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

让我们仔细看看每个树结构伪类，并附带示例。

`:root` 伪类通常是根 `html` 元素。它帮助你定位文档中的最高级别，以便你可以为整个文档应用通用样式。     

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

`:root` 伪类也常用于设置 CSS 变量：

```css
:root {
  --main-font: 'Arial, sans-serif';
  --primary-color: blue; 
  --secondary-color: green; 
}
```

使用 CSS 变量，你可以保存值并在样式表中重复使用它们。你稍后会学习更多相关内容。

空元素，即除了空白之外没有子元素的元素，也包含在文档树中。这就是为什么有一个 `:empty` 伪类来定位空元素。例如，这段超文本标记语言代码有两个空的列表项。使用 `:empty` 伪类，你可以对空的列表项进行不同的样式设置：

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

对空列表项最实用的做法可能是不显示它们：

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

`:nth-child(n)` 允许你根据元素在父元素中的位置选择元素，而 `:nth-last-child(n)` 使你能够从末尾开始计数选择元素。`n` 可以是具体数字或像 `odd` 或 `even` 这样的关键字。这在根据位置为表格单元格设置样式时非常有用：偶数和奇数。

这是一个水果价格列表表格的超文本标记语言示例。CSS 使用 `:nth-child` 伪类根据奇数和偶数位置定位表格单元格：

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

`:first-child`、`:last-child` 和 `:only-child` 伪类都作用于父容器内或整个文档中的项。

- `:first-child` 选择父元素或文档中的第一个元素。
- `:last-child` 选择父元素或文档中的最后一个元素。
- `:only-child` 选择父元素或文档中唯一的元素。

使用 `:first-child` 和 `:last-child` 伪类将在此示例中选择 `Item 1` 和 `Item 3`。

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

如果页面上有更多无序列表，你必须更具体地选择： 

为了向你展示 `:only-child` 伪类的工作原理，这里有一个包含两个独立 `div` 元素的超文本标记语言示例。使用 `:only-child` 伪类可确保只选择具有单个子元素的 `div` 元素：

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

`:first-of-type` 和 `:last-of-type` 伪类选择其父元素内特定元素类型的第一个和最后一个出现。它们对于为该元素类型在其兄弟元素中第一个或最后一个实例应用独特样式非常有用。

在下面的示例中，`:first-of-type` 和 `:last-of-type` 应用于 `section` 元素内的第一个元素和最后一个元素：

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

`:nth-of-type(n)` 允许你根据同类型兄弟元素中的位置选择其父元素内的特定元素。例如，在下面的超文本标记语言中，` :nth-of-type(2)` 选择容器中的第二个元素：

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

`:only-of-type` 选择一个元素，如果它是其父元素中唯一的该类型元素。这对于强调单个项或确保当它们不属于某个组时样式不同非常有用。

在下面的示例中，有两个 `div` 元素，其中一个只有一个元素。CSS 仅应用于第一个容器：

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

`:first-of-type` 和 `:last-of-type` 伪类之间有什么区别？

## --answers--

`:first-of-type` 选择其父元素内特定类型的第一个元素，而 `:last-of-type` 选择不同类型的最后一个元素。

### --feedback--

考虑这些伪类如何帮助你为特定标签（如 `p` 或 `h1`）的第一个和最后一个实例设置样式。

---

`:first-of-type` 和 `:last-of-type` 都定位文档中元素的第一个出现，但在不同的部分。

### --feedback--

考虑这些伪类如何帮助你为特定标签（如 `p` 或 `h1`）的第一个和最后一个实例设置样式。

---

`:first-of-type` 选择其父元素内特定元素类型的第一个出现，而 `:last-of-type` 选择其父元素内该相同元素类型的最后一个出现。

---

`:last-of-type` 将样式应用于文档中的第一个和最后一个元素，而 `:last-of-type` 将样式应用于特定类型的所有元素。

### --feedback--

考虑这些伪类如何帮助你为特定标签（如 `p` 或 `h1`）的第一个和最后一个实例设置样式。

## --video-solution--

3

## --text--

`:first-child` 和 `:last-child` 伪类之间有什么区别？

## --answers--

`:first-child` 选择其父元素内的第一个元素，而 `:last-child` 选择不同父元素内的最后一个元素。

### --feedback--

考虑这两个伪类如何帮助你为同一父容器内的第一个和最后一个元素设置样式。

---

`:first-child` 选择其父元素内的第一个元素，而 `:last-child` 选择同一父元素内的最后一个元素。

---

`:first-child` 选择其父元素内特定类型的第一个元素，而 `:last-child` 选择其父元素内不同类型的最后一个元素。

### --feedback--

考虑这两个伪类如何帮助你为同一父容器内的第一个和最后一个元素设置样式。

---

`:first-child` 选择父元素内的第一个和最后一个元素，而 `:last-child` 选择所有其他元素。

### --feedback--

考虑这两个伪类如何帮助你为同一父容器内的第一个和最后一个元素设置样式。

## --video-solution--

2

## --text--

哪个伪类允许你定位没有子元素的元素，包括那些只包含空白的元素？

## --answers--

`:empty`

---

`:first-child`

### --feedback--

考虑如何为没有内容的元素设置样式。

---

`:last-child`

### --feedback--

考虑如何为没有内容的元素设置样式。

---

`:only-of-type`

### --feedback--

考虑如何为没有内容的元素设置样式。

## --video-solution--

1
