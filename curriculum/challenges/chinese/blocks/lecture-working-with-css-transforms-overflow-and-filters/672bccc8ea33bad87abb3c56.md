---
id: 672bccc8ea33bad87abb3c56
title: content-box 和 border-box 有什么区别？
challengeType: 19
dashedName: what-is-the-difference-between-content-box-and-border-box
---

# --interactive--

`box-sizing` 属性可以设置为 `content-box` 或 `border-box`，用于控制元素的宽度和高度是如何计算的。

该属性也可以在通配选择器（`*`）上设置，使其应用于文档的所有元素：

```css
* {
  box-sizing: border-box;
}
```

`box-sizing` 的默认值是 `content-box`，但如果需要，你可以选择 `border-box`。 下面我们先讲 `content-box`，再讲 `border-box`。

要理解这些模型如何工作，你需要熟悉 CSS 盒模型中的四个核心概念。让我们快速回顾一下它们。

- 内容区域是元素内容所占的空间。
- 内边距是内容区域和边框之间的空间。
- 边框是环绕内容区域和内边距的轮廓。
- 外边距是边框外的空间，用于将元素与其他元素分隔开来。

在 `content-box` 模型中，你为一个元素设置的宽度和高度决定了内容区域的维度，但不包括内边距、边框或外边距。当你需要对内容区域进行精确控制时，使用 `content-box`。当你设置 `width` 和 `height` 时，你仅仅是在设置内容本身的大小。

要查找元素的总宽度，你需要添加左侧和右侧的内边距，以及左侧和右侧的边框。同样，元素的总高度可以通过添加内容高度、顶部和底部的内边距，以及顶部和底部的边框来查找。

例如，这里我们为所有 `div` 元素设置了一个 CSS 类型选择器。 

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div></div>
```

```css
div {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
}
```

:::

在这种分支中，如果使用 `content-box`，内容区域将是 300px × 200px。总渲染大小包括内边距和边框——例如，总宽度 = 300px（内容）+ 40px（内边距）+ 8px（边框）= 348px；总高度的计算方式相同。

很好！ 现在我们来看 `border-box`。  It's different because the width and height you set include the element's content, padding, and border (but not its margin).  Use `border-box` when you want the element's total size to stay fixed even if padding or borders change — that's often helpful in responsive layouts.

使用 `border-box` 时，内边距和边框包含在元素指定的大小内。你设置的 `width` 和 `height` 成为元素的总维度：内容 + 内边距 + 边框；外边距仍然被排除。

在以下示例中，有两个具有相同维度但不同 `box-sizing` 值的 `div` 元素。注意这如何导致在浏览器中显示时总尺寸不同：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div class="box" id="red-div"></div>
<div class="box" id="blue-div"></div>
```


```css
.box {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
  margin: 10px;
}

#red-div {
  box-sizing: content-box;
  background-color: red;
}

#blue-div {
  box-sizing: border-box;
  background-color: blue;
}
```

:::

你可以看到，二者具有相同的 `width`、`height`、`padding`、`border` 和 `margin`。  The only differences are in the colors and the value of the `box-sizing` property. 这微小的差别对最终尺寸有着非常重要的影响。 

`content-box` 和 `border-box` 之间的选择，实际上取决于项目的具体需求。 虽然 `border-box` 因其简单灵活而越来越受欢迎，但了解这两种模型对于实现有效的 CSS 布局非常重要。

# --questions--

## --text--

在大多数浏览器中，以下哪项是 `box-sizing` 属性的默认值？

## --answers--

`content-box`

---

`border-box`

### --feedback--

想想元素大小的默认行为。

---

`padding-box`

### --feedback--

想想元素大小的默认行为。

---

`margin-box`

### --feedback--

想想元素大小的默认行为。

## --video-solution--

1

## --text--

使用 `border-box` 创建响应式布局的主要优势是什么？

## --answers--

这使得计算更加复杂。

### --feedback--

想一想 `border-box` 模型是如何在指定的 `width` 和 `height` 内部处理 `padding` 和 `border` 的。

---

它可以更精确地控制元素尺寸。

### --feedback--

想一想 `border-box` 模型是如何在指定的 `width` 和 `height` 内部处理 `padding` 和 `border` 的。

---

无论 `padding` 和 `border` 如何变化，它都能确保元素保持指定的尺寸。

---

它提高了浏览器的兼容性。

### --feedback--

想一想 `border-box` 模型是如何在指定的 `width` 和 `height` 内部处理 `padding` 和 `border` 的。

## --video-solution--

3

## --text--

在 `content-box` 模型中，元素的指定 `width` 代表什么？

## --answers--

元素的总 `width`，包括 `padding`、`border` 和 `margin`。

### --feedback--

请思考 `content-box` 模型中内容区域和整体元素尺寸之间的关系。

---

仅内容区域的 `width`。

---

`border` 的 `width`。

### --feedback--

请思考 `content-box` 模型中内容区域和整体元素尺寸之间的关系。

---

`padding` 的 `width`。

### --feedback--

请思考 `content-box` 模型中内容区域和整体元素尺寸之间的关系。

## --video-solution--

2
