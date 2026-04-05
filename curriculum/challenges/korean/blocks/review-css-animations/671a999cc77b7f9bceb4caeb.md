---
id: 671a999cc77b7f9bceb4caeb
title: CSS 애니메이션 검토
challengeType: 31
dashedName: review-css-animations
---

# --interactive--

## CSS 애니메이션 기본

- **정의**: CSS 애니메이션은 JavaScript나 복잡한 프로그래밍 없이 웹 페이지에서 동적이고 시각적으로 매력적인 효과를 만들 수 있게 해줍니다. 지정한 기간 동안 요소를 부드럽게 다른 스타일로 전환하는 방법을 제공합니다.
- **`@keyframes` 규칙**: 이 규칙은 애니메이션의 단계와 스타일을 정의합니다. 애니메이션 진행 중 요소가 가져야 할 스타일을 여러 시점에 지정합니다.

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

- **`animation` 속성**: 애니메이션을 적용할 때 사용하는 단축 속성입니다.
- **`animation-name`**: 사용할 `@keyframes` 규칙의 이름을 지정합니다.
- **`animation-duration`**: 애니메이션이 완료되는 데 걸리는 시간을 설정합니다.
- **`animation-timing-function`**: 애니메이션이 시간에 따라 어떻게 진행될지 정의합니다(예: ease, linear, ease-in-out).
- **`animation-delay`**: 애니메이션 시작 전에 지연 시간을 지정합니다.
- **`animation-iteration-count`**: 애니메이션이 몇 번 반복될지 설정합니다.
- **`animation-direction`**: 애니메이션이 앞으로, 뒤로, 또는 교대로 재생될지 결정합니다.
- **`animation-fill-mode`**: 애니메이션 전후에 요소가 어떻게 스타일링될지 지정합니다.
- **`animation-play-state`**: 애니메이션을 일시 중지하거나 다시 시작할 수 있게 합니다.

## 접근성과 `prefers-reduced-motion` 미디어 쿼리

- **`prefers-reduced-motion` 미디어 쿼리**: 애니메이션과 관련된 주요 접근성 문제 중 하나는 일부 사용자에게 불편함이나 신체적 피해를 줄 수 있다는 점입니다. 전정 장애나 움직임에 민감한 사람들은 화면에서 특정 움직임에 노출될 때 어지러움, 메스꺼움, 두통을 경험할 수 있습니다. `prefers-reduced-motion` 미디어 쿼리는 웹 개발자가 사용자가 시스템 수준에서 최소한의 애니메이션이나 움직임 효과를 요청했는지 감지할 수 있게 해줍니다.

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

CSS 애니메이션 주제와 개념을 검토하세요.
