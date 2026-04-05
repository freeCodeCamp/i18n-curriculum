---
id: 66ed8fc9f45ce3ece4053eae
title: CSS 애니메이션 퀴즈
challengeType: 8
dashedName: quiz-css-animations
---

# --description--

퀴즈를 통과하려면 아래 20문제 중 최소 18문제를 올바르게 답해야 합니다.

# --quizzes--

## --quiz--

### --question--

#### --text--

CSS에서 `transform` 속성의 목적은 무엇인가요?

#### --distractors--

요소의 가시성을 변경합니다.

---

텍스트에 시각 효과를 적용합니다.

---

요소의 크기를 설정합니다.

#### --answer--

요소의 위치, 크기, 모양을 수정합니다.

### --question--

#### --text--

CSS `animation-direction` 속성은 애니메이션에 어떻게 영향을 미치나요?

#### --distractors--

애니메이션을 반복할지 지정합니다.

---

애니메이션의 지속 시간을 설정합니다.

---

애니메이션의 속도를 정의합니다.

#### --answer--

애니메이션이 어떻게 재생될지 정의합니다.

### --question--

#### --text--

어떤 CSS 속성이 애니메이션을 3번 실행하게 하나요?

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

어떤 CSS 타이밍 함수가 애니메이션을 시작부터 끝까지 일정한 속도로 실행하게 하나요?

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

CSS에서 `@keyframes` @규칙은 무엇을 정의하나요?

#### --distractors--

CSS 그라디언트의 색상입니다.

---

CSS 회전의 각도입니다.

---

요소의 크기입니다.

#### --answer--

CSS 애니메이션의 단계입니다.

### --question--

#### --text--

CSS에서 `translateX()` 함수의 목적은 무엇인가요?

#### --distractors--

요소의 불투명도를 변경합니다.

---

요소를 회전시킵니다.

---

요소를 수직으로 재배치합니다.

#### --answer--

요소를 수평으로 재배치합니다.

### --question--

#### --text--

다음 중 CSS 애니메이션과 관련해 문제가 될 수 없는 것은 무엇인가요?

#### --distractors--

특정 사용자에게 불편함이나 신체적 해를 줄 수 있습니다.

---

사용자가 산만하게 느낄 수 있습니다.

---

과도한 사용은 성능 저하를 초래할 수 있습니다.

#### --answer--

사용자 경험을 향상시킬 수 있습니다.

### --question--

#### --text--

`@keyframes` @규칙은 어디에 정의되나요?

#### --distractors--

HTML 파일의 `body` 요소 내에 있습니다.

---

HTML 파일의 `head` 요소 내에 있습니다.

---

CSS 클래스 정의 내에 있습니다.

#### --answer--

CSS 선택자 밖 최상위에 있습니다.

### --question--

#### --text--

애니메이션을 일시 정지하고 다시 시작할 수 있게 하는 CSS 속성은 무엇인가요?

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

CSS에서 `animation-name` 속성에 어떤 값을 할당해야 하나요?

#### --distractors--

애니메이션의 지속 시간을 초 단위로 지정합니다.

---

애니메이션에 사용되는 타이밍 함수를 지정합니다.

---

애니메이션 시작 전 지연 시간을 초 단위로 지정합니다.

#### --answer--

`@keyframes`에 정의된 애니메이션 이름입니다.

### --question--

#### --text--

이 `@keyframe` @규칙은 애니메이션된 요소에 어떤 동작을 하나요?

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

요소를 시계 방향으로 90도 회전시킵니다.

---

요소의 색상을 파란색으로 변경합니다.

---

요소를 초기 크기의 50%로 축소했다가 다시 100%로 확대합니다.

#### --answer--

요소를 시작점 기준으로 수평 방향 -50px에서 100px까지 이동시킵니다.

### --question--

#### --text--

어떤 CSS 속성이 애니메이션이 시간에 따라 어떻게 진행되는지 정의하나요?

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

애니메이션이 5초 동안 실행되도록 지정하는 CSS 속성은 무엇인가요?

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

다음 CSS `50%` @규칙에서 `@keyframe`은 무엇을 나타내나요?

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

애니메이션의 시작점입니다.

---

애니메이션의 끝점입니다.

---

애니메이션의 속도입니다.

#### --answer--

애니메이션의 중간 지점입니다.

### --question--

#### --text--

`transform: translateX(200px);` 속성이 적용되면 어떤 일이 발생하나요?

#### --distractors--

요소가 왼쪽으로 200px 이동합니다.

---

요소가 아래쪽으로 200px 이동합니다.

---

요소가 시계 방향으로 200도 회전합니다.

#### --answer--

요소가 오른쪽으로 200px 이동합니다.

### --question--

#### --text--

`animation-iteration-count`가 `infinite`으로 설정되면 애니메이션은 어떻게 동작하나요?

#### --distractors--

한 번 실행 후 멈춥니다.

---

첫 번째 반복 후 일시 정지합니다.

---

세 번 반복 후 멈춥니다.

#### --answer--

무한 반복됩니다.

### --question--

#### --text--

어떤 `@keyframes` 선택자가 애니메이션의 시작점을 지정하나요?

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

`animation` 축약 CSS 속성으로 지정할 수 있는 것은 무엇인가요?

#### --distractors--

애니메이션 이름만 지정합니다.

---

애니메이션 이름과 지속 시간을 지정합니다.

---

애니메이션 이름, 지속 시간, 지연 시간을 지정합니다.

#### --answer--

모든 애니메이션 속성을 지정합니다.

### --question--

#### --text--

어떤 CSS 속성이 `@keyframes` @규칙으로 정의된 애니메이션을 적용하나요?

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

