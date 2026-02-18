---
id: 66f1adcf97e3e4c1bd89ebf5
title: 网页性能测验
challengeType: 8
dashedName: quiz-web-performance
---

# --description--

要通过测验，你必须正确回答以下 20 道题中的至少 18 题。

# --quizzes--

## --quiz--

### --question--

#### --text--

在网页开发中，真实性能和感知性能之间的关键区别是什么？

#### --distractors--

真实性能关注浏览器发出的超文本传输协议请求数量，而感知性能则基于 CSS 渲染速度。

---

真实性能仅关乎装载时间，而感知性能则与动画和加载指示器等视觉元素相关。

---

真实性能仅包括服务器端的处理时间，而感知性能则完全是客户端的。

#### --answer--

真实性能是内容装载的速度，而感知性能是用户认为页面装载的速度。

### --question--

#### --text--

哪个指标最能表明网页内容出现的速度？

#### --distractors--

可交互时间（TTI）

---

页面装载时间（PLT）

---

最大内容绘制（LCP）

#### --answer--

首次内容绘制（FCP）

### --question--

#### --text--

以下哪项不是减少页面装载时间的方法？

#### --distractors--

优化媒体资产。

---

利用浏览器缓存。

---

压缩和压缩文件。

#### --answer--

仅使用 JPEG 文件。

### --question--

#### --text--

什么是 `"time to usable"`？

#### --distractors--

这是从用户请求页面到他们可以与页面上的 `form` 交互之间的间隔。

---

这是所有图像和动画变得可用且可使用所需的时间。 

---

这是所有 CSS 和 JavaScript 动画在屏幕上装载所需的时间。

#### --answer--

这是从用户请求页面到他们可以有意义地与之交互的时间间隔。

### --question--

#### --text--

First Contentful Paint（FCP）测量什么？

#### --distractors--

页面上所有 JavaScript 文件的总体装载时间。

---

用户可以与页面上任何元素交互之前的延迟。

---

所有样式表完全装载并应用所花费的时间。

#### --answer--

第一个文本或图像渲染所需的时间。

### --question--

#### --text--

以下哪项不是常用的性能测量工具？

#### --distractors--

Chrome 开发者工具

---

灯塔

---

WebPageTest

#### --answer--

WebMeasure

### --question--

#### --text--

性能 Web API 用于什么？

#### --distractors--

它仅用于测量 CSS 动画的性能。

---

它用于自动加速网页的性能。

---

它提供了一个详细的性能指标表格供用户使用。

#### --answer--

它让开发者直接从代码中跟踪网页装载和响应的高效程度。

### --question--

#### --text--

哪种策略可以有效提升感知性能？

#### --distractors--

使用大图像来提升整体视觉质量。

---

最后装载 CSS 样式以优先渲染内容。

---

预装载所有脚本以确保它们在需要时已准备好。

#### --answer--

在内容被获取时显示装载骨架。

### --question--

#### --text--

以下哪项是指请求在浏览器和服务器之间传输所花费的时间？

#### --distractors--

渲染

---

INP

---

CDN

#### --answer--

延迟

### --question--

#### --text--

优化 CSS 如何影响页面性能？

#### --distractors--

它防止浏览器执行不必要的 JavaScript。

---

它减少了图像的整体文件大小。

---

它消除了对惰性装载图像的需求。

#### --answer--

它加快了对 `HTML` 的解析。

### --question--

#### --text--

以下哪项显示主线程被繁重的 JavaScript 任务阻塞了多长时间？

#### --distractors--

源顺序

---

弹跳率

---

WebPageTest

#### --answer--

总阻塞时间

### --question--

#### --text--

在测量 Interaction to Next Paint（`INP`）时，评估的是什么？

#### --distractors--

页面在用户交互后完全装载所有样式和图像所需的时间。

---

用户交互与浏览器能够注册下一个用户输入之间的延迟。

---

JavaScript 执行与浏览器刷新页面内容之间的间隔。

#### --answer--

用户交互与浏览器通过渲染下一帧响应之间的时间。

### --question--

#### --text--

以下哪个 API 为你提供高查准率的时间戳（以毫秒为单位），用于测量你网站不同部分的装载时间？

#### --distractors--

`performance.delay()`

---

`performance.previous()`

---

`performance.next()`

#### --answer--

`performance.now()`

### --question--

#### --text--

以下哪个 API 能为你提供从 DNS 查询到 `DOMContentLoaded` 的页面装载每个阶段的详细信息？

#### --distractors--

允许定时 API

---

性能文本 API

---

执行 Timing API

#### --answer--

性能计时 API

### --question--

#### --text--

以下哪项监听诸如版型移动、长任务和用户交互等性能事件？

#### --distractors--

```js
const observer = new PermitObserve((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

---

```js
const observer = new PerformObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

---

```js
const observer = new PermitObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

#### --answer--

```js
const observer = new PerformanceObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

### --question--

#### --text--

惰性装载图像如何提升页面性能？

#### --distractors--

它确保所有图像立即装载，以提供更好的用户体验。

---

它减小图像文件的大小以加快装载速度。

---

它预加载图像以防止任何装载延迟。

#### --answer--

它延迟装载非必要的图像，直到它们出现在视图中。

### --question--

#### --text--

什么是代码拆分？

#### --distractors--

它涉及将你的 React 代码拆分成只执行关键任务的模块

---

它涉及将你的 `HTML` 代码拆分成只执行非关键任务的模块。

---

它涉及将你的 CSS 代码拆分成执行关键和非关键任务的模块。

#### --answer--

它涉及将你的 JavaScript 代码拆分成执行关键和非关键任务的模块。

### --question--

#### --text--

以下哪种方式是惰性装载 `Image` 的正确方法？

#### --distractors--

```html
<img src="placeholder.jpg" lazy="loading">
```

---

```html
<img src="placeholder.jpg" load="lazy">
```

---

```html
<img src="placeholder.jpg" lazy="load">
```

#### --answer--

```html
<img src="placeholder.jpg" loading="lazy">
```

### --question--

#### --text--

以下哪项不是提升 INP 的方法？

#### --distractors--

通过拆分长时间的 JavaScript 任务来减少主线程的工作量。

---

优化事件处理器。

---

推迟或惰性装载大型资源。

#### --answer--

仅使用 PNG 和 JPEG 图像。

### --question--

#### --text--

为什么能效是网页性能的关键方面？

#### --distractors--

它增强了网页的整体视觉吸引力。

---

它最小化网页上使用的 JavaScript 数量。

---

它减少了所需的 CSS 文件数量，使你的 CSS 运行更快。

#### --answer--

它减少了对硬件的装载，节约能源并提高可持续性。

