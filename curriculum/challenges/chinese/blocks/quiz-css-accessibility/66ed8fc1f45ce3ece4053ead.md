---
id: 66ed8fc1f45ce3ece4053ead
title: CSS 可访问性测验
challengeType: 8
dashedName: quiz-css-accessibility
---

# --description--

要通过测验，你必须正确回答以下 10 道题中的至少 9 题。

# --quizzes--

## --quiz--

### --question--

#### --text--

为什么需要在网页上保持良好的颜色对比度？

#### --distractors--

使页面更加生动。

---

满足搜索引擎优化 (SEO) 的要求。

---

突出页面的重要元素。

#### --answer--

使页面内容易于访问和阅读。

### --question--

#### --text--

以下哪个工具允许你输入背景色和前景色并检查它们的对比度？

#### --distractors--

TPGi 颜色对比分析器

---

Figma

---

Canva

#### --answer--

WebAIM 颜色对比度检查器

### --question--

#### --text--

以下哪个工具允许你从屏幕上显示的内容中选择背景色和前景色并查看它们的对比度比率？

#### --distractors--

Figma

---

Canva

---

WebAIM 颜色对比度检查器

#### --answer--

TPGi 颜色对比分析器

### --question--

#### --text--

为什么不能使用 `display: none` 和 `visibility: hidden` 来隐藏内容？

#### --distractors--

这些方法使得只有屏幕阅读器等辅助技术才能访问隐藏内容。

---

这些方法可以使内容隐藏起来，直到用户将鼠标移到内容上。

---

这些方法在某些浏览器中不起作用。

#### --answer--

这些方法会将内容从可访问性树中移除，使屏幕阅读器无法访问隐藏的内容。

### --question--

#### --text--

什么是可访问性树？

#### --distractors--

网页布局的可视化表示。

---

屏幕阅读器用来阅读网页文本内容的结构。

---

DOM 树的副本。

#### --answer--

屏幕阅读器用来解释网页内容并与之互动的结构。

### --question--

#### --text--

以下哪项可确保图像的最小宽度为 `400px` ，但当视口宽度大于 `1000px` 时，宽度会变宽？

#### --distractors--

```css
img {
  width: max(400px, 10vw);
}
```

---

```css
img {
  width: max(400px, 30vw);
}
```

---

```css
img {
  width: max(400px, 20vw);
}
```

#### --answer--

```css
img {
  width: max(400px, 40vw);
}
```

### --question--

#### --text--

以下哪个 `scroll-behavior` 值允许平滑滚动效果？

#### --distractors--

`auto`

---

`inherit`

---

`revert`

#### --answer--

`smooth`

### --question--

#### --text--

以下哪项功能用于检测用户的动画偏好？

#### --distractors--

`prefers-contrast`

---

`display-mode`

---

`animation`

#### --answer--

`prefers-reduce-motion`

### --question--

#### --text--

以下哪项是 `input` 元素中 `placeholder` 属性的可访问性问题？

#### --distractors--

占位符文本可防止屏幕阅读器读取输入标签文本。

---

占位符文本可防止屏幕阅读器读取输入值。

---

占位符文本太小，无法阅读。

#### --answer--

占位符文本可能会与实际输入值混淆。

### --question--

#### --text--

`hidden` 属性有什么作用？

#### --distractors--

它可以隐藏内容，并在悬停时显示。

---

它只从可访问性树中隐藏内容。

---

它在视觉上隐藏了内容，但内容在可访问性树中可用。

#### --answer--

它可以从视觉上和可访问性树中隐藏内容。
