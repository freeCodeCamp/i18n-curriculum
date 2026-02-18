---
id: 66ed8fa2f45ce3ece4053eab
title: CSS 基础测验
challengeType: 8
dashedName: quiz-basic-css
---

# --description--

要通过测验，你必须正确回答以下 20 道题中的至少 18 题。

# --quizzes--

## --quiz--

### --question--

#### --text--

CSS 代表什么？

#### --distractors--

层叠样式脚本

---

连接样式脚本

---

蓖麻圣贤风格

#### --answer--

层叠样式表

### --question--

#### --text--

以下哪项是正确的 CSS 规则？

#### --distractors--

`p=red`

---

`p (color: red)`

---

`{p color: red;}`

#### --answer--

`p {color: red;}`

### --question--

#### --text--

`<meta name="viewport">` 有什么作用？

#### --distractors--

它将外部样式表链接到网页以实现响应式设计。

---

它指定了搜索引擎用于索引网页的元数据。

---

它指定网页上使用的字符编码。

#### --answer--

它控制网页在不同屏幕尺寸上的形状和大小。

### --question--

#### --text--

使用哪种语法来编写内联 CSS 是正确的？

#### --distractors--

`<p color =  blue></p>`

---

`<p><style = blue></p>`

---

`p {color: blue;}`

#### --answer--

`<p style="color: blue;"></p>`

### --question--

#### --text--

使用内部 CSS 时，`style` 元素放置在超文本标记语言的哪里？

#### --distractors--

在 `meta` 元素中。

---

在 `script` 元素中。

---

在 `body` 元素中。

#### --answer--

在 `head` 元素中。

### --question--

#### --text--

在 CSS 中设置宽度和高度，哪个规则是正确的？

#### --distractors--

`height-width: 50px;`

---

`width-and-height: 50px;`

---

`flex-width: 50px; flex-height: 50px;`

#### --answer--

`width: 50px; height: 50px;`

### --question--

#### --text--

哪个选择器仅在 `div` 内正确定位 `h1` 元素？

#### --distractors--

`div, h1 {}`

---

`div ~ h1 {}`

---

`div + h1 {}`

#### --answer--

`div h1 {}`

### --question--

#### --text--

哪个选择器是正确的，用于定位 `footer` 的直接子元素？

#### --distractors--

`footer ~ ul {}`

---

`footer + ul {}`

---

`footer ul {}`

#### --answer--

`footer > ul {}`

### --question--

#### --text--

哪个选择器是正确的，用于定位 `img` 的下一个兄弟元素？

#### --distractors--

`img h1 {}`

---

`img > h1 {}`

---

`img ~ h1 {}`

#### --answer--

`img + h1 {}`

### --question--

#### --text--

哪个选择器是正确的，用于定位所有前面有 `img` 元素的兄弟元素？

#### --distractors--

`img > caption {}`

---

`img caption {}`

---

`img + caption {}`

#### --answer--

`img ~ caption {}`

### --question--

#### --text--

关于块级元素，哪个语句是正确的？

#### --distractors--

块级元素默认水平堆叠。

---

`width` 和 `height` 属性通常不应用于块级元素，除非你将它们的 `display` 属性设置为 `inline-block`。

---

块级元素不能包含内联元素。

#### --answer--

块级元素从新行开始，占据其容器的全部宽度。

### --question--

#### --text--

使用 `inline-block` 值时，哪个语句是正确的？

#### --distractors--

元素垂直堆叠，总是占据其容器的全部宽度。

---

元素水平对齐但不能应用垂直填充或边距。

---

元素遵守宽度和高度设置，但不能包含其他元素。

#### --answer--

元素保持内联流但允许设置宽度和高度。

### --question--

#### --text--

给定以下选择器，哪个具有最高的特异性？

#### --distractors--

`div`

---

`h1`

---

`p`

#### --answer--

`#id`

### --question--

#### --text--

给定以下选择器，哪个具有最低的特异性？

#### --distractors--

`#id`

---

`.class`

---

`div h1`

#### --answer--

`h1`

### --question--

#### --text--

`*` 选择器的作用是什么？

#### --distractors--

定位页面上的某些元素。

---

定位页面上有子元素的元素。

---

定位页面上所有的 `p` 元素。

#### --answer--

定位页面上的所有元素。

### --question--

#### --text--

`!important` 在 CSS 中有什么作用？

#### --distractors--

它使 CSS 规则仅对内联样式生效，并忽略在外部或内部样式表中定义的样式。

---

它禁用应用于同一元素的所有其他 CSS 属性，实际上使其成为唯一影响该元素样式的规则。

---

它应用于某个选择器或元素组。

#### --answer--

它会覆写应用于该选择器的该属性的任何其他值。

### --question--

#### --text--

CSS 级联算法是如何工作的？

#### --distractors--

它根据 `declaration` 的顺序确定元素的样式，而不考虑其他因素。

---

它仅根据书写顺序应用样式，忽略特异性。

---

它应用样式时优先考虑特异性，忽略来源和相关性。

#### --answer--

它根据声明的特异性和顺序确定元素的样式。

### --question--

#### --text--

哪个规则将 `32px` 的边距应用到所有边？

#### --distractors--

`margin-top: 32px;`

---

`margin: 32px 0;`

---

`margin: 0 32px;`

#### --answer--

`margin: 32px;`

### --question--

#### --text--

哪个规则对顶部和底部应用 `24px` 内边距？

#### --distractors--

`padding: 24px;`

---

`padding-top-bottom: 24px;`

---

`padding: 0 24px;`

#### --answer--

`padding: 24px 0;`

### --question--

#### --text--

