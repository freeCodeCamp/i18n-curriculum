---
id: 672bbec3b86dbdaa07a5a5be
title: 功能性伪类的示例有哪些？
challengeType: 19
dashedName: what-are-examples-of-functional-pseudo-classes
---

# --interactive--

函数伪类允许你基于更复杂的条件或关系选择元素。与基于状态（例如 `:hover`、`:focus`）选择元素的常规伪类不同，函数伪类接受括号内的参数，因此被称为“函数伪类”。

功能性伪类的示例有：

- `:is()`
- `:where()`
- `:has()`
- `:not()`

让我们通过示例更深入地了解每个这些功能性伪类。

`:is()` 伪类在你想要为一组共享部分但非全部特征的元素设置样式时非常有用。例如，你可能想为网站上的不同类型按钮设置样式，包括 `button` 元素、样式为按钮的链接以及类型为 `submit` 和 `reset` 的 `input` 元素。以下是一个表现该情况的示例。如果没有 `:is()` 函数，你将不得不编写像这样的复杂选择器：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
<a href="#" class="button">Link styled like a button</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />
```

```css
button,
a.button,
input[type='submit'],
input[type='reset'] {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

button:hover,
a.button:hover,
input[type='submit']:hover,
input[type='reset']:hover {
  background-color: blue;
  border-color: blue;
}
```

:::

使用 `:is()` 函数，你可以编写一个更简洁且易于理解的选择器，如下所示：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
<a href="#" class="button">Link styled like a button</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />
```

```css
:is(button, a.button, input[type='submit'], input[type='reset']) {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

:is(button, a.button, input[type='submit'], input[type='reset']):hover {
  background-color: blue;
  border-color: blue;
}
```

:::

`:where()` 伪类的功能类似于 `:is()`，但它不会增加你的选择器的特异性。这使得它非常适合应用样式而不影响其他规则的特异性。

例如，你可以使用 `:where()` 函数为标题元素应用零 `margin` 和 `padding`。这确保了重置不会干扰你之后可能应用的更具体的样式。以下是一个示例：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Page Title</h1>
<h2>Subtitle</h2>
<h3>A point</h3>

<p>Example paragraph.</p>
<p>Example paragraph.</p>
<p>Example paragraph.</p>
```

```css
:where(h1, h2, h3) {
  margin: 0;
  padding: 0;
}
```

:::

基于子元素状态为父元素设置样式以前很困难，直到引入了 `:has()` 伪类。它允许你基于子元素的存在或状态为父元素应用样式。

例如，下面的 CSS 只会应用于包含 `h2` 的任何 `article` 元素：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<article>
  <h2>Subheading</h2>
  <p>Lorem ipsum dolor sit amet.</p>
</article>

<article>
  <h3>A point</h3>
  <p>Lorem ipsum dolor sit amet.</p>
  <p>Lorem ipsum dolor sit amet.</p>
</article>
```

```css
article:has(h2) {
  border: 2px solid hotpink;
}
```

:::

`:not()` 伪类非常适合你想为一组元素应用样式，但排除一个或多个特定异常的情况。在下面的 CSS 中，任何不是主按钮的按钮都会有灰色背景：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button class="primary">Primary Button</button>
<button class="secondary">Secondary Button</button>
<button class="danger">Another Secondary Button</button>
```

```css
button {
  padding: 10px 20px;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
  border: none;
  color: white;
}

button.primary {
  background-color: deepskyblue;
}

button:not(.primary) {
  background-color: grey;
}
```

:::

# --questions--

## --text--

哪个伪类的作用类似于 `:is()`，但不会为你的选择器添加任何特异性？

## --answers--

`:not()`

### --feedback--

这个伪类非常适合应用广泛且非侵入性的样式。

---

`:has()`

### --feedback--

这个伪类非常适合应用广泛且非侵入性的样式。

---

`:where()`

---

`:empty`

### --feedback--

这个伪类非常适合应用广泛且非侵入性的样式。

## --video-solution--

3

## --text--

以下哪个不是功能性伪类？

## --answers--

`:is()`

### --feedback--

函数伪类使用括号，并接受其中的参数。

---

`:first-child`

---

`:has()`

### --feedback--

函数伪类使用括号，并接受其中的参数。

---

`:where()`

### --feedback--

函数伪类使用括号，并接受其中的参数。

## --video-solution--

2

## --text--

哪种伪类非常适合在你想为一组元素应用样式但有一两个异常的情况下使用？

## --answers--

`:has()`

### --feedback--

考虑如何排除特定元素不被样式化。

---

`:is()`

### --feedback--

考虑如何排除特定元素不被样式化。

---

`:not()`

---

`:where()`

### --feedback--

考虑如何排除特定元素不被样式化。

## --video-solution--

3
