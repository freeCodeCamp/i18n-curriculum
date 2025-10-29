---
id: 672bc4ff5e7a4bbdee8ba013
title: 什么是 CSS 中的命名色？
challengeType: 19
dashedName: what-are-named-colors-in-css
---

# --interactive--

In CSS, colors play a crucial role in designing web pages, enhancing readability, setting the mood, and improving user experience. One of the simplest ways to define colors in CSS is by using named colors. Named colors are predefined color names recognized by browsers. Here is an example of using a named color for a paragraph element:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<p>This is a paragraph.</p>
```

```css
p {
  color: red;
}
```

:::

In this example, we're using the named color `red` to style the text in a paragraph.

Named colors in CSS are a collection of 140 standard color names like `red`, `blue`, `yellow`, `aqua`, `fuchsia`, `black`, and so on. These names are simple to use and make your code more readable, and they are self-descriptive.

Named colors are useful for quick prototyping, simple designs, and improving code readability. Here is an another example of using named colors for an `h1` selector:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>This is a heading</h1>
```

```css
h1 {
  color: navy;
  background-color: lightgray;
}
```

:::

In this example, the heading text will be styled in navy, with a light gray background. The readability of the code improves since named colors provide an immediate visual understanding of the intended style.

Named colors in CSS are convenient but limited, with only 140 available options. They may not offer the precise shade needed for more detailed designs.

Named colors in CSS are a great way to apply colors quickly and descriptively. While they are useful for basic designs, prototyping, and improving code readability, their limited range makes them less suitable for complex designs requiring precise color control.

By understanding the strengths and limitations of named colors, you can determine when it’s best to use them over more detailed color models like RGB or HSL, which you will learn about in future lessons.

# --questions--

## --text--

What is a key benefit of using named colors in CSS?

## --answers--

Named colors allow you to create gradients.

### --feedback--

Think about the simplicity and readability aspect of named colors.

---

Named colors are simpler to write and make code more readable.

---

Named colors provide a wider range of color options than hex codes.

### --feedback--

Think about the simplicity and readability aspect of named colors.

---

Named colors are the most precise way to define colors in web design.

### --feedback--

考虑一下命名颜色的简洁性和可读性。

## --video-solution--

2

## --text--

In what scenario might named colors not be the best choice?

## --answers--

When you need to quickly prototype a design.

### --feedback--

Think about the limitations of named colors in more complex designs.

---

When your design requires very specific or nuanced shades of color.

---

When your design involves only primary colors.

### --feedback--

Think about the limitations of named colors in more complex designs.

---

When collaborating with others on a simple project.

### --feedback--

思考在更复杂的设计中命名颜色的局限性。

## --video-solution--

2

## --text--

Which of the following is an example of a named color in CSS?

## --answers--

`#ff5733`

### --feedback--

Named colors are descriptive words, not numerical codes.

---

`rgb(255, 99, 71)`

### --feedback--

命名颜色是描述性词语，而不是数字代码。

---

`tomato`

---

`hsl(120, 100%, 50%)`

### --feedback--

Named colors are descriptive words, not numerical codes.

## --video-solution--

3