애니메이션 시작 전 시간을 설정할 수 있는 CSS 속성은 무엇인가요?

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

CSS `animation-delay` 속성은 무엇을 하나요?

#### --distractors--

애니메이션 지속 시간을 설정합니다.

---

타이밍 함수를 지정합니다.

---

애니메이션 방향을 정의합니다.

#### --answer--

애니메이션 시작을 지연시킵니다.

### --question--

#### --text--

어떤 애니메이션 속성이 애니메이션 전후 요소의 스타일을 지정하나요?

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

왜 CSS 애니메이션을 적당히 사용해야 하나요?

#### --distractors--

너무 많은 CSS 애니메이션은 스타일이 깨지거나 브라우저마다 스타일이 일관되지 않을 수 있습니다.

---

너무 많은 CSS 애니메이션은 검색 엔진 결과에서 낮거나 없는 순위를 초래할 수 있습니다.

---

너무 많은 CSS 애니메이션은 서버를 자동으로 다운시키고 보안 위험을 높입니다.

#### --answer--

너무 많은 CSS 애니메이션은 성능 저하를 일으키고 특정 접근성 요구가 있는 사용자에게 산만하거나 문제를 일으킬 수 있습니다.

### --question--

#### --text--

어떤 애니메이션 속성이 애니메이션이 앞으로, 뒤로, 또는 교대로 재생될지 결정하나요?

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

어떤 CSS 미디어 쿼리가 사용자가 최소한의 애니메이션 또는 모션 효과를 요청했는지 감지하나요?

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

어떤 속성이 `animation`가 반복되는 횟수를 설정하나요?

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

어떤 CSS 규칙이 애니메이션 지속 시간 동안 다양한 시점에서 단계와 스타일을 정의하나요?

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

`reduced‑motion` 미디어 쿼리 내에서 어떤 선언이 전환을 비활성화하나요?

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

`animation-play-state` 속성은 무엇을 할 수 있게 하나요?

#### --distractors--

애니메이션 반복 횟수를 설정합니다.

---

애니메이션 완료까지 걸리는 시간을 지정합니다.

---

애니메이션 재생 방향을 결정합니다.

#### --answer--

애니메이션을 일시 정지하고 다시 시작할 수 있습니다.

### --question--

#### --text--

애니메이션 작업 시 좋은 실천 방법은 무엇인가요?

#### --distractors--

주의를 끌기 위해 가능한 한 많은 깜빡이는 색상과 빠른 움직임을 사용하세요.

---

다양한 기기나 화면 크기에서 애니메이션 테스트를 피하세요.

---

사용자가 애니메이션을 확실히 인지하도록 가능한 오래 지속되게 만드세요.

#### --answer--

발작 유발이나 불편함을 방지하려면 초당 3회 이상 깜빡이는 콘텐츠를 피하세요.

### --question--

#### --text--

왜 CSS 규칙에서 `!important` 선언을 사용하나요?

#### --distractors--

다른 미디어 쿼리 로딩을 방지하기 위해서입니다.

---

첫 번째 자식 요소에만 스타일을 제한하기 위해서입니다.

---

CSS 디버그를 쉽게 하기 위해서입니다.

#### --answer--

이 규칙들이 다른 스타일보다 우선 적용되도록 하기 위해서입니다.

### --question--

#### --text--

CSS에서 `animation-iteration-count: 1 !important;`은 무엇을 보장하나요?

#### --distractors--

애니메이션이 일시 정지됨을 보장합니다.

---

애니메이션이 무한히 실행됨을 보장합니다.

---

애니메이션이 매 사이클마다 방향을 반대로 바꿈을 보장합니다.

#### --answer--

반복되는 애니메이션이 한 번만 실행되도록 보장합니다.

### --question--

#### --text--

애니메이션 완료까지 걸리는 시간을 지정하는 CSS 속성은 무엇인가요?

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

`animation` 축약 속성에 포함되지 않는 것은 무엇인가요?

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

`@keyframes` 규칙은 무엇을 정의하나요?

#### --distractors--

애니메이션의 타이밍 함수입니다.

---

요소의 기본 상태입니다.

---

애니메이션용 미디어 쿼리입니다.

#### --answer--

애니메이션의 다양한 시점에서 스타일 수열입니다.

### --question--

#### --text--

이 `@keyframe` @규칙은 애니메이션된 요소에 어떤 동작을 하나요?

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

요소를 0%에서 100%까지 확대합니다.

---

요소를 왼쪽에서 오른쪽으로 이동시킵니다.

---

텍스트 색상을 검은색으로 변경합니다.

#### --answer--

투명도를 점차 줄여 요소가 서서히 나타나게 합니다.

### --question--

#### --text--

키프레임 규칙에서 `100%`은 무엇을 나타내나요?

#### --distractors--

애니메이션 시작입니다.

---

중간 지점입니다.

---

이징 함수입니다.

#### --answer--

애니메이션 끝입니다.

### --question--

#### --text--

어떤 속성이 `animation`의 진행 속도를 제어하나요?

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

접근성을 유지하며 애니메이션을 구현할 때 개발자가 고려해야 할 점은 무엇인가요?

#### --distractors--

모든 애니메이션을 전적으로 JavaScript에 의존합니다.

---

강렬하고 빈번한 애니메이션을 추가합니다.

---

굵고 빠르며 놀라운 효과만 포함합니다.

#### --answer--

미묘하고 의도적인 효과를 사용하고, 사용자 선호를 존중하며, 사용자 제어를 제공합니다.

### --question--

#### --text--

왼쪽에서 요소가 슬라이드 인하는 올바른 구문은 무엇인가요?

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
