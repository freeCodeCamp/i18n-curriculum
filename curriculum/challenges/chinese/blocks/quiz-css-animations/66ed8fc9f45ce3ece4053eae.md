---
id: 66ed8fc9f45ce3ece4053eae
title: CSS 动画测验
challengeType: 8
dashedName: quiz-css-animations
---

# --description--

要通过测验，你必须正确回答以下 20 道题中的至少 18 题。

# --quizzes--

## --quiz--

### --question--

#### --text--

CSS 中的 `transform` 属性的作用是什么？

#### --distractors--

更改元素的可见性。

---

为文本应用视觉效果。

---

设置元素的尺寸。

#### --answer--

修改元素的位置、大小和形状。

### --question--

#### --text--

CSS `animation-direction` 属性如何影响动画？

#### --distractors--

它指定动画是否应重复播放。

---

它设置动画的持续时间。

---

它定义动画的速度。

#### --answer--

它定义动画的播放方式。

### --question--

#### --text--

哪个 CSS 属性能让动画运行 3 次？

#### --distractors--

`animation-repeat: 3`

---

`animation-loop: 3`

---

`animation-delay: 3`

#### --answer--

`animation-iteration-count: 3`

### --question--

#### --text--

哪个 CSS 缓动函数可使动画从开始到结束以一致的速度运行？

#### --distractors--

`ease`

---

`ease-in`

---

`ease-in-out`

#### --answer--

`linear`

### --question--

#### --text--

在 CSS 中，`@keyframes` @ 规则定义了什么？

#### --distractors--

CSS 渐变的颜色。

---

CSS 旋转的角度。

---

元素的尺寸。

#### --answer--

CSS 动画的各个阶段。

### --question--

#### --text--

CSS 中的 `translateX()` 函数有什么作用？

#### --distractors--

它改变元素的不透明度。

---

它旋转元素。

---

它将元素垂直重新定位。

#### --answer--

它将元素水平重新定位。

### --question--

#### --text--

以下哪项不是 CSS 动画的潜在问题？

#### --distractors--

它们可能会对某些用户造成不适或身体伤害。

---

用户可能会觉得它们会分散注意力。

---

过度使用会导致性能低下。

#### --answer--

它们可以提升用户体验。

### --question--

#### --text--

在哪里定义 `@keyframes` @ 规则？

#### --distractors--

在 HTML 文件的 `body` 元素内。

---

在 HTML 文件的 `head` 元素内。

---

在 CSS 类定义中。

#### --answer--

在 CSS 选择器之外的顶层。

### --question--

#### --text--

哪个 CSS 属性允许你暂停和恢复动画？

#### --distractors--

`animation-timing-function`

---

`animation-delay`

---

`animation-direction`

#### --answer--

`animation-play-state`

### --question--

#### --text--

CSS 中的 `animation-name` 属性应赋值为什么？

#### --distractors--

动画的持续时间，以秒为单位。

---

动画使用的缓动函数。

---

动画开始前的延迟时间，以秒为单位。

#### --answer--

由 `@keyframes` 定义的动画名称。

### --question--

#### --text--

这个 `@keyframe` @ 规则对动画元素有什么作用？

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

它将元件顺时针旋转 90 度。

---

它将元素的颜色变为蓝色。

---

它将元素缩放至初始大小的 50%，然后再缩放至初始大小的 100%。

#### --answer--

它将元素从相对于起点的 -50px 水平移动到 100px。

### --question--

#### --text--

哪个 CSS 属性定义了动画如何随时间变化推进？

#### --distractors--

`animation-delay`

---

`animation-fill-mode`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

哪个 CSS 属性用于指定动画应在 5 秒内完成？

#### --distractors--

```css
animation-name: 5s;
```

---

```css
animation-delay: 5s;
```

---

```css
animation-timing-function: 5s;
```

#### --answer--

```css
animation-duration: 5s;
```

### --question--

#### --text--

