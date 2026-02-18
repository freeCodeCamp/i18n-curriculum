---
id: 671a999cc77b7f9bceb4caeb
title: CSS 動畫回顧
challengeType: 31
dashedName: review-css-animations
---

# --interactive--

## CSS 動畫基礎

- **定義**：CSS 動畫允許你在網頁上創建動態且視覺吸引人的效果，而無需使用 JavaScript 或複雜的程式設計。它們提供了一種方法，可以在指定的持續時間內平滑地將元素從一種樣式過渡到另一種樣式。
- **`@keyframes` 規則**：此規則定義動畫的階段和樣式。它指定元素在動畫過程中各個時間點應該擁有的樣式。

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

- **`animation` 屬性**：這是用來套用動畫的縮寫屬性。
- **`animation-name`**：這指定要使用的 `@keyframes` 規則名稱。
- **`animation-duration`**：這設定動畫應該花費多長時間完成。
- **`animation-timing-function`**：這定義動畫隨時間的進展方式（例如 ease、linear、ease-in-out）。
- **`animation-delay`**：這指定動畫開始前的延遲時間。
- **`animation-iteration-count`**：這設定動畫應該重複的次數。
- **`animation-direction`**：這決定動畫應該向前播放、向後播放，或交替播放。
- **`animation-fill-mode`**：這指定元素在動畫開始前和結束後應該如何被樣式化。
- **`animation-play-state`**：這讓你可以暫停和恢復動畫。

## 無障礙功能與 `prefers-reduced-motion` 媒體查詢

- **`prefers-reduced-motion` 媒體查詢**：動畫的主要無障礙性問題之一是它們可能會造成某些使用者不適甚至實體上的傷害。患有前庭疾病或動作敏感的使用者，在螢幕上看到某些類型的移動時，可能會感到頭暈、噁心或頭痛。`prefers-reduced-motion` 媒體查詢允許網頁開發者偵測使用者是否在系統層級要求最小化動畫或動作效果。

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

檢視 CSS Animations 主題和概念。
