---
id: 66ed8ffcf45ce3ece4053eb5
title: CSS 위치 지정 퀴즈
challengeType: 8
dashedName: quiz-css-positioning
---

# --description--

퀴즈를 통과하려면 아래 20문제 중 최소 18문제에 올바르게 답해야 합니다.

# --quizzes--

## --quiz--

### --question--

#### --text--

다음 중 `position` 속성에 대해 유효하지 않은 값은 무엇인가요?

#### --distractors--

`fixed`

---

`absolute`

---

`relative`

#### --answer--

`above`

### --question--

#### --text--

CSS에서 `float` 속성의 주요 목적은 무엇인가요?

#### --distractors--

플로트는 요소를 페이지의 정상 흐름에서 제거하고 웹페이지 오른쪽 상단에 자동으로 위치시키는 데 사용됩니다.

---

플로트는 요소를 페이지의 정상 흐름에서 제거하고 컨테이너 상단에 위치시키는 데 사용됩니다.

---

플로트는 요소를 페이지의 정상 흐름에서 제거하고 웹페이지 오른쪽 하단에 자동으로 위치시키는 데 사용됩니다.

#### --answer--

플로트는 요소를 페이지의 정상 흐름에서 제거하고 컨테이너의 왼쪽 또는 오른쪽에 위치시키는 데 사용됩니다.

### --question--

#### --text--

박스 요소를 왼쪽으로 플로트하게 만드는 예시는 무엇인가요?

#### --distractors--

