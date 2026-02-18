---
id: 671a999cc77b7f9bceb4caeb
title: CSS 动画复习
challengeType: 31
dashedName: review-css-animations
---

# --interactive--

## CSS 动画基础

- **定义**：通过 CSS 动画，你无需 JavaScript 或复杂的编程，就能在网页上创建动态的、具有视觉吸引力的效果。 它们提供了一种方法，可在指定的持续时间内在不同风格之间平滑过渡元素。
- **`@keyframes` 规则**：该规则定义了动画的阶段和样式。 它规定了元素在动画过程中的不同时间点应具有的样式。

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div class="box">Slide</div>
```

```css
.box {
  width: 120px;
  padding: 10px;
  background: #0077ff;
  color: white;
  animation: slide-in 1s ease-in-out;
}

@keyframes slide-in {
  from {
    transform: translateX(-100%);
  }
  to {
    transform: translateX(0);
  }
}
```

:::

- **`animation` 属性**：这是用于应用动画的简写属性。
- **`animation-name`**：指定要使用的 `@keyframes` 规则的名称。
- **`animation-duration`**：设置动画完成所需的时间。
- **`animation-timing-function`**：定义动画随时间变化的推进方式（如缓和、线性、缓进缓出）。
- **`animation-delay`**：指定动画开始前的延迟时间。
- **`animation-iteration-count`**：设置动画的重复次数。
- **`animation-direction`**：决定动画是向前播放、向后播放还是交替播放。
- **`animation-fill-mode`**：指定动画前后元素的样式。
- **`animation-play-state`**：允许暂停和恢复动画。

## 可访问性和 `prefers-reduced-motion` 媒体查询

- **`prefers-reduced-motion` 媒体查询**：动画的主要可访问性问题之一是它们可能会给某些用户带来不适，甚至是身体伤害。 患有前庭失调症或运动敏感症的人在屏幕上看到某些类型的运动时可能会感到头晕、恶心或头痛。 通过 `prefers-reduced-motion` 媒体查询，网络开发人员可以在系统级别检测用户是否要求最小化动画或运动效果。

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<button class="animated-element">Hover me</button>
```

```css
.animated-element {
  padding: 10px 16px;
  transition: transform 0.3s ease-in-out;
}

.animated-element:hover {
  transform: translateX(20px);
}

@media (prefers-reduced-motion: reduce) {
  .animated-element {
    transition: none;
  }
}
```

:::

# --assignment--

复习 CSS 动画主题和概念。
