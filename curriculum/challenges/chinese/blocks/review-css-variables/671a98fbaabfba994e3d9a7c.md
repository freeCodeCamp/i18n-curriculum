---
id: 671a98fbaabfba994e3d9a7c
title: CSS 变量复习
challengeType: 31
dashedName: review-css-variables
---

# --interactive--

## CSS 自定义属性（CSS 变量）

- **定义**：CSS 自定义属性，也称为 CSS 变量，是由 CSS 作者定义的包含要在整个文档中重用的特定值的实体。 它们是一个强大的特性，可以实现更高效、可维护和灵活的样式表。 自定义属性在创建主题设计时特别有用。 你可以为不同主题定义一组属性：

```css
:root {
  --bg-color: white;
  --text-color: black;
}

.dark-theme {
  --bg-color: #333;
  --text-color: white;
}

body {
  background-color: var(--bg-color);
  color: var(--text-color);
}
```

## `@property` 规则

- **定义**：`@property` 规则是一个强大的 CSS 特性，它允许开发人员定义自定义属性，从而更好地控制它们的行为，包括它们的动画方式和初始值。

```css
@property --property-name {
  syntax: '<type>';
  inherits: true | false;
  initial-value: <value>;
}
```

- **`--property-name`**: This is the name of the custom property you're defining. Like all custom properties, it must start with two dashes. **`syntax`**: This defines the type of the property, which can be things like `<color>`, `<length>`, `<number>`, `<percentage>`, or more complex types.
- **`inherits`**：指定属性是否应该从父元素继承它的值。
- **`initial-value`**：设置属性的默认值。
- **使用 `@property` 规则的渐变的示例**：这个示例创建了一个渐变，当元素被悬停在上面时平滑地应用动画。

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">

<div class="gradient-box"></div>
```

```css
@property --gradient-angle {
  syntax: "<angle>";
  inherits: false;
  initial-value: 0deg;
}

.gradient-box {
  width: 100px;
  height: 100px;
  background: linear-gradient(var(--gradient-angle), red, blue);
  transition: --gradient-angle 0.5s;
}

.gradient-box:hover {
  --gradient-angle: 90deg;
}
```

:::

- **回退**：在使用自定义属性时，可以调用 `var()` 函数提供一个回退值，就像使用标准自定义属性一样：

```css
.button {
  background-color: var(--main-color, #3498db);
}
```

# --assignment--

复习 CSS 变量主题和概念。
