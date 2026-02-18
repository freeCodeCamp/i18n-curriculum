---
id: 672bbec3b86dbdaa07a5a5be
title: 功能性偽類的範例有哪些？
challengeType: 19
dashedName: what-are-examples-of-functional-pseudo-classes
---

# --interactive--

功能性偽類別允許你根據更複雜的條件或關係來選取元素。與根據狀態選取元素的常規偽類別不同，<dfn>例如</dfn> `:hover`、`:focus`，功能性偽類別會在小括弧內接受引數，因此稱為「功能性偽類別」。

功能性偽類別的範例有：

- `:is()`
- `:where()`
- `:has()`
- `:not()`

讓我們透過範例更深入地了解這些功能性偽類別。

`:is()` 偽類別在你想要為一群具有部分但非全部相同特性的元素設計樣式時非常有用。 例如，你可能想要為網站上不同類型的按鈕設計樣式，包括 `button` 元素、被設計成按鈕的連結，以及型別為 `submit` 和 `reset` 的 `input` 元素。以下是一個表述這種情況的範例。若沒有 `:is()` 函式，你必須寫出像這樣的複雜選擇器：

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

使用 `:is()` 函式（程式）、你可以寫出更簡潔且易懂的選擇器，如下所示：

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

`:where()` 偽類別的功能類似於 `:is()`，但它不會增加你的選擇器的特異性。這使得它非常適合套用樣式而不影響其他規則的特異性。

例如，你可以使用 `:where()` 函式（程式）為標題元素套用零 `margin` 和 `padding`。這確保了重設不會干擾你稍後可能套用的更具體樣式。以下是一個範例：

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

根據子元素的狀態來為父元素設定樣式過去一直很困難，直到引入了 `:has()` 偽類別。它允許你根據子元素的存在或狀態來為父元素套用樣式。

例如，以下 CSS 僅會套用到任何包含 `h2` 的 `article` 元素：

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

`:not()` 偽類別非常適合你想要將樣式套用到一個元素群組，但排除一個或多個特定例外的情況。在下面的 CSS 中，任何不是主要按鈕的按鈕都會有灰色背景：

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

哪一個偽類別的作用類似 `:is()`，但不會增加你的選擇器的特異性？

## --answers--

`:not()`

### --feedback--

這個偽類別非常適合套用廣泛且非侵入性的樣式。

---

`:has()`

### --feedback--

這個偽類別非常適合套用廣泛且非侵入性的樣式。

---

`:where()`

---

`:empty`

### --feedback--

這個偽類別非常適合套用廣泛且非侵入性的樣式。

## --video-solution--

3

## --text--

以下哪一項不是功能性偽類別？

## --answers--

`:is()`

### --feedback--

功能性偽類使用小括弧，並接受其中的引數。

---

`:first-child`

---

`:has()`

### --feedback--

功能性偽類使用小括弧，並接受其中的引數。

---

`:where()`

### --feedback--

功能性偽類使用小括弧，並接受其中的引數。

## --video-solution--

2

## --text--

哪一個偽類別最適合用於你想要將樣式套用到一群元素中，但有一兩個例外的情況？

## --answers--

`:has()`

### --feedback--

思考如何排除特定元素不被套用樣式。

---

`:is()`

### --feedback--

思考如何排除特定元素不被套用樣式。

---

`:not()`

---

`:where()`

### --feedback--

思考如何排除特定元素不被套用樣式。

## --video-solution--

3