```css
.box {
  left: float;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  position: float-left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  float: left-side;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

#### --answer--

```css
.box {
  float: left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

### --question--

#### --text--

`clear` 속성의 역할은 무엇인가요?

#### --distractors--

요소를 페이지 하단으로 이동해야 하는지 결정하는 데 사용됩니다.

---

요소를 페이지에서 완전히 지워야 하는지 결정하는 데 사용됩니다.

---

요소를 페이지 상단에 고정해야 하는지 결정하는 데 사용됩니다.

#### --answer--

플로트된 콘텐츠 아래로 요소를 이동해야 하는지 결정하는 데 사용됩니다.

### --question--

#### --text--

페이지에서 겹치는 위치 지정 요소의 수직 쌓임 순서를 제어하는 CSS 속성은 무엇인가요?

#### --distractors--

`position`

---

`bg-green`

---

`float`

#### --answer--

`z-index`

### --question--

#### --text--

상대 위치 지정의 올바른 구문은 무엇인가요?

#### --distractors--

```css
.relative {
  position: relative-position;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative-position: relative;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative: position;
  top: 30px;
  left: 30px;
}
```

#### --answer--

```css
.relative {
  position: relative;
  top: 30px;
  left: 30px;
}
```

### --question--

#### --text--

스크롤 시에도 요소가 움직이지 않고 페이지의 특정 위치에 고정되도록 하는 CSS 속성은 무엇인가요?

#### --distractors--

`position: no-scroll;`

---

`position: relative;`

---

`display: block;`

#### --answer--

`position: fixed;`

### --question--

#### --text--

절대 위치 지정이 요소에 하는 역할은 무엇인가요?

#### --distractors--

절대 위치 지정은 요소를 플로트된 콘텐츠 아래로 이동해야 하는지 결정하는 데 사용됩니다.

---

절대 위치 지정은 요소를 정상 문서 흐름 내에 위치시키는 데 사용됩니다.

---

절대 위치 지정은 페이지에서 겹치는 위치 지정 요소의 수직 쌓임 순서를 제어하는 데 사용됩니다.

#### --answer--

절대 위치 지정은 요소를 정상 문서 흐름에서 분리하여 다른 요소와 독립적으로 동작하게 합니다.

### --question--

#### --text--

절대 위치 지정에 사용할 수 없는 유효하지 않은 속성은 무엇인가요?

#### --distractors--

`right`

---

`bottom`

---

`top`

#### --answer--

`side`

### --question--

#### --text--

상대 위치 지정과 절대 위치 지정의 주요 차이점은 무엇인가요?

#### --distractors--

절대 위치 지정은 요소를 스티키 위치에 설정하고 상대 위치 지정은 요소를 정상 문서 흐름에서 분리합니다.

---

상대 위치 지정은 요소를 고정 위치에 설정하고 절대 위치 지정은 요소를 정상 문서 흐름에서 분리합니다.

---

절대 위치 지정은 요소를 정상 문서 흐름 내에 위치시키고 상대 위치 지정은 요소를 정상 문서 흐름에서 분리합니다.

#### --answer--

상대 위치 지정은 요소를 정상 문서 흐름 내에 위치시키고 절대 위치 지정은 요소를 정상 문서 흐름에서 분리합니다.

### --question--

#### --text--

페이지 왼쪽 상단 모서리에 박스를 위치시키는 예시는 무엇인가요?

#### --distractors--

```css
.box {
  position: absolute;
  bottom: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  top: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  bottom: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

#### --answer--

```css
.box {
  position: absolute;
  top: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

### --question--

#### --text--

어떤 위치 지정 방법이 특정 지점을 지나 스크롤할 때만 요소를 고정 위치에 붙게 하나요?

#### --distractors--

플로트 위치 지정.

---

고정 위치 지정.

---

절대 위치 지정.

#### --answer--

스티키 위치 지정.

### --question--

#### --text--

스티키 위치 지정의 올바른 사용 예시는 무엇인가요?

#### --distractors--

```css
.box {
  sticky: position;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-fixed;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-top;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

#### --answer--

```css
.box {
  position: sticky;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

### --question--

#### --text--

스티키 위치 지정과 고정 위치 지정의 차이는 무엇인가요?

#### --distractors--

스티키 요소는 표 레이아웃에서만 사용 가능하고 고정 요소는 모든 CSS 레이아웃에서 사용 가능합니다.

---

스티키 요소는 항상 같은 위치에 머무르고 고정 요소는 특정 지점에 붙었다가 상대 요소처럼 동작합니다.

---

고정 요소는 정상 위치를 기준으로 위치 지정되고 스티키 요소는 특정 지점에 붙었다가 상대 요소처럼 동작합니다.

#### --answer--

고정 요소는 화면에서 항상 같은 위치에 머무르고 스티키 요소는 특정 지점에 붙었다가 상대 요소처럼 동작합니다.

### --question--

#### --text--

`clearfix` 해킹이 플로트 작업 시 어떤 문제를 해결했나요?

#### --distractors--

`clearfix` 해킹은 플로트된 요소가 정상 문서 흐름에서 제거되고 페이지에 고정 위치로 배치되는 문제를 해결했습니다.

---

`clearfix` 해킹은 플로트된 요소가 모바일과 태블릿 레이아웃에서 반응형이 되지 않는 문제를 해결했습니다.

---

`clearfix` 해킹은 플로트된 요소가 페이지에서 사라지는 문제를 해결했습니다.

#### --answer--

`clearfix` 해킹은 여러 플로트된 요소가 나란히 쌓일 때 레이아웃에서 겹침과 붕괴 문제를 해결했습니다.

### --question--

#### --text--

`clearfix` 해킹을 사용하는 올바른 예시는 무엇인가요?

#### --distractors--

```css
.clearfix::before {
  position: fixed;
  top: 0;
  width: 100%;
  clear: both;
}
```

---

```css
.clearfix::after {
  position: relative;
  top: 30px;
  left: 30px;
  clear: all;
}
```

---

```css
.clearfix::before {
  top: 30px;
  clear: none;
}
```

#### --answer--

```css
.clearfix::after {
  content: "";
  display: block;
  clear: both;
}
```

### --question--

#### --text--

정적 위치 지정이란 무엇인가요?

#### --distractors--

요소를 페이지의 정상 흐름에서 제거하고 웹페이지 오른쪽 상단에 자동으로 위치시키는 데 사용됩니다.

---

요소를 정상 문서 흐름에서 분리하여 다른 요소와 독립적으로 동작하게 합니다.

---

특정 지점을 지나 스크롤할 때만 요소를 고정 위치에 붙게 합니다.

#### --answer--

문서의 정상 흐름입니다. 요소는 위에서 아래, 왼쪽에서 오른쪽으로 차례대로 위치합니다.

### --question--

#### --text--

고정 위치 지정을 사용해 내비게이션 바를 페이지 상단에 설정하는 예시는 무엇인가요?

#### --distractors--

```css
.navbar {
  fixed: top;
  top: 0;
  width: 100%;
}
```

---

```css
.navbar {
  upper: fixed;
  width: 100%;
}
```

---

```css
.navbar {
  position: fixed-top;
  top: 0;
  width: 100%;
}
```

#### --answer--

```css
.navbar {
  position: fixed;
  top: 0;
  width: 100%;
}
```

### --question--

#### --text--

`z-index` 속성에 사용할 수 있는 유효한 값은 무엇인가요?

#### --distractors--

`12.0`

---

`none`

---

`up`

#### --answer--

`1`

### --question--

#### --text--

`position` 속성의 기본값은 무엇인가요?

#### --distractors--

`inherit`

---

`initial`

---

`relative`

#### --answer--

`static`

## --quiz--

### --question--

#### --text--

`position` 값은 `top`와 `left`으로 요소 위치를 조정하면서도 정상 문서 흐름 내에 유지하게 해줍니다. 이 값은 무엇인가요?

#### --distractors--

`position: absolute;`

---

`position: static;`

---

`position: fixed;`

#### --answer--

`position: relative;`

### --question--

#### --text--

`position: sticky;` 값을 가진 요소는 처음에 어떻게 동작하나요?

#### --distractors--

스크롤 위치에 도달할 때까지 `fixed` 요소처럼 동작합니다.

---

항상 정상 문서 흐름에서 제거됩니다.

---

부모 내에서 `absolute` 요소처럼 동작합니다.

#### --answer--

지정된 스크롤 위치에 도달할 때까지 `relative` 요소처럼 동작합니다.

### --question--

#### --text--

`z-index` 속성을 사용해 `.box-two`이 `.box-one` 위에 나타나도록 하는 올바르고 효과적인 예시는 무엇인가요?

#### --distractors--

```css
.box-one {
  position: static;
  z-index: 2;
}
.box-two {
  position: static;
  z-index: 1;
}
```

---

```css
.box-one {
  position: absolute;
  stack-order: 1;
}
.box-two {
  position: absolute;
  stack-order: 2;
}
```

---

```css
.box-one {
  float: left;
  z-index: 1;
}
.box-two {
  float: left;
  z-index: 2;
}
```

#### --answer--

```css
.box-one {
  position: absolute;
  z-index: 1;
}
.box-two {
  position: absolute;
  z-index: 2;
}
```

### --question--

#### --text--

CSS에서 `z-index` 속성은 무엇을 위해 사용되나요?

#### --distractors--

페이지의 줌 레벨을 설정합니다.

---

플렉스 컨테이너 내 요소의 수평 정렬을 제어합니다.

---

요소의 콘텐츠와 테두리 사이 간격을 정의합니다.

#### --answer--

겹치는 위치 지정 요소의 수직 쌓임 순서를 제어합니다.

### --question--

#### --text--

`top: 10%;`을 `position: fixed;`이 적용된 요소에 적용하면 `10%`는 무엇을 기준으로 계산되나요?

#### --distractors--

요소 자체의 높이.

---

부모 컨테이너의 높이.

---

뷰포트의 너비.

#### --answer--

뷰포트의 높이.

### --question--

#### --text--

다른 콘텐츠 위에 오버레이를 배치하기 위해 `z-index` 속성을 올바르게 사용한 코드 예시는 무엇인가요?

#### --distractors--

```css
.overlay {
  z-index: 5;
  background-color: black;
}
```

---

```css
.overlay {
  display: block;
  z-layer: 1;
  background-color: black;
}
```

---

```css
.overlay {
  float: left;
  z-index: 2;
  background-color: black;
}
```

#### --answer--

```css
.overlay {
  position: absolute;
  z-index: 10;
  background-color: black;
}
```

### --question--

#### --text--

플로트된 요소 아래로 이동해야 하는지 제어하는 CSS 속성은 무엇인가요?

#### --distractors--

`float`

---

`overflow`

---

`display`

#### --answer--

`clear`

### --question--

#### --text--

`position: relative;`와 `bottom: 25px;`가 적용된 요소는 어떻게 이동하나요?

#### --distractors--

정상 위치에서 25px 아래로 이동합니다.

---

정상 위치에서 25px 오른쪽으로 이동합니다.

---

뷰포트 하단에서 25px 위치합니다.

#### --answer--

정상 위치에서 25px 위로 이동합니다.

### --question--

#### --text--

`z-index` 속성은 어떤 CSS 속성이 적용된 요소에만 영향을 미치나요?

#### --distractors--

`float` 값이 `none`가 아닌 경우.

---

`display` 값이 `inline-block`인 경우.

---

`background-color`가 설정된 경우.

#### --answer--

`position` 값이 `static`가 아닌 경우.

### --question--

#### --text--

헤더의 로고에 `float: right;`를 적용하면 어떤 효과가 있나요?

#### --distractors--

로고가 오른쪽으로 정렬되지만 정상 문서 흐름에 남아 다른 콘텐츠가 감싸지지 않습니다.

---

로고가 흐름에서 분리되어 컨테이너가 아닌 전체 브라우저 뷰포트 오른쪽에 위치합니다.

---

로고가 블록 요소가 되어 헤더 전체 너비를 차지하며 다른 요소를 아래로 밀어냅니다.

#### --answer--

로고가 정상 흐름에서 분리되어 컨테이너 오른쪽에 위치하며 다른 콘텐츠가 감싸게 됩니다.

### --question--

#### --text--

스크롤 시 뷰포트 상단에 요소를 고정하는 올바른 CSS 코드는 무엇인가요?

#### --distractors--

```css
.header {
  position: fixed;
  top: 0;
}
```

---

```css
.header {
  position: relative;
  top: 0;
}
```

---

```css
.header {
  position: absolute;
  top: 0;
}
```

#### --answer--

```css
.header {
  position: sticky;
  top: 0;
}
```

### --question--

#### --text--

CSS에서 `clear: both;`의 구체적인 목적은 무엇인가요?

#### --distractors--

요소 자체에 적용된 `float` 속성을 취소하여 정상 문서 흐름으로 되돌립니다.

---

부모 요소에서 상속된 `clear` 속성을 제거하여 기본 플로트 동작을 복원합니다.

---

오른쪽에 플로트된 요소만 지우고 왼쪽 플로트 요소는 그대로 둡니다.

#### --answer--

왼쪽과 오른쪽에 나타나는 모든 플로트된 요소 아래로 요소가 이동하도록 보장합니다.

### --question--

#### --text--

다음 코드를 기준으로 `.child`는 어떻게 위치 지정되나요?

```css
.parent {
  /* No position property set */
  height: 200px;
}
.child {
  position: absolute;
  top: 10px;
}
```

#### --distractors--

부모가 위치 지정되지 않았으므로 `.parent` 위치 지정은 항상 직접 부모를 기준으로 하여 `absolute` 요소 상단에서 10px 떨어진 위치에 배치됩니다.

---

`absolute` 값이 `z-index` 속성 없이 유효하지 않아 기본 정적 위치에 남습니다.

---

브라우저 창 상단에서 10px 떨어진 위치에 고정되어 스크롤해도 움직이지 않습니다.

#### --answer--

부모가 위치 지정되지 않아 초기 컨테이너 블록(예: `<body>`) 상단에서 10px 떨어진 위치에 배치됩니다.

### --question--

#### --text--

다음 CSS가 `.box` 요소에 미치는 영향은 무엇인가요?

```css
.box {
  position: absolute;
  top: 50px;
  left: 50px;
}
```

#### --distractors--

요소는 정상 흐름에 남아 있지만 위와 왼쪽에서 50px 들여쓰기 되어 다른 요소를 밀어냅니다.

---

요소는 뷰포트에 고정되어 페이지 스크롤 시에도 위와 왼쪽에서 50px 떨어진 위치에 머뭅니다.

---

요소는 자신의 시작점을 기준으로 상대 위치 지정되어 문서 흐름을 벗어나지 않고 아래로 50px, 오른쪽으로 50px 이동합니다.

#### --answer--

요소가 정상 흐름에서 분리되어 가장 가까운 위치 지정 조상 요소의 위와 왼쪽에서 50px 떨어진 위치에 배치됩니다.

### --question--

#### --text--

다음 중 요소를 문서의 정상 흐름에서 완전히 제거하는 `position` 값은 무엇인가요?

#### --distractors--

`position: static;`

---

`position: relative;`

---

`position: inherit;`

#### --answer--

`position: absolute;`

### --question--

#### --text--

`.parent`와 `.child` 요소가 있을 때, `.child`을 `.parent` 요소의 왼쪽 상단에서 20px 떨어진 위치에 올바르게 배치하는 CSS 코드는 무엇인가요?

#### --distractors--

```css
.parent {
  /* position: static; by default */
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  position: relative;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  float: left;
  top: 20px;
  left: 20px;
}
```

#### --answer--

```css
.parent {
  position: relative;
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

### --question--

#### --text--

`static`와 `relative` 위치 지정의 차이는 무엇인가요?

#### --distractors--

`static` 위치 지정은 요소를 문서 흐름에서 제거하지만 `relative` 위치 지정은 흐름 내에 유지합니다.

---

`position: static;` 요소는 `top`와 `left` 속성으로 오프셋할 수 있지만 `position: relative;`는 할 수 없습니다.

---

`static` 위치 지정은 블록 요소용이고 `relative` 위치 지정은 인라인 요소 전용입니다.

#### --answer--

두 위치 지정 모두 요소를 정상 문서 흐름에 유지하지만 `relative`는 요소를 원래 위치에서 오프셋할 수 있습니다.

### --question--

#### --text--

이미지를 왼쪽으로 플로트하고 다른 콘텐츠가 감싸도록 하는 올바른 CSS 코드는 무엇인가요?

#### --distractors--

```css
.image {
  position: absolute;
  left: 0;
}
```

---

```css
.image {
  display: inline-block;
}
```

---

```css
.image {
  text-align: left;
}
```

#### --answer--

```css
.image {
  float: left;
}
```

### --question--

#### --text--

`absolute`와 `fixed` 위치 지정의 차이는 무엇인가요?

#### --distractors--

`absolute` 위치 지정은 뷰포트를 기준으로 하고 `fixed` 위치 지정은 가장 가까운 위치 지정 조상을 기준으로 합니다.

---

`absolute` 위치 지정은 요소를 정상 문서 흐름에 유지하고 `fixed` 위치 지정은 흐름에서 제거합니다.

---

두 위치 지정 모두 뷰포트를 기준으로 하지만 `fixed` 요소는 페이지와 함께 스크롤되고 `absolute` 요소는 스크롤되지 않습니다.

#### --answer--

`absolute` 위치 지정은 가장 가까운 위치 지정 조상을 기준으로 하고 `fixed` 위치 지정은 브라우저 뷰포트를 기준으로 합니다.

### --question--

#### --text--

`position` 값은 요소를 정상 문서 흐름에 두고 `top`와 `left` 같은 오프셋 속성의 영향을 받지 않게 합니다. 이 값은 무엇인가요?

#### --distractors--

`position: relative;`

---

`position: absolute;`

---

`position: fixed;`

#### --answer--

`position: static;`
