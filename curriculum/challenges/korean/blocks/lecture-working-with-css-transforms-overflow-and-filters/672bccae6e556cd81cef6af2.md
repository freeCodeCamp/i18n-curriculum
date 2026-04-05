---
id: 672bccae6e556cd81cef6af2
title: 마진 겹침이란 무엇이며 어떻게 작동할까요?
challengeType: 19
dashedName: what-is-margin-collapsing
---

# --interactive--

마진 겹침은 CSS에서 기본 개념으로, 웹 개발 초보자들이 자주 혼란스러워하는 부분입니다.

이 현상은 인접한 요소들의 수직 마진이 겹쳐져 두 마진 중 더 큰 값과 같은 하나의 마진으로 합쳐질 때 발생합니다.

마진 겹침을 이해하는 것은 웹 디자인에서 간격과 레이아웃을 정확하게 제어하는 데 중요합니다. 그럼 마진 겹침이 어떻게 작동하는지 살펴보고, 자주 발생하는 상황들을 함께 알아보겠습니다.

CSS에서 두 개의 수직 마진이 서로 닿으면 겹치게 됩니다. 즉, 두 마진이 합쳐지는 대신 더 큰 마진이 승리하여 요소들 사이의 간격을 결정합니다. 이 동작은 수직 마진(위쪽과 아래쪽)에만 적용되며, 수평 마진(왼쪽과 오른쪽)에는 적용되지 않습니다. 다음 예제로 이 개념을 설명하겠습니다:

:::interactive_editor

```html
<style>
  .box1 {
    margin-bottom: 20px;
    background-color: lightblue;
  }
  .box2 {
    margin-top: 30px;
    background-color: lightgreen;
  }
</style>

<div class="box1">Box 1</div>
<div class="box2">Box 2</div>
```

:::

이 예제에서 `.box1`와 `.box2` 사이의 총 간격이 50픽셀(20픽셀과 30픽셀의 합)일 것으로 예상할 수 있습니다. 하지만 마진 겹침 때문에 실제 간격은 두 마진 중 더 큰 30픽셀이 됩니다.

앞선 예제에서 보았듯이, 인접한 형제 요소들의 마진은 겹칩니다. 이것이 마진 겹침의 가장 직관적인 경우입니다. 이제 마진 겹침이 발생할 수 있는 다른 경우들을 살펴보겠습니다.

마진은 부모 요소와 그 첫 번째 또는 마지막 자식 요소 사이에서도 겹칠 수 있습니다. 만약 부모의 마진과 자식의 마진 사이를 구분하는 테두리, 패딩, 인라인 콘텐츠, 또는 클리어런스가 없다면 마진이 겹칩니다.

:::interactive_editor

```html
<style>
  .parent {
    margin-top: 40px;
    background-color: lightyellow;
  }
  .child {
    margin-top: 30px;
    background-color: lightpink;
  }
</style>

<div class="parent">
  <div class="child">Child element</div>
</div>
```

:::

이 경우 자식 요소가 위에서 70픽셀(40픽셀과 30픽셀의 합) 떨어져 있을 것으로 예상할 수 있습니다. 하지만 마진이 겹쳐져 더 큰 40픽셀 마진이 적용됩니다.

요소에 콘텐츠, 패딩, 테두리가 없으면 위쪽과 아래쪽 마진이 하나의 마진으로 합쳐질 수 있습니다.

:::interactive_editor

```html
<style>
  .empty-block {
    margin-top: 20px;
    margin-bottom: 10px;
    height: 0;
  }
  .next-block {
    background-color: lightgray;
  }
</style>

<div class="empty-block"></div>
<div class="next-block">Next block</div>
```

:::

이 예제에서 `empty-block`의 위쪽과 아래쪽 마진이 두 마진 중 더 큰 20픽셀 하나로 겹칩니다.

다음은 패딩을 사용해 마진 겹침을 방지하는 예입니다:

:::interactive_editor

```html
<style>
  .parent {
    margin-top: 40px;
    padding-top: 1px;
    background-color: lightyellow;
  }
  .child {
    margin-top: 30px;
    background-color: lightpink;
  }
</style>

<div class="parent">
  <div class="child">Child element</div>
</div>
```

:::

이 경우 부모 요소에 1픽셀 패딩이 있어 마진이 겹치지 않고, 부모의 위쪽부터 자식 콘텐츠의 위쪽까지 총 71픽셀 간격이 생깁니다.

마진 겹침을 이해하는 것은 CSS에서 레이아웃과 간격을 정확하게 제어하는 데 중요합니다. 때로는 예상치 못한 결과를 낳기도 하지만, 문서 내에서 더 미려하고 일관된 간격을 만들기 위해 설계된 기능입니다. 마진 겹침이 언제 발생하는지 알고 필요할 때 이를 방지하는 방법을 알면, 웹 디자인에서 더 예측 가능하고 유지 관리하기 쉬운 레이아웃을 만들 수 있습니다.

# --questions--

## --text--

마진 겹침은 어느 방향에서 발생하나요?

## --answers--

수평 마진에서만 발생합니다.

### --feedback--

어떤 마진(위, 아래, 왼쪽, 오른쪽)이 이 동작에 영향을 받는지 생각해 보세요.

---

수직 마진에서만 발생합니다.

---

수평과 수직 마진 모두에서 발생합니다.

### --feedback--

어떤 마진(위, 아래, 왼쪽, 오른쪽)이 이 동작에 영향을 받는지 생각해 보세요.

---

대각선 마진에서 발생합니다.

### --feedback--

어떤 마진(위, 아래, 왼쪽, 오른쪽)이 이 동작에 영향을 받는지 생각해 보세요.

## --video-solution--

2

## --text--

두 인접한 요소가 서로 다른 마진 값을 가질 때 어떤 일이 발생하나요?

## --answers--

마진이 합쳐집니다.

### --feedback--

마진 겹침이 발생할 때 어떤 마진이 "승리"하는지 생각해 보세요.

---

더 작은 마진이 사용됩니다.

### --feedback--

마진 겹침이 발생할 때 어떤 마진이 "승리"하는지 생각해 보세요.

---

더 큰 마진이 사용됩니다.

---

두 마진의 평균값이 사용됩니다.

### --feedback--

마진 겹침이 발생할 때 어떤 마진이 "승리"하는지 생각해 보세요.

## --video-solution--

3

## --text--

다음 중 부모와 첫 번째 자식 사이의 마진 겹침을 방지하지 않는 것은 무엇인가요?

## --answers--

부모에 `border`를 추가하는 것.

### --feedback--

부모와 자식 마진 사이에 구분을 만드는 속성이 무엇인지 생각해 보세요.

---

부모에 `padding-top: 1px;`를 설정하는 것.

### --feedback--

부모와 자식 마진 사이에 구분을 만드는 속성이 무엇인지 생각해 보세요.

---

자식에 `display: inline-block;`를 사용하는 것.

### --feedback--

부모와 자식 마진 사이에 구분을 만드는 속성이 무엇인지 생각해 보세요.

---

자식에 `margin-top: 0;`를 설정하는 것.

## --video-solution--

4
