---
id: 672bccc8ea33bad87abb3c56
title: content-box와 border-box의 차이점은 무엇인가요?
challengeType: 19
dashedName: what-is-the-difference-between-content-box-and-border-box
---

# --interactive--

`box-sizing` 속성은 요소의 너비와 높이가 어떻게 계산되는지 제어하기 위해 `content-box` 또는 `border-box`로 설정할 수 있습니다.

이 속성은 문서 내 모든 요소에 적용하기 위해 범용 선택자(`*`)에 설정할 수 있습니다:

```css
* {
  box-sizing: border-box;
}
```

`box-sizing` 속성의 기본값은 `content-box`이지만, 필요에 따라 `border-box`를 선택할 수 있습니다. 먼저 `content-box`를 살펴보고 그다음 `border-box`를 알아보겠습니다.

모델이 어떻게 작동하는지 이해하려면 CSS 박스 모델의 네 가지 핵심 개념에 익숙해야 합니다. 빠르게 검토해 보겠습니다.

- 콘텐츠 영역은 요소의 콘텐츠가 차지하는 공간입니다.
- `padding`은 콘텐츠 영역과 `border` 사이의 공간입니다.
- `border`은 콘텐츠 영역과 `padding`을 둘러싼 윤곽선입니다.
- `margin`은 `border` 바깥에 있어 요소와 다른 요소를 구분하는 공간입니다.

`content-box` 모델에서는 요소에 설정한 너비와 높이가 콘텐츠 영역의 크기를 결정하며 `padding`, `border`, `margin`는 포함하지 않습니다. 콘텐츠 영역을 정확히 제어해야 할 때 `content-box`을 사용하세요. `width`과 `height`를 설정하면 콘텐츠 자체 크기만 설정하는 것입니다.

요소의 전체 너비를 구하려면 좌우 `padding`과 좌우 `border`를 더해야 합니다. 마찬가지로 요소의 전체 높이는 콘텐츠 높이, 상하 `padding`, 상하 `border`를 더해서 구합니다.

예를 들어, 여기 모든 `div` 요소에 대한 CSS 타입 선택자가 있습니다.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div></div>
```

```css
div {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
}
```

:::

이 경우 `content-box`를 사용하면 콘텐츠 영역은 300px x 200px입니다. 전체 렌더링 크기는 `padding`과 `border`를 포함합니다 — 예를 들어, 전체 너비 = 300px(콘텐츠) + 40px(`padding`) + 8px(`border`) = 348px; 전체 높이도 같은 방식으로 계산됩니다.

좋아요! 이제 `border-box`를 살펴보겠습니다. 이 모델은 설정한 너비와 높이에 요소의 콘텐츠, `padding`, `border`가 포함됩니다(단, `margin`는 제외). `border-box`은 `padding`이나 `border`가 변경되어도 요소의 전체 크기를 고정하고 싶을 때 유용하며, 반응형 레이아웃에서 자주 사용됩니다.

`border-box`에서는 `padding`과 `border`가 요소가 지정한 크기 안에 포함됩니다. 설정한 `width`과 `height`가 요소의 전체 크기(콘텐츠 + `padding` + `border`)가 되며, `margin`는 제외됩니다.

다음 예제에는 동일한 크기지만 `box-sizing` 값이 다른 두 `div` 요소가 있습니다. 브라우저에서 보면 전체 크기가 다르게 나타나는 것을 확인할 수 있습니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div class="box" id="red-div"></div>
<div class="box" id="blue-div"></div>
```


```css
.box {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
  margin: 10px;
}

#red-div {
  box-sizing: content-box;
  background-color: red;
}

#blue-div {
  box-sizing: border-box;
  background-color: blue;
}
```

:::

두 요소 모두 `width`, `height`, `padding`, `border`, `margin`가 동일합니다. 색상과 `box-sizing` 속성 값만 다릅니다. 이 작은 차이가 최종 크기에 매우 중요한 영향을 미칩니다.

`content-box`와 `border-box` 중 선택은 프로젝트의 구체적인 요구에 따라 달라집니다. `border-box`가 단순성과 유연성 때문에 점점 인기를 얻고 있지만, 두 모델 모두를 이해하는 것이 효과적인 CSS 레이아웃 구현에 중요합니다.

# --questions--

## --text--

대부분의 브라우저에서 `box-sizing` 속성의 기본값은 무엇인가요?

## --answers--

`content-box`

---

`border-box`

### --feedback--

요소 크기 지정의 기본 동작을 생각해 보세요.

---

`padding-box`

### --feedback--

요소 크기 지정의 기본 동작을 생각해 보세요.

---

`margin-box`

### --feedback--

요소 크기 지정의 기본 동작을 생각해 보세요.

## --video-solution--

1

## --text--

반응형 레이아웃을 만들 때 `border-box`를 사용하는 주요 장점은 무엇인가요?

## --answers--

계산이 더 복잡해집니다.

### --feedback--

`border-box` 모델이 지정한 `width`와 `height` 내에서 `padding`과 `border`를 어떻게 처리하는지 생각해 보세요.

---

요소 크기를 더 정확하게 제어할 수 있습니다.

### --feedback--

`border-box` 모델이 지정한 `width`와 `height` 내에서 `padding`과 `border`를 어떻게 처리하는지 생각해 보세요.

---

`padding`이나 `border`가 변경되어도 요소가 지정한 크기를 유지하도록 보장합니다.

---

브라우저 호환성을 향상시킵니다.

### --feedback--

`border-box` 모델이 지정한 `width`와 `height` 내에서 `padding`과 `border`를 어떻게 처리하는지 생각해 보세요.

## --video-solution--

3

## --text--

`content-box` 모델에서 요소에 지정한 `width`는 무엇을 나타내나요?

## --answers--

`padding`, `border`, `margin`를 포함한 요소의 전체 `width`입니다.

### --feedback--

`content-box` 모델에서 콘텐츠 영역과 전체 요소 크기 간의 관계를 생각해 보세요.

---

콘텐츠 영역의 `width`만 나타냅니다.

---

`width`의 `border`입니다.

### --feedback--

`content-box` 모델에서 콘텐츠 영역과 전체 요소 크기 간의 관계를 생각해 보세요.

---

`width`의 `padding`입니다.

### --feedback--

`content-box` 모델에서 콘텐츠 영역과 전체 요소 크기 간의 관계를 생각해 보세요.

## --video-solution--

2
