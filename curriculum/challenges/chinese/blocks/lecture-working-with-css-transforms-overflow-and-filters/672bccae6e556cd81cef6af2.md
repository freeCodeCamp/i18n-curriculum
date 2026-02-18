---
id: 672bccae6e556cd81cef6af2
title: 什么是外边距折叠，它如何工作？
challengeType: 19
dashedName: what-is-margin-collapsing
---

# --interactive--

外边距折叠是 CSS 中一个常见但容易让初学者感到困惑的基础概念。

这种行为发生在相邻元素的垂直外边距发生重叠时，结果是合并成一个外边距，等于两者中较大的那一个。

理解外边距折叠对于精确控制网页布局和元素间距非常重要。 那么，我们来具体看看外边距折叠是如何工作的，并探索一些常见的折叠场景。

在 CSS 中，当两个垂直边距相互接触时，它们会合并，这意味着不会相加，而是较大的边距生效并决定元素之间的间距。此行为仅适用于垂直边距（上和下），不适用于水平边距（左和右）。所以，这里有一个示例来说明这个概念：

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

在这个例子中，你可能会期望 `.box1` 和 `.box2` 之间的间距是 50 像素（20 像素 + 30 像素）。 但由于外边距折叠，实际间距会是 30 像素，也就是两个外边距中较大的那个。

As we saw in the previous example, margins of the adjacent sibling elements will collapse. 这是外边距折叠最简单直观的情况。 我们来看看还有哪些情况会发生折叠。 

外边距也可能在父元素与其第一个或最后一个子元素之间折叠。 如果父元素和子元素之间没有边框、内边距、内联内容或清除，它们就会折叠。

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

在这个分支中，你可能期望子元素距离顶部 70 像素（40 像素加 30 像素）。然而，边距会合并，使用较大的 40 像素边距。

如果一个元素没有内容、内边距或边框，它的上下外边距也会合并为一个单独的外边距。 

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

在此示例中，`empty-block` 的上下边距合并为单个 20 像素边距，即两者中较大的那个。

以下是使用填充防止折叠的示例： 

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

在这种分支中，父元素上的 1 像素内边距防止了外边距折叠，导致从父元素顶部到子内容顶部的总间距为 71 像素。

理解外边距折叠对于精准控制 CSS 布局和间距非常关键。  While it can sometimes lead to unexpected results, it's a feature designed to create more aesthetically pleasing and consistent spacing in documents. 只要掌握了什么时候会发生折叠，以及如何在需要时阻止它，就能创建更可控、可维护的网页布局。

# --questions--

## --text--

外边距折叠在哪个方向发生？

## --answers--

仅水平外边距。

### --feedback--

想想哪些边距（上、下、左、右）会受到这种行为的影响。

---

仅垂直外边距。

---

水平和垂直外边距。

### --feedback--

想想哪些边距（上、下、左、右）会受到这种行为的影响。

---

对角外边距。

### --feedback--

想想哪些边距（上、下、左、右）会受到这种行为的影响。

## --video-solution--

2

## --text--

当两个相邻元素有不同的外边距时会发生什么？

## --answers--

外边距会相加。

### --feedback--

考虑一下，当折叠发生时，哪个外边距会“赢”。

---

使用较小的外边距。

### --feedback--

考虑一下，当折叠发生时，哪个外边距会“赢”。

---

使用较大的外边距。

---

使用两个外边距的平均值。

### --feedback--

考虑一下，当折叠发生时，哪个外边距会“赢”。

## --video-solution--

3

## --text--

以下哪项不能阻止父元素与第一个子元素之间发生外边距折叠？

## --answers--

为父元素添加 `border`。

### --feedback--

想想哪些属性会在父子外边距之间产生分隔。

---

在父元素上设置 `padding-top: 1px;`。

### --feedback--

想想哪些属性会在父子外边距之间产生分隔。

---

在子元素上使用 `display: inline-block;`。

### --feedback--

想想哪些属性会在父子外边距之间产生分隔。

---

在子元素上设置 `margin-top: 0;`。

## --video-solution--

4
