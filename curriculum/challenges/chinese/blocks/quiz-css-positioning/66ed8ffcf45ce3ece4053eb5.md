---
id: 66ed8ffcf45ce3ece4053eb5
title: CSS 定位测验
challengeType: 8
dashedName: quiz-css-positioning
---

# --description--

要通过测验，你必须正确回答以下 20 道题中的至少 18 题。

# --quizzes--

## --quiz--

### --question--

#### --text--

以下哪项不是 `position` 属性的有效值？

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

CSS 中的 `float` 属性的主要用途是什么？

#### --distractors--

浮动用于将元素从页面上的正常流程中移除，并自动定位到网页的右上方。

---

浮动用于将元素从其在页面上的正常流程中移除，并将其定位到其容器的顶部。

---

浮动用于将元素从页面的正常流程中移除，并自动定位到网页的右下方。

#### --answer--

浮动用于将元素从页面上的正常流程中移除，并将其放置在容器的左侧或右侧。

### --question--

#### --text--

以下哪项是使盒子元素向左浮动的示例？

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

`clear` 属性的作用是什么？

#### --distractors--

用于确定是否需要将元素移动到页面底部。

---

它用于确定元素是否需要从页面中完全清除。

---

用于确定元素是否需要固定在页面顶部。

#### --answer--

用于确定是否需要将元素移动到浮动内容下方。

### --question--

#### --text--

哪个 CSS 属性用于控制页面上重叠定位元素的垂直堆叠顺序？

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

以下哪项是相对定位的正确语法？

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

使用哪个 CSS 属性可以将元素固定在页面上的某个位置，使其在滚动时不会移动？

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

绝对定位对一个元素有什么作用？

#### --distractors--

绝对定位用于确定元素是否需要移动到浮动内容的下方。

---

绝对定位用于在正常文档流中定位元素。

---

绝对定位用于控制页面上重叠定位元素的垂直堆叠顺序。

#### --answer--

绝对定位允许你将一个元素从正常的文档流程中分离出来，使其行为独立于其他元素。

### --question--

#### --text--

以下哪项不是可以用于绝对定位的有效属性？

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

相对定位和绝对定位的主要区别是什么？

#### --distractors--

绝对定位将元素设置在一个固定位置，而相对定位则将元素从正常文档流中移出。

---

相对定位将元素设置在一个固定位置，而绝对定位则将元素从正常文档流中移除。

---

绝对定位将元素置于正常文档流内，而相对定位则将元素置于正常文档流之外。

#### --answer--

相对定位将元素置于正常文档流内，而绝对定位则将元素置于正常文档流之外。

### --question--

#### --text--

以下哪项是将盒子定位在页面左上角的示例？

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

哪种定位方法可以让元素在滚动到某一点时保持在指定位置？

#### --distractors--

浮动定位。

---

固定定位。

---

绝对定位。

#### --answer--

粘性定位。

### --question--

#### --text--

以下哪项是使用粘性定位的正确示例？

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

粘性定位和固定定位有什么区别？

#### --distractors--

粘性元素只能在表格布局中使用，而固定元素可以在任何类型的 CSS 布局中使用。

---

粘性元素会始终保持在同一位置，而固定元素会粘在某一点上，然后表现得像相对元素。

---

固定元素会相对于其正常位置定位，而粘性元素只会粘在某一点上，然后表现得像相对元素一样。

#### --answer--

固定元素会保持在屏幕上的同一位置，而粘性元素只会粘在某一点上，然后表现得像相对元素。

### --question--

#### --text--

在使用浮动时，`clearfix` 技术解决了什么问题？

#### --distractors--

`clearfix` 技术帮助解决了浮动元素从正常文档流中移除并放置在页面固定位置的问题。

---

`clearfix` 技术帮助解决了浮动元素在手机和平板电脑布局中无法响应的问题。

---

`clearfix` 技术帮助解决了浮动元素从页面上消失的问题。

#### --answer--

当多个浮动元素堆叠在一起时，`clearfix` 技术帮助解决了布局中的重叠和折叠问题。

### --question--

#### --text--

以下哪项是使用 `clearfix` 技术的正确示例？

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

什么是静态定位？

#### --distractors--

用于将元素从页面的正常流程中移除，并自动将其定位在网页的右上方。

---

允许你将一个元素从正常的文档流程中分离出来，使其行为独立于其他元素。

---

允许元素仅在滚动到某一点时保持在指定位置。

#### --answer--

这是文件的正常流程。 元素从上到下、从左到右依次定位。

### --question--

#### --text--

以下哪项是使用固定定位将导航栏设置到页面顶部的示例？

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

以下哪项是 `z-index` 属性的有效值？

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

以下哪项是 `position` 属性的默认值？

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

哪个 `position` 值可以让你用 `top` 和 `left` 调整元素的位置，同时使其保持在正常的文档流中？

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

带有 `position: sticky;` 的元素最初会有什么表现？

#### --distractors--

在到达滚动位置之前，它的行为类似于 `fixed`元素。

---

它总是从正常文件流中移除。

---

它的行为类似于父元素中的 `absolute` 元素。

#### --answer--

在达到指定的滚动位置之前，它的行为类似于 `relative`元素。

### --question--

#### --text--

以下哪项演示了有效使用 `z-index` 属性使 `.box-two` 显示在 `.box-one` 的上面？

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

CSS 中的 `z-index` 属性有什么作用？

