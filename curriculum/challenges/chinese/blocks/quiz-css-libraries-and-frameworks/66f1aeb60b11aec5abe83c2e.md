---
id: 66f1aeb60b11aec5abe83c2e
title: CSS 库和框架测验
challengeType: 8
dashedName: quiz-css-libraries-and-frameworks
---

# --description--

要通过测验，你必须正确回答以下 10 道题中的至少 9 题。

# --quizzes--

## --quiz--

### --question--

#### --text--

什么是 CSS 框架？

#### --distractors--

一个用于修复 CSS 误差的工具。

---

一个用于检查 CSS `files` 的工具。

---

一个用于 CSS 文件的格式化工具。

#### --answer--

一个用于 CSS 样式的库。

### --question--

#### --text--

以下哪一个是流行的实用优先 CSS 框架？

#### --distractors--

模板 CSS

---

装载 CSS

---

最小化 CSS

#### --answer--

Tailwind CSS

### --question--

#### --text--

CSS 框架的缺点是什么？

#### --distractors--

组件太少。

---

无自定义选项。

---

改进的浏览器支持。

#### --answer--

可能会使 CSS 文件膨胀。

### --question--

#### --text--

SCSS 代表什么？

#### --distractors--

超级级联样式表。

---

结构化 CSS。

---

简单的 CSS。

#### --answer--

俏皮的 CSS。

### --question--

#### --text--

以下哪项是 Sass 的特色？

#### --distractors--

评论

---

CSS 代码检查。

---

内联 CSS。

#### --answer--

混入（Mixins）

### --question--

#### --text--

以下哪种方式是使用 Tailwind CSS 中实用类的正确方法？

#### --distractors--

```html
<button class="color-blue text-color font-size allow-hover round-btn">
  Button
</button>
```

---

```html
<button class="blue text font-size hover round-btn margin-full">
  Button
</button>
```

---


```html
<button class="set-blue set-text set-font set-hover round-btn padding-full">
  Button
</button>
```

#### --answer--


```html
<button class="bg-blue-500 text-white font-bold py-2 px-4 rounded-full hover:bg-blue-700">
  Button
</button>
```

### --question--

#### --text--

CSS 框架的两种类型是什么？

#### --distractors--

平板电脑优先的 CSS 框架和基于组件的 CSS 框架。

---

实用优先 CSS 框架和惰性装载 CSS 框架。

---

极简 CSS 框架和实用优先 CSS 框架。

#### --answer--

实用优先的 CSS 框架和基于组件的 CSS 框架。

### --question--

#### --text--

SCSS 的文件扩展名是什么？

#### --distractors--

`.sass`

---

`.scsss`

---

`.css`

#### --answer--

`.scss`

### --question--

#### --text--

以下哪种方式是在 SCSS 中定义变量的正确方法？

#### --distractors--

```css
#primary-color: #3498eb;

header {
  background-color: #primary-color;
}
```

---

```css
>primary-color: #3498eb;

header {
  background-color: >primary-color;
}
```

---

```css
?primary-color: #3498eb;

header {
  background-color: ?primary-color;
}
```

#### --answer--

```css
$primary-color: #3498eb;

header {
  background-color: $primary-color;
}
```

### --question--

#### --text--

以下哪种方式是正确的 `mixin` 定义？

#### --distractors--

```css
--mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

---

```css
>mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

---

```css
mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

#### --answer--

```css
@mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