在下面的 CSS `@keyframe` @ 规则中，`50%` 代表什么？

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  50% {
    transform: translateX(25px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

动画的起点。

---

动画的终点。

---

动画的速度。

#### --answer--

动画的中点。

### --question--

#### --text--

应用属性 `transform: translateX(200px);` 时会发生什么？

#### --distractors--

元素将向左移动 200px。

---

元素将向下移动 200px。

---

元素将顺时针旋转 200 度。

#### --answer--

元素将向右移动 200px。

### --question--

#### --text--

如果 `animation-iteration-count` 设置为 `infinite`，动画将如何运行？

#### --distractors--

运行一次就会停止。

---

第一次重复后会暂停。

---

重复三次后就会停止。

#### --answer--

无限重复。

### --question--

#### --text--

哪个 `@keyframes` 选择器指定了动画的起点？

#### --distractors--

`50%`

---

`25%`

---

`100%`

#### --answer--

`0%`

### --question--

#### --text--

使用 `animation` 简写 CSS 属性可以指定哪些属性？

#### --distractors--

只有动画名称。

---

动画的名称和持续时间。

---

动画的名称、持续时间和延迟。

#### --answer--

所有动画属性。

### --question--

#### --text--

哪个 CSS 属性用于应用由 `@keyframes` @ 规则定义的动画？

#### --distractors--

`animation-duration`

---

`apply`

---

`translate`

#### --answer--

`animation`

### --question--

#### --text--

哪个 CSS 属性允许你设置动画开始前的时间？

#### --distractors--

`animation-fill-mode`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-delay`

## --quiz--

### --question--

#### --text--

CSS `animation-delay` 属性有什么作用？

#### --distractors--

设置动画的持续时间。

---

指定缓动函数。

---

定义动画方向。

#### --answer--

延迟动画的开始时间。

### --question--

#### --text--

哪个动画属性指定动画前后元素的样式？

#### --distractors--

`animation-delay`

---

`animation-direction`

---

`animation-iteration-count`

#### --answer--

`animation-fill-mode`

### --question--

#### --text--

为什么要适度使用 CSS 动画？

#### --distractors--

过多的 CSS 动画会导致样式破坏，不同浏览器的样式也会不一致。 

---

过多的 CSS 动画会导致在搜索引擎结果中的排名降低或不存在。

---

过多的 CSS 动画会自动导致服务器崩溃，并增加安全风险的可能性。 

#### --answer--

过多的 CSS 动画会导致性能不佳，而且可能会分散有某些无障碍需求的用户的注意力，或给他们带来麻烦。

### --question--

#### --text--

哪个动画属性决定动画是向前播放、向后播放还是交替播放？

#### --distractors--

`animation-fill-mode`

---

`animation-delay`

---

`animation-timing-function`

#### --answer--

`animation-direction`

### --question--

#### --text--

哪个 CSS 媒体查询可以检测用户是否要求使用最小化动画或运动效果？

#### --distractors--

`reduce-motion`

---

`min-motion-preference`

---

`motion-preferences`

#### --answer--

`prefers-reduced-motion`

### --question--

#### --text--

哪个属性可设置 `animation` 的重复次数？

#### --distractors--

`animation-duration`

---

`animation-count`

---

`animation-delay`

#### --answer--

`animation-iteration-count`

### --question--

#### --text--

哪种 CSS 规则用于定义动画在持续时间内不同时间点的阶段和样式？

#### --distractors--

`@style`

---

`@transition`

---

`@transform`

#### --answer--

`@keyframes`

### --question--

#### --text--

在 `reduced‑motion` 媒体查询中，哪个声明会禁用过渡？

#### --distractors--

`animation: none;`

---

`transition: remove;`

---

`animation-play-state: paused;`

#### --answer--

`transition: none;`

### --question--

#### --text--

`animation-play-state` 属性允许你做什么？

#### --distractors--

设置动画的重复次数。

---

指定动画完成所需的时间。

---

确定动画播放的方向。

#### --answer--

暂停和恢复动画。

### --question--

#### --text--

以下哪项是处理动画时的最佳实践？

#### --distractors--

尽可能多地使用闪烁的颜色和快速的动作来吸引注意力。

---

避免在不同设备或屏幕尺寸上测试动画。

---

尽可能延长动画的持续时间，确保用户注意到它们。

#### --answer--

避免每秒闪烁超过三次的内容，以防引发癫痫发作或造成不适。

### --question--

#### --text--

为什么在 CSS 规则中使用 `!important` 声明？

#### --distractors--

防止加载其他媒体查询。

---

将样式限制为应用于第一个子元素。

---

更轻松地调试 CSS。

#### --answer--

确保这些规则优先于其他样式。

### --question--

#### --text--

在 CSS 中 `animation-iteration-count: 1 !important;` 能确保什么？

#### --distractors--

动画暂停。

---

动画无限运行。

---

每次循环的动画方向相反。

#### --answer--

任何循环动画只播放一次。

### --question--

#### --text--

什么 CSS 属性用于指定动画的完成时间？

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-duration`

### --question--

#### --text--

哪个属性不属于 `animation` 简写的一部分？

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-direction`

#### --answer--

`animation-transform`

### --question--

#### --text--

`@keyframes` 规则定义了什么？

#### --distractors--

动画的缓动函数。

---

元素的默认状态。

---

动画的媒体查询。

#### --answer--

动画中不同点的样式顺序。

### --question--

#### --text--

这个 `@keyframe` @ 规则对动画元素有什么作用？

```css
@keyframes fade-in {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
```

#### --distractors--

它将元素从 0% 放大到 100%。

---

它将元素从左到右移动。

---

它会将文字颜色变为黑色。

#### --answer--

它通过逐渐降低元素的透明度使其淡入。

### --question--

#### --text--

在关键帧规则中，`100%` 代表什么？

#### --distractors--

动画起点。

---

动画中点。

---

缓动函数。

#### --answer--

动画终点。

### --question--

#### --text--

哪个属性可控制 `animation` 在持续时间内的节奏？

#### --distractors--

`animation-duration`

---

`animation-delay`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

为保持无障碍环境，开发人员在实施动画时应考虑哪些因素？

#### --distractors--

所有动画完全依赖 JavaScript。

---

添加频繁而密集的动画，以增强冲击力。

---

只包含突出、快速和令人惊讶的效果。

#### --answer--

使用微妙、目的明确的效果，尊重偏好，并提供用户控制。

### --question--

#### --text--

以下哪项是从左侧滑入元素的正确语法？

#### --distractors--

```css
@keyframes slide-in {
  0 { 
    transform: translate(-100%); 
  }
  100 { 
    transform: translate(0); 
  }
}
```

---

```css
@keyframes slide-in {
  from { 
    translateX(-100%); 
  }
  to { 
    translateX(0); 
  }
}
```

---

```css
@keyframes slide-in {
  start { 
    transform: moveX(-100%); 
  }
  end { 
    transform: moveX(0); 
  }
}
```

#### --answer--

```css
@keyframes slide-in {
  0% { 
    transform: translateX(-100%); 
  }
  100% { 
    transform: translateX(0); 
  }
}
```
