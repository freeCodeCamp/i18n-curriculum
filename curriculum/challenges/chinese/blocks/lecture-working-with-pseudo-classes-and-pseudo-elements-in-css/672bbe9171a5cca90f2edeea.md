---
id: 672bbe9171a5cca90f2edeea
title: 元素用户操作伪类的示例有哪些？
challengeType: 19
dashedName: what-are-examples-of-element-user-action-pseudo-classes
---

# --interactive--

用户反馈是网页设计中至关重要的元素。例如，当用户与网站上的元素交互时，接收视觉提示非常重要，比如将鼠标悬停在按钮上或点击链接时。此反馈帮助用户理解交互元素的状态，例如指示链接是否已被访问。

CSS 中的用户操作伪类是特殊的关键字，允许你在不需要 JavaScript 或其他编程语言的情况下提供此类反馈。

这些伪类包括 `:hover`、`:active`、`:focus` 和 `:visited` 等。它们使你能够根据用户交互更改元素的外观，从而提升整体用户体验。

让我们深入了解一些我们拥有的用户动作伪类，并看看它们是如何工作的。

`:active` 伪类在元素被用户激活时应用样式。例如，当用户点击按钮或链接时，它提供即时视觉反馈，向用户显示他们的操作已被识别。

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a href="#">Example link</a>
```

```css
a:active {
  color: crimson;
}
```

:::

当用户用鼠标或其他指针设备悬停在一个元素上时，会触发 `:hover` 伪类。开发者经常使用它为按钮、链接或任何应对用户关注做出响应的元素创建视觉反馈。下面是一个用户在点击前会悬停的按钮：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button class="btn">Hover Over Me</button>
```

```css
.btn:hover {
  background-color: darkgreen;
  color: white;
  cursor: pointer;
}
```

:::

`:focus` 伪类在元素获得焦点时应用样式，通常通过键盘导航或用户点击表单 `input` 实现。这不仅是为了反馈，也是无障碍的关键。它确保依赖键盘的用户能够轻松识别他们正在交互的元素。 

这是一个输入字段的示例，当点击或通过键盘导航到该字段时会获得焦点：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <input type="text" />
</form>
```

```css
input:focus {
  outline: 2px solid darkgreen;
  border-radius: 4px;
}
```

:::

`:visited` 伪类选择器用于定位用户已访问的链接。这对于帮助用户区分他们已经访问过的页面和尚未访问的页面非常有用。以下是一个示例，当链接被访问时，将锚点文本颜色更改为青色：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a href="https://www.example.com" target="_blank">Visit Example.com</a>
```

```css
a:visited {
  color: cyan;
}
```

:::

CSS 中的 `:checked` 伪类允许你在选中（checked）时为复选框和单选按钮等表单元素设置样式。尽管浏览器为这些元素提供了默认样式，这个伪类对于自定义这些元素的外观以提升用户体验非常有用。

这是一个带有复选框以同意网站条款的示例。 

**注意**：此示例中的部分 CSS 使用了尚未讲解的属性。这只是为了让你了解如何创建一个自定义复选框。你将在后续课程和研讨会中学习所有这些内容的工作原理。 

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <label>
  Agree <input class="checkbox" type="checkbox" />
  </label>
</form>
```

```css
.checkbox {
  appearance: none;
  width: 18px;
  height: 18px;
  border: 2px solid #ccc;
  border-radius: 4px;
  display: inline-block;
  position: relative;
  cursor: pointer;
  transition: all 0.25s ease;
  vertical-align: middle; 
}

.checkbox:hover {
  border-color: #888;
}

.checkbox:checked {
  background-color: #4caf50;
  border-color: #4caf50;
}

.checkbox:checked::after {
  content: "";
  position: absolute;
  left: 4px;
  top: 0px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 2px 2px 0;
  transform: rotate(45deg);
}

.checkbox:focus {
  outline: 2px solid #90caf9;
  outline-offset: 2px;
}

```

:::

在此示例中，我们使用设置为 `none` 的 `appearance` 属性来移除浏览器对复选框输入应用的默认样式。当用户勾选该框时，它将具有 `green` 的背景颜色。

其他动作伪类的示例有：

- `:focus-within`：当元素或其任何后代获得焦点时，为该元素应用样式。
- `:enabled`：用于定位当前已启用的表单按钮或其他元素。
- `:disabled`：用于定位被禁用的表单按钮或其他元素。
- `:target`：用于将样式应用到作为 URL 片段（URL 中 `#` 符号后部分）目标的元素。

# --questions--

## --text--

用户操作伪类允许你做什么？

## --answers--

它们启用动画和过渡。

### --feedback--

考虑如何仅用 CSS 与用户交互。

---

它们允许你动态修改 DOM 结构。

### --feedback--

考虑如何仅用 CSS 与用户交互。

---

它们允许你在不依赖 JavaScript 的情况下向用户提供反馈。

---

它们允许你为列表中的最后一个元素设置样式。

### --feedback--

考虑如何仅用 CSS 与用户交互。

## --video-solution--

3

## --text--

CSS 中的 `:checked` 伪类有什么作用？

## --answers--

当元素被禁用时，它会被选中。

### --feedback--

考虑表单如何处理用户选择。

---

当元素被悬停时，它会被选中。

### --feedback--

考虑表单如何处理用户选择。

---

它为被选中的复选框或单选按钮等元素设置样式。

---

当元素获得焦点时，它会应用样式。

### --feedback--

考虑表单如何处理用户选择。

## --video-solution--

3

## --text--

`:focus` 伪类的作用是什么？

## --answers--

当鼠标悬停在元素上时，它会选择该元素。

### --feedback--

考虑用户如何使用键盘导航表单。

---

当一个元素获得焦点时应用样式，通常通过键盘导航或点击实现。

---

它在提交表单后选择一个元素。

### --feedback--

考虑用户如何使用键盘导航表单。

---

当元素被禁用时，它会应用样式。

### --feedback--

考虑用户如何使用键盘导航表单。

## --video-solution--

2