对于 `padding: 10px 20px 30px 40px`，值的正确顺序是什么？

#### --distractors--

右、上、左、下。

---

上、左、下、右。

---

上、下、右、左。

#### --answer--

上、右、下、左。

## --quiz--

### --question--

#### --text--

CSS 规则的主要部分是什么？

#### --distractors--

元素和属性

---

样式和样式表

---

脚本和值

#### --answer--

选择器和声明块

### --question--

#### --text--

以下哪项是 CSS 规则的正确语法？

#### --distractors--

```css
body [
  font-family: Arial;
]
```

---

```css
font-family {
  body: Arial;
}
```

---

```css
body {
  font-family; Arial:
}
```

#### --answer--

```css
body {
  font-family: Arial;
}
```

### --question--

#### --text--

什么是默认浏览器样式？

#### --distractors--

具有相同样式属性且不受浏览器影响的超文本标记语言元素。

---

它们是你必须为特定 `HTML` 元素使用的强制样式。

---

它们是各种浏览器的颜色主题。

#### --answer--

浏览器自动应用的 CSS 规则。

### --question--

#### --text--

`width` 属性的默认值是多少？

#### --distractors--

`none`

---

`0`

---

`100%`

#### --answer--

`auto`

### --question--

#### --text--

`min-height` 属性指定什么？

#### --distractors--

元素的起始高度。

---

元素的高度。

---

元素的最大高度。

#### --answer--

元素的最小高度。

### --question--

#### --text--

以下关于通用选择器 `*` 哪项是正确的？

#### --distractors--

它具有最高的特异性，因为它可以为页面上的所有元素设置样式。

---

它为特异性值的所有部分贡献 1。 

---

它无法跨不同浏览器重置样式。

#### --answer--

它具有所有选择器中最低的特异性值。

### --question--

#### --text--

哪个选择器能正确定位有序列表的 `li` 元素？

#### --distractors--

`li {}`

---

`ul li {}`

---

`ol + li {}`

#### --answer--

`ol li {}`

### --question--

#### --text--

哪个选择器定位 `div` 元素的段落元素？

#### --distractors--

`p div {}`

---

`div, p {}`

---

`p, div {}`

#### --answer--

`div p {}`

### --question--

#### --text--

`margin` 在哪里应用样式属性？

#### --distractors--

元素内部的空间。

---

内容和边框之间。

---

在元素的边框上。

#### --answer--

元素外部的空间。

### --question--

#### --text--

`padding` 属性应用于哪里进行样式设置？

#### --distractors--

在元素边框和周围元素之间。

---

元素外部的空间。

---

在元素的边框上。

#### --answer--

元素内部的空间。

### --question--

#### --text--

关于块级元素，哪个语句是错误的？

#### --distractors--

它们可以拉伸以适应其容器的宽度。

---

常见的块级元素包括 `div`、`paragraph` 和 `section`。

---

块级元素从新行开始，占据其容器的全部宽度。

#### --answer--

它们不能占用全部可用宽度，因为它们被阻止这样做。

### --question--

#### --text--

使用 `inline-block` 值时，哪个语句是错误的？

#### --distractors--

`inline-block` 元素的行为类似内联元素。

---

它们可以有 `width` 和 `height` 属性。

---

元素保持内联流，但允许设置 `width` 和 `height`。

#### --answer--

它们不与内联或块级元素共享属性。

### --question--

#### --text--

关于 `!important` 关键字，哪个是正确的？

#### --distractors--

它们用于为重要的 CSS `property` 添加评论。

---

它们确保 CSS 属性具有正确的语法。

---

它们使 CSS 规则更易于维护。

#### --answer--

它们覆写其他选择器的特异性。

### --question--

#### --text--

哪个字符位于类选择器名称之前？

#### --distractors--

`#`

---

`$`

---

`*`

#### --answer--

`.`

### --question--

#### --text--

关于内联级元素，哪个是错误的？

#### --distractors--

它们只占用所需的空间。

---

它们不会从新行开始。

---

常见的内联元素包括 `span` 和 `img`。

#### --answer--

它们总是在新建一行开始。

### --question--

#### --text--

内部 CSS 样式在哪里被访问？

#### --distractors--

它们是对项目重要的样式，因此不会对外共享。

---

由于它们构成了项目的核心样式，它们被储存在 `styles.css` 文件中，以便其他网页可以访问它们。

---

当只有一个网页需要样式时，它们存储在 `body` 元素内。

#### --answer--

它们写在 `head` 元素内的 `style` 部分。

### --question--

#### --text--

使用简写语法时，应用 `padding` 属性的顺序是什么？ 

#### --distractors--

`top`、`bottom`、`left`、`right`

---

`left`、`right`、`top`、`bottom`

---

`right`、`top`、`left`、`bottom`

#### --answer--

`top`、`right`、`bottom`、`left`

### --question--

#### --text--

使用简写语法时，应用 `margin` 属性的顺序是什么？ 

#### --distractors--

`left`、`right`、`top`、`bottom`

---

`right`、`top`、`left`、`bottom`

---

`top`、`bottom`、`left`、`right`

#### --answer--

`top`、`right`、`bottom`、`left`

### --question--

#### --text--

内联 CSS 样式用于什么？

#### --distractors--

它们仅用于为内联元素设置样式。

---

它们仅在所有元素出现在浏览器视口的同一行时用于为元素设置样式。

---

它们用于解析关注点分离的问题。

#### --answer--

它们用于直接在元素内进行样式设置，而不是使用内部或外部 CSS。

### --question--

#### --text--

ID 选择器前面是什么符号？

#### --distractors--

`.`

---

`*`

---

`$`

#### --answer--

`#`

