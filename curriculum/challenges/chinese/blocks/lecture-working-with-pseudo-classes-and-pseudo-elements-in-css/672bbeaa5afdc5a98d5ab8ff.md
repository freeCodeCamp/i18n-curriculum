---
id: 672bbeaa5afdc5a98d5ab8ff
title: 位置伪类的示例有哪些？
challengeType: 19
dashedName: what-are-examples-of-location-pseudo-classes
---

# --interactive--

位置伪类用于为当前文档中被定位的链接和元素设置样式。它们提供了一种根据链接是否已访问或元素当前是否处于焦点来应用样式的方法。

位置伪类的示例有：

- `:link`
- `:visited`
- `:any-link`
- `:local-link`
- `:target`

让我们深入了解每个这些伪类。

`:link` 伪类允许你定位网页上所有未访问的链接。你可以使用它在用户点击之前以不同的样式设置链接。例如，你可能想让所有未访问的链接显示为蓝色或你网站的主色调：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:link {
  color: magenta;
}
```

:::

在这种分支中，任何用户尚未点击的链接将显示为品红色。一旦用户点击了链接，` :link` 样式将不再适用，` :visited` 伪类将接管。` :visited` 伪类在用户点击链接后生效，因此你可以用它来定位用户已经点击过的链接。 

下面是将已访问的 `link` 状态更改为颜色 `purple` 的示例：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:visited {
  color: purple;
}
```

:::

`:visited` 伪类帮助用户区分他们访问过的链接和未访问过的链接。

`:any-link` 伪类是 `:link` 和 `:visited` 伪类的组合。因此，它匹配任何带有 `href` 属性的锚点元素，无论是否已访问。

下面是将 `:any-link` 伪类的链接颜色更改为 `crimson` 的示例：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:any-link {
  color: crimson;
}
```

:::

`:local-link` 伪类选择指向同一文档的链接。当你想区分内部链接和外部链接时，它非常有用。目前，没有浏览器支持 `:local-link` 伪类选择。

`:target` 伪类选择与当前 URL 片段标识符匹配的元素，例如 `#section1`。它对于具有页面内导航的页面非常有用。

这是一个表现页面内导航的超文本标记语言示例。CSS 使用 `:target` 伪类来为匹配用户导航目标的部分设置样式：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<nav id="table-of-contents">
  <ul>
    <li><a href="#section1">Introduction</a></li>
    <li><a href="#section2">Features</a></li>
  </ul>
</nav>

<section id="section1">
  <h2>Introduction</h2>
  <p>This is the introduction section.</p>
</section>

<section id="section2">
  <h2>Features</h2>
  <p>This section describes the features.</p>
</section>
```

```css
section:target {
  background-color: green;
  border: 2px solid green;
  padding: 10px;
}
```

:::

当用户点击其中一个导航 `link` 时，该相应部分的背景颜色将变为绿色。

# --questions--

## --text--

哪个伪类允许你为匹配当前 URL 片段标识符（例如 `#section1`）的元素设置样式？

## --answers--

`:hover`

### --feedback--

考虑如何在通过页面内 `link` 导航时突出显示特定部分。

---

`:focus`

### --feedback--

考虑如何在通过页面内 `link` 导航时突出显示特定部分。

---

`:target`

---

`:checked`

### --feedback--

考虑如何在通过页面内 `link` 导航时突出显示特定部分。

## --video-solution--

3

## --text--

位置伪类在什么时候特别有用？

## --answers--

当根据兄弟元素关系为元素设置样式时。

### --feedback--

考虑如何根据用户交互为链接和目标元素设置样式。

---

当应用基于链接是否已访问或元素当前是否聚焦的样式时。

---

当根据父元素的属性为元素设置样式时。

### --feedback--

考虑如何根据用户交互为链接和目标元素设置样式。

---

当动态调整网页的版型时。

### --feedback--

考虑如何根据用户交互为链接和目标元素设置样式。

## --video-solution--

2

## --text--

哪个伪类旨在定位指向同一文档的链接，但目前没有任何浏览器支持？

## --answers--

`:any-link`

### --feedback--

考虑用于区分内部链接和外部链接的伪类，尽管它尚未被支持。

---

`:local-link`

---

`:visited`

### --feedback--

考虑用于区分内部链接和外部链接的伪类，尽管它尚未被支持。

---

`:target`

### --feedback--

考虑用于区分内部链接和外部链接的伪类，尽管它尚未被支持。

## --video-solution--

2
