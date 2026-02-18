---
id: 66ed8fedf45ce3ece4053eb3
title: CSS Grid 测验
challengeType: 8
dashedName: quiz-css-grid
---

# --description--

要通过测验，你必须正确回答以下 20 道题中的至少 18 题。

# --quizzes--

## --quiz--

### --question--

#### --text--

什么是 CSS Grid？

#### --distractors--

用于在网站上显示表格的一种方法。

---

用于平铺图像的一种方法。

---

在 HTML 元素周围显示轮廓的一种方法。

#### --answer--

HTML 文档的一种二维布局。

### --question--

#### --text--

以下哪个是创建网格容器的正确方法？

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

`grid-template-columns` 属性有什么作用？

#### --distractors--

为网格容器定义两列三行。

---

将网格布局的所有列设置为固定长度。

---

创建两列网格布局容器。

#### --answer--

定义网格布局中的列数。

### --question--

#### --text--

`grid-template-rows` 属性有什么作用？

#### --distractors--

指定网格项在网格布局中的大小和位置。

---

创建用于创建新网格行的模板。

---

指定网格容器中的默认行大小。

#### --answer--

指定网格布局中每行的数量和高度。

### --question--

#### --text--

`minmax()` 函数的作用是什么？

#### --distractors--

根据可用空间，在第一个值和第二个值之间切换。

---

返回两个输入值的平均值。

---

为全屏模式下的浏览器设置元素的最小尺寸。

#### --answer--

设置轨道的最小和最大尺寸。

### --question--

#### --text--

`column-gap` 和 `row-gap` 属性的简写是什么？

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

隐式网格和显式网格的区别是什么？

#### --distractors--

隐式网格使用 `grid-template-columns` 属性，而显式网格使用 `grid-template-rows` 属性。

---

显式网格使用 `grid-template-columns` 属性，而隐式网格使用 `grid-template-rows` 属性。

---

隐式网格使用 `grid-template-columns` 或 `grid-template-rows` 属性创建列，而显式网格会自动创建行和列。

#### --answer--

显式网格使用 `grid-template-columns` 或 `grid-template-rows` 属性创建列，而隐式网格会自动创建行和列。

### --question--

#### --text--

下面哪个单位表示网格容器内空间的一个部分？

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

什么是网格线？

#### --distractors--

行和列的简写。

---

网格元素的轮廓。

---

创建网格列和行的线。

#### --answer--

每个网格项目开始和结束的线。

### --question--

#### --text--

`grid-column` 属性有什么作用？

#### --distractors--

添加一个新的网格元素，作为所应用元素的子元素。

---

垂直对齐网格项中的文本。

---

为网格容器设置两个列。

#### --answer--

告诉网格项应在哪条网格线上开始和结束。

### --question--

#### --text--

如何创建宽度相等的四列？

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

`grid-template-areas` 属性有什么作用？

#### --distractors--

用于指定项目在网格容器中的起始线。

---

它用于在容器内的轨道之间创建间隙。

---

它用于重复轨道列表中的部分。 

#### --answer--

它用于为要在网格上定位的项目提供名称。

### --question--

#### --text--

`grid-auto-flow` 属性有什么作用？

#### --distractors--

控制网格项的显示顺序。

---

调整网格元素之间的间距。

---

自动调整元素以适应网格。

#### --answer--

控制自动放置元素插入网格的方式。

### --question--

#### --text--

以下哪项是使用 `grid-template-areas` 属性的正确方法？

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

以下哪项是使用 `grid-auto-flow` 属性的正确方法？

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

以下哪项不是有效的网格属性？

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

哪个属性可用于将网格元素内的项目居中？

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

以下哪项是与 `grid-auto-columns` 属性一起使用的正确值？

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

什么是网格轨道？

#### --distractors--

行和列的简写。

---

你可以为网格项目的移动设置动画的线。

---

每个网格项目开始和结束的线。

#### --answer--

相邻两条网格线之间的空间。

### --question--

#### --text--

以下哪项是使用 `minmax()` 函数的正确方法？

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

如何在由 `grid-template-areas` 定义的布局中定位网格项？

#### --distractors--

使用 `grid-template-rows` 和 `grid-template-columns` 直接定义项目的大小和在网格中的位置。

---

使用 `grid-area` 属性并指定行和列的开始和结束位置。

---

同时设置 `grid-area` 和显式像素坐标。

#### --answer--

将命名的区域分配给项目的 `grid-area` 属性。

### --question--

#### --text--

