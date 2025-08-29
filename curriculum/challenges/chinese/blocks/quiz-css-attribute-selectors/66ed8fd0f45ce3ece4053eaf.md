---
id: 66ed8fd0f45ce3ece4053eaf
title: CSS 属性选择器测验
challengeType: 8
dashedName: quiz-css-attribute-selectors
---

# --description--

要通过测验，你必须正确回答以下 10 道题中的至少 9 题。

# --quizzes--

## --quiz--

### --question--

#### --text--

CSS 属性选择器用于做什么？

#### --distractors--

根据标签名称为元素应用样式。

---

根据元类名为元素应用样式。

---

根据父元素为元素应用样式。

#### --answer--

根据属性为元素应用样式。

### --question--

#### --text--

此 CSS 选择器不会选择以下哪项？

```css
[title~="flower"] {
  border: 5px solid yellow;
}
```

#### --distractors--

```html
<img src="img1.jpg" title="clematis flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="FLOWERS of flower" width="150" height="113">
```

#### --answer--

```html
<img src="img2.jpg" title="flowers" width="150" height="113">
```

### --question--

#### --text--

哪个 CSS 选择器可匹配所有 `lang` 属性设置为 `"fr"` 的 `p` 元素？

#### --distractors--

```css
p[lang-="fr"] { color: blue; }
```

---

```css
p[lang~="fr"] { color: blue; }
```

---

```css
p[lang=="fr"] { color: blue; }
```

#### --answer--

```css
p[lang="fr"] { color: blue; }
```

### --question--

#### --text--

哪个 CSS 选择器可匹配所有带有 `href` 属性的 `a` 元素？

#### --distractors--

```css
a(href) { color: green; }
```

---

```css
a { color: green; }
```

---

```css
a[href~=""] { color: green; }
```

#### --answer--

```css
a[href] { color: blue; }
```

### --question--

#### --text--

哪个 CSS 选择器可匹配所有大写罗马数字的有序列表？

#### --distractors--

```css
ol[type="a"] { border-color: black; }
```

---

```css
ol[type="A"] { border-color: black; }
```

---

```css
ol[type="i"] { border-color: black; }
```

#### --answer--

```css
ol[type="I"] { border-color: black; }
```

### --question--

#### --text--

`data-lang` 属性通常用于什么用途？

#### --distractors--

指定文件的语言。

---

定义文件的字符编码。

---

根据父元素设置元素的语言。

#### --answer--

根据此自定义数据属性为元素应用样式。

### --question--

#### --text--

只有当 `img` 元素的 `alt` 属性等于 `"code"` 时，你才可以使用的对其进行样式设置的 CSS 选择器是哪个？

#### --distractors--

```css
img[alt~="code"] { border: 1px solid red; }
```

---

```css
img[alt=="code"] { border: 1px solid red; }
```

---

```css
img[alt*="code"] { border: 1px solid red; }
```

#### --answer--

```css
img[alt="code"] { border: 1px solid red; }
```

### --question--

#### --text--

哪个 CSS 选择器能匹配数字编号类型的有序列表？

#### --distractors--

```css
ol[type="i"] { color: purple; }
```

---

```css
ol[type="I"] { color: purple; }
```

---

```css
ol[type="a"] { color: purple; }
```

#### --answer--

```css
ol[type="1"] { color: purple; }
```

### --question--

#### --text--

以下哪个 CSS 选择器可以为同时具有 `href` 和 `title` 属性的 `a` 元素设计样式？

#### --distractors--

```css
a[href] a[title] { text-decoration: underline dotted; }
```

---

```css
a[href]a[title] { text-decoration: underline dotted; }
```

---

```css
a[href].[title] { text-decoration: underline dotted; }
```

#### --answer--

```css
a[href][title] { text-decoration: underline dotted; }
```

### --question--

#### --text--

如果你正在为一家餐厅开发网站，希望为所有带有 `data-special` 属性的 `menu-item` 类元素设计样式，你会使用哪个 CSS 选择器？

#### --distractors--

```css
menu-item[data-special] { background-color: blue; }
```

---

```css
#menu-item[data-special] { background-color: blue; }
```

---

```css
[data-special="menu-item"] { background-color: blue; }
```

#### --answer--

```css
.menu-item[data-special] { background-color: blue; }
```