#### --distractors--

它设置页面的缩放级别。

---

它控制弹性容器中元素的水平对齐方式。

---

它定义元素内容与其边框之间的间距。

#### --answer--

它控制重叠定位元素的垂直堆叠顺序。

### --question--

#### --text--

当你将 `top: 10%;` 应用于 `position: fixed;` 定位的元素时，`10%` 是根据什么计算的？

#### --distractors--

元素本身的高度。

---

父容器的高度。

---

视口的宽度。

#### --answer--

视口的高度。

### --question--

#### --text--

哪个代码示例是正确使用 `z-index` 属性将叠加内容置于其他内容之上？

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

哪个 CSS 属性用于控制元素是否应移动到浮动元素下方？

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

具有 `position: relative;` 和 `bottom: 25px;` 的元素将如何移动？

#### --distractors--

它将从正常位置向下移动 25px。

---

它将从正常位置向右移动 25px。

---

它将被置于距离视口底部 25px 处。

#### --answer--

它将从正常位置向上移动 25px。

### --question--

#### --text--

`z-index` 属性只会影响应用了什么 CSS 属性的元素？

#### --distractors--

具有除 `none` 值以外的 `float` 的。

---

`display` 属性值为 `inline-block` 的。

---

设置了 `background-color` 的。

#### --answer--

具有除 `static` 值以外的 `position` 的。

### --question--

#### --text--

对页头中的 logo 应用 `float: right;` 会产生什么效果？

#### --distractors--

Logo 将向右对齐，但仍保留在正常的文档流中，防止其他内容被包裹。

---

Logo 将从文档流中移出，放置在整个浏览器视口的右侧，而不是其容器中。

---

Logo 将成为一个块级元素，占据整个页头的宽度，并将其他元素推到其下方。

#### --answer--

Logo 将从其正常文档流中移除，放在其容器的右侧，其他内容包裹在其周围。

### --question--

#### --text--

滚动到视口顶部后，哪个 CSS 代码段能使元素固定在视窗顶部？

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

CSS 中的 `clear: both;` 的具体作用是什么？

#### --distractors--

它会取消元素本身的 `float` 属性，使其返回正常文档流。

---

它会删除从父元素继承的任何 `clear` 属性，恢复默认的浮动行为。

---

它只清除右侧的浮动元素，允许左侧的浮动元素保持原样。

#### --answer--

它可以确保元素被移动到在它之前出现的任何浮动元素的左侧和右侧下方。

### --question--

#### --text--

给定以下代码，`.child` 将如何定位？

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

它将被放置在距离 `.parent` 元素顶部 10px 的位置，因为`absolute` 定位总是相对于直接父级。

---

由于 `absolute` 值在没有 `z-index` 属性的情况下无效，因此它将保持默认的静态位置。

---

它的位置距离浏览器窗口顶部 10px，即使用户滚动页面也不会移动。

#### --answer--

它将距离初始包含块（例如 `<body>`）顶部 10px，因为它的父元素没有定位。

### --question--

#### --text--

以下 CSS 将对 `.box` 元素产生什么影响？

```css
.box {
  position: absolute;
  top: 50px;
  left: 50px;
}
```

#### --distractors--

该元素将保持正常文档流，但会从顶部和左侧缩进 50px，将其他元素推开。

---

该元素将固定在视口中，即使页面滚动，也会保持距顶部 50px 和距左侧 50px 的距离。

---

元素将相对于自己的起点定位，向下移动 50px 并向右移动 50px，而不会离开文档流。

#### --answer--

该元素将从正常文档流中移出，并放置在距离其最近位置的祖先顶部和左侧各 50px 的位置。

### --question--

#### --text--

以下哪个 `position` 值可以将元素从正常文档流程中完全删除？

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

给定一个 `.parent` 和一个 `.child` 元素，哪个 CSS 代码段可以正确地将 `.child` 定位在距离 `.parent` 元素左上角 20px 的位置？

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

`static` 和 `relative` 定位的区别是什么？

#### --distractors--

`static` 定位将元素从文档流中移除，而 `relative` 定位则使其保持在文档流中。

---

带有 `position: static;` 的元素可以使用 `top` 和 `left` 属性进行偏移，而 `position: relative;` 则不行。

---

`static` 定位用于块级元素，而 `relative` 定位只适用于内联元素。

#### --answer--

两者都能使元素保持在正常文档流中，但 `relative` 允许元素偏离其原始位置。

### --question--

#### --text--

哪个 CSS 代码段可以正确地将图片浮动到左侧，从而使其他内容可以围绕图片展开？

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

`absolute` 和 `fixed` 定位的区别是什么？

#### --distractors--

`absolute` 定位是相对于视口而言的，而 `fixed` 定位则是相对于最近的已定位祖先。

---

`absolute` 定位使元素保持在正常的文档流中，而 `fixed` 定位会将其从文档流中移除。

---

两者都相对于视口定位，但 `fixed` 元素将随页面滚动，而 `absolute` 元素则不会。

#### --answer--

`absolute` 定位是相对于最近的已定位祖先，而 `fixed` 定位则是相对于浏览器视口。

### --question--

#### --text--

哪个 `position` 值可将元素置于正常文档流中，并防止 `top` 和 `left` 等偏移属性产生任何影响？

#### --distractors--

`position: relative;`

---

`position: absolute;`

---

`position: fixed;`

#### --answer--

`position: static;`