`grid-auto-rows` 属性控制什么？

#### --distractors--

显式定义的行的高度。

---

网格列的最大宽度。

---

行间距。

#### --answer--

隐式创建行的大小。

### --question--

#### --text--

使用哪个属性可以使网格项跨多行？

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

如何定义显式网格？

#### --distractors--

根据内容自动创建轨道。

---

由 `fr` 单位定义的轨道。

---

使用 `grid-auto-flow` 添加的轨道。

#### --answer--

通过 `grid-template-columns` 或 `grid-template-rows` 明确设置的轨道。

### --question--

#### --text--

`grid-auto-flow` 的哪个值会使新项目优先填充列？

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

`grid-template-areas` 的目的是什么？

#### --distractors--

自动生成隐式轨道。

---

替换 `fr` 单位。

---

设置 `z-index` 值。

#### --answer--

将项目直观地映射到命名网格区域。

### --question--

#### --text--

如何使网格项从第 2 列开始，到第 4 列结束？

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

`grid-template-columns: 1fr 2fr 1fr` 的作用是什么？

#### --distractors--

创建三个等宽列。

---

使中间列的宽度是其他列的三倍。

---

强制所有列的宽度正好为 `1fr` 宽。

#### --answer--

创建三列，中间列宽是两边列宽的两倍。

### --question--

#### --text--

如何创建这样一个网格，网格有 3 个相等的列，列与列之间有 `20px` 的间隙？

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

`repeat(3, minmax(100px, 1fr))` 能创建什么？

#### --distractors--

三个不能缩小到 `100px` 以下的列。

---

三个固定宽度为 `100px` 的列。

---

三个最大高度为 `1fr` 的行。

#### --answer--

三个按比例缩放的列，但不能缩小到 `100px` 以下。

### --question--

#### --text--

关于隐式网格，哪种说法是正确的？

#### --distractors--

隐式网格忽略 `gap` 属性。

---

必须使用 `grid-template-areas` 来定义隐式轨道。

---

只能使用 `grid-auto-flow` 属性创建隐式轨道。

#### --answer--

当内容不适合显式轨道时，就会创建隐式轨道。

### --question--

#### --text--

CSS Grid 中的 `place-items` 属性有什么作用？

#### --distractors--

它会根据可用空间自动设置网格项的大小。

---

它控制网格模板的列和行定义。

---

它可以调整容器内网格项的顺序。

#### --answer--

它是在堆叠轴和行内轴上对齐网格项的简写。

### --question--

#### --text--

这个 CSS 有什么作用？

```css
.container {
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
}
```

#### --distractors--

创建溢出容器的固定宽度为 `150px` 列。

---

创建宽度正好为 `1fr` 的列，而不考虑内容。

---

每 `150px` 可用宽度内最多创建一列。

#### --answer--

创建弹性列，最小列宽为 `150px`，并在空间受限时收缩。

### --question--

#### --text--

如何创建不对称网格布局？

#### --distractors--

只使用 `fr` 单位。

---

在 `grid-template-columns` 中混合不同的长度单位。

---

通过设置 `grid-asymmetric: true`。

#### --answer--

为每个轨道定义不同的尺寸。

### --question--

#### --text--

`grid-column-start: 2` 对于一个网格项的作用是什么？

#### --distractors--

使其跨越 2 列。

---

使其偏移 2 个像素。

---

使其从第二条垂直网格线开始定位。

#### --answer--

使其从第二列开始。

### --question--

#### --text--

你会使用哪个属性来控制网格轨道的溢出行为？

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

下面代码的结果是什么？

```css
.container {
  display: grid;
  grid-template-columns: 100px 1fr 2fr;
  grid-template-rows: auto 150px;
  gap: 10px;
}
```

#### --distractors--

容器将有宽度相等的三列和高度为 `150px` 的两行。

---

容器将有宽度为 `100px` 的三列和高度为 `150px` 的两行。

---

容器将有两行，每行高度为 `1fr` 。

#### --answer--

容器将有三列：100px、 `1fr` 和 `2fr` 宽以及两行：一行高度为自动、一行高度为 `150px`。

### --question--

#### --text--

如何让网格项跨越所有可用行？

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

哪个属性可以控制网格项沿堆叠轴的对齐？

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

如何确保无论网格如何变化，网格项都保持在第一列？

#### --distractors--

`grid-column: fixed;`

---

`grid-column: first;`

---

`grid-lock: column;`

#### --answer--

`grid-column: 1;`
