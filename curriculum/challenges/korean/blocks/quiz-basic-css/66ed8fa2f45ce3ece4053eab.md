---
id: 66ed8fa2f45ce3ece4053eab
title: CSS 기본 퀴즈
challengeType: 8
dashedName: quiz-basic-css
---

# --description--

퀴즈를 통과하려면 아래 20문제 중 최소 18문제를 올바르게 답해야 합니다.

# --quizzes--

## --quiz--

### --question--

#### --text--

CSS는 무엇의 약자인가요?

#### --distractors--

Cascading Style Script

---

Concatenating Style Script

---

Castor Sage Style

#### --answer--

Cascading Style Sheets

### --question--

#### --text--

다음 중 올바른 CSS 규칙은 무엇인가요?

#### --distractors--

`p=red`

---

`p (color: red)`

---

`{p color: red;}`

#### --answer--

`p {color: red;}`

### --question--

#### --text--

`<meta name="viewport">`는 무엇을 하나요?

#### --distractors--

반응형 디자인을 위해 외부 스타일시트를 웹 페이지에 연결합니다.

---

검색 엔진이 웹 페이지를 인덱싱하는 데 사용하는 메타데이터를 지정합니다.

---

웹 페이지에서 사용하는 문자 인코딩을 지정합니다.

#### --answer--

다양한 화면 크기에서 웹 페이지의 모양과 크기를 제어합니다.

### --question--

#### --text--

인라인 CSS를 사용할 때 올바른 구문은 무엇인가요?

#### --distractors--

`<p color =  blue></p>`

---

`<p><style = blue></p>`

---

`p {color: blue;}`

#### --answer--

`<p style="color: blue;"></p>`

### --question--

#### --text--

내부 CSS를 사용할 때 `style` 요소는 HTML의 어디에 위치하나요?

#### --distractors--

`meta` 요소 안에 있습니다.

---

`script` 요소 안에 있습니다.

---

`body` 요소 안에 있습니다.

#### --answer--

`head` 요소 안에 있습니다.

### --question--

#### --text--

CSS에서 너비와 높이를 설정하는 올바른 규칙은 무엇인가요?

#### --distractors--

`height-width: 50px;`

---

`width-and-height: 50px;`

---

`flex-width: 50px; flex-height: 50px;`

#### --answer--

`width: 50px; height: 50px;`

### --question--

#### --text--

어떤 선택자가 `h1` 안에 있을 때만 `div` 요소를 올바르게 선택하나요?

#### --distractors--

`div, h1 {}`

---

`div ~ h1 {}`

---

`div + h1 {}`

#### --answer--

`div h1 {}`

### --question--

#### --text--

`footer`의 직계 자식을 선택하는 올바른 선택자는 무엇인가요?

#### --distractors--

`footer ~ ul {}`

---

`footer + ul {}`

---

`footer ul {}`

#### --answer--

`footer > ul {}`

### --question--

#### --text--

`img`의 다음 형제 요소를 선택하는 올바른 선택자는 무엇인가요?

#### --distractors--

`img h1 {}`

---

`img > h1 {}`

---

`img ~ h1 {}`

#### --answer--

`img + h1 {}`

### --question--

#### --text--

`img` 요소 다음에 오는 모든 형제 요소를 선택하는 올바른 선택자는 무엇인가요?

#### --distractors--

`img > caption {}`

---

`img caption {}`

---

`img + caption {}`

#### --answer--

`img ~ caption {}`

### --question--

#### --text--

블록 레벨 요소에 대해 TRUE인 설명은 무엇인가요?

#### --distractors--

블록 레벨 요소는 기본적으로 수평으로 쌓입니다.

---

`width`와 `height` 속성은 `display` 속성을 `inline-block`로 설정하지 않으면 보통 블록 레벨 요소에 적용되지 않습니다.

---

블록 레벨 요소는 내부에 인라인 요소를 포함할 수 없습니다.

#### --answer--

블록 레벨 요소는 새 줄에서 시작하며 컨테이너의 전체 너비를 차지합니다.

### --question--

#### --text--

`inline-block` 값을 사용할 때 TRUE인 설명은 무엇인가요?

#### --distractors--

요소는 수직으로 쌓이며 항상 컨테이너의 전체 너비를 차지합니다.

---

요소는 수평으로 정렬되지만 수직 패딩이나 여백을 적용할 수 없습니다.

---

요소는 너비와 높이 설정을 존중하지만 내부에 다른 요소를 포함할 수 없습니다.

#### --answer--

요소는 인라인 흐름을 유지하면서 너비와 높이 설정을 허용합니다.

### --question--

#### --text--

다음 선택자 중 가장 높은 특이성을 가진 것은 무엇인가요?

#### --distractors--

`div`

---

`h1`

---

`p`

#### --answer--

`#id`

### --question--

#### --text--

다음 선택자 중 가장 낮은 특이성을 가진 것은 무엇인가요?

#### --distractors--

`#id`

---

`.class`

---

`div h1`

#### --answer--

`h1`

### --question--

#### --text--

`*` 선택자는 무엇을 하나요?

#### --distractors--

페이지의 일부 요소를 선택합니다.

---

자식이 있는 요소를 선택합니다.

---

페이지의 모든 `p` 요소를 선택합니다.

#### --answer--

페이지의 모든 요소를 선택합니다.

### --question--

#### --text--

CSS에서 `!important`는 무엇을 하나요?

#### --distractors--

인라인 스타일에만 배타적으로 적용되어 외부나 내부 스타일시트의 스타일을 무시합니다.

---

같은 요소에 적용된 다른 모든 CSS 속성을 비활성화하여 해당 요소 스타일에 영향을 주는 유일한 규칙이 됩니다.

---

특정 선택자나 요소 그룹에만 적용됩니다.

#### --answer--

해당 선택자에 적용된 속성의 다른 값을 재정의합니다.

### --question--

#### --text--

CSS 캐스케이드 알고리즘은 어떻게 작동하나요?

#### --distractors--

선언 순서에 따라 요소 스타일을 결정하며 다른 요소는 무시합니다.

---

작성된 순서만으로 스타일을 적용하며 특이성은 무시합니다.

---

특이성을 우선 적용하며 출처와 관련성은 무시합니다.

#### --answer--

특이성과 선언 순서에 따라 요소 스타일을 결정합니다.

### --question--

#### --text--

모든 면에 `32px` 여백을 적용하는 규칙은 무엇인가요?

#### --distractors--

`margin-top: 32px;`

---

`margin: 32px 0;`

---

`margin: 0 32px;`

#### --answer--

`margin: 32px;`

### --question--

#### --text--

위와 아래에 `24px` 패딩을 적용하는 규칙은 무엇인가요?

#### --distractors--

`padding: 24px;`

---

`padding-top-bottom: 24px;`

---

`padding: 0 24px;`

#### --answer--

`padding: 24px 0;`

### --question--

#### --text--

`padding: 10px 20px 30px 40px`에 대해 올바른 값 순서는 무엇인가요?

#### --distractors--

오른쪽, 위, 왼쪽, 아래.

---

위, 왼쪽, 아래, 오른쪽.

---

위, 아래, 오른쪽, 왼쪽.

#### --answer--

위, 오른쪽, 아래, 왼쪽.

## --quiz--

### --question--

#### --text--

CSS 규칙의 주요 구성 요소는 무엇인가요?

#### --distractors--

요소와 속성

---

스타일과 시트

---

스크립트와 값

#### --answer--

선택자와 선언 블록

### --question--

#### --text--

다음 중 올바른 CSS 규칙 구문은 무엇인가요?

#### --distractors--

```css
body [
  font-family: Arial;
]
```

---

```css
font-family {
  body: Arial;
}
```

---

```css
body {
  font-family; Arial:
}
```

#### --answer--

```css
body {
  font-family: Arial;
}
```

### --question--

#### --text--

기본 브라우저 스타일이란 무엇인가요?

#### --distractors--

브라우저와 상관없이 동일한 스타일 속성을 가진 HTML 요소입니다.

---

특정 HTML 요소에 반드시 사용해야 하는 필수 스타일입니다.

---

다양한 브라우저의 색상 테마입니다.

#### --answer--

브라우저가 자동으로 적용하는 CSS 규칙입니다.

### --question--

#### --text--

`width` 속성의 기본값은 무엇인가요?

#### --distractors--

`none`

---

`0`

---

`100%`

#### --answer--

`auto`

### --question--

#### --text--

`min-height` 속성은 무엇을 지정하나요?

#### --distractors--

요소의 시작 높이입니다.

---

요소의 높이입니다.

---

요소의 최대 높이입니다.

#### --answer--

요소의 최솟값 높이입니다.

### --question--

#### --text--

범용 선택자 `*`에 대해 TRUE인 설명은 무엇인가요?

#### --distractors--

페이지의 모든 요소를 스타일링할 수 있어 가장 높은 특이성을 가집니다.

---

특이성 값의 모든 부분에 1을 더합니다.

---

다른 브라우저 간 스타일을 초기화할 수 없습니다.

#### --answer--

모든 선택자 중 가장 낮은 특이성 값을 가집니다.

### --question--

#### --text--

순서 있는 목록에 대해 `li` 요소를 올바르게 선택하는 선택자는 무엇인가요?

#### --distractors--

`li {}`

---

`ul li {}`

---

`ol + li {}`

#### --answer--

`ol li {}`

### --question--

#### --text--

`div` 요소의 단락 요소를 선택하는 선택자는 무엇인가요?

#### --distractors--

`p div {}`

---

`div, p {}`

---

`p, div {}`

#### --answer--

`div p {}`

### --question--

#### --text--

`margin`는 어디에 스타일 속성을 적용하나요?

#### --distractors--

요소 내부 공간입니다.

---

내용과 테두리 사이입니다.

---

요소의 테두리 위입니다.

#### --answer--

요소 외부 공간입니다.

### --question--

#### --text--

`padding` 속성은 어디에 스타일을 적용하나요?

#### --distractors--

요소 테두리와 주변 요소 사이입니다.

---

요소 외부 공간입니다.

---

요소의 테두리 위입니다.

#### --answer--

요소 내부 공간입니다.

### --question--

#### --text--

블록 레벨 요소에 대해 FALSE인 설명은 무엇인가요?

#### --distractors--

컨테이너 너비에 맞게 늘어날 수 있습니다.

---

일반적인 블록 레벨 요소에는 `div`, `paragraph`, `section`이 포함됩니다.

---

블록 레벨 요소는 새 줄에서 시작하며 컨테이너의 전체 너비를 차지합니다.

#### --answer--

사용 가능한 전체 너비를 차지할 수 없으며 그렇게 차단됩니다.

### --question--

#### --text--

`inline-block` 값을 사용할 때 FALSE인 설명은 무엇인가요?

#### --distractors--

`inline-block` 요소는 인라인 요소처럼 동작합니다.

---

`width`와 `height` 속성을 가질 수 있습니다.

---

요소는 인라인 흐름을 유지하면서 `width`와 `height` 설정을 허용합니다.

#### --answer--

인라인 또는 블록 레벨 요소와 속성을 공유하지 않습니다.

### --question--

#### --text--

`!important` 키워드에 대해 TRUE인 설명은 무엇인가요?

#### --distractors--

중요한 CSS 속성에 주석을 달 때 사용합니다.

---

CSS 속성의 올바른 구문을 보장합니다.

---

CSS 규칙을 더 쉽게 유지 관리할 수 있게 합니다.

#### --answer--

다른 선택자의 특이성을 재정의합니다.

### --question--

#### --text--

클래스 선택자 이름 앞에 오는 문자는 무엇인가요?

#### --distractors--

`#`

---

`$`

---

`*`

#### --answer--

`.`

### --question--

#### --text--

인라인 레벨 요소에 대해 FALSE인 설명은 무엇인가요?

#### --distractors--

필요한 만큼만 공간을 차지합니다.

---

새 줄에서 시작하지 않습니다.

---

일반적인 인라인 요소에는 `span`와 `img`이 포함됩니다.

#### --answer--

항상 새 줄에서 시작합니다.

### --question--

#### --text--

내부 CSS 스타일은 어디에서 접근하나요?

#### --distractors--

프로젝트에 중요한 스타일이라 외부에 공유하지 않습니다.

---

프로젝트의 핵심 스타일이므로 다른 웹 페이지가 접근할 수 있도록 `styles.css` 파일에 저장합니다.

---

스타일이 한 웹 페이지만 적용될 때 `body` 요소 안에 저장합니다.

#### --answer--

`style` 요소 내 `head` 섹션 안에 작성합니다.

### --question--

#### --text--

축약 구문을 사용할 때 `padding` 속성 적용 순서는 무엇인가요?

#### --distractors--

`top`, `bottom`, `left`, `right`

---

`left`, `right`, `top`, `bottom`

---

`right`, `top`, `left`, `bottom`

#### --answer--

`top`, `right`, `bottom`, `left`

### --question--

#### --text--

축약 구문을 사용할 때 `margin` 속성 적용 순서는 무엇인가요?

#### --distractors--

`left`, `right`, `top`, `bottom`

---

`right`, `top`, `left`, `bottom`

---

`top`, `bottom`, `left`, `right`

#### --answer--

`top`, `right`, `bottom`, `left`

### --question--

#### --text--

인라인 CSS 스타일은 무엇에 사용되나요?

#### --distractors--

인라인 요소만 스타일링하는 데 사용합니다.

---

브라우저 뷰포트에서 모두 같은 줄에 있을 때만 요소를 스타일링하는 데 사용합니다.

---

관심사의 분리 문제를 해결하는 데 사용합니다.

#### --answer--

내부 또는 외부 CSS 대신 요소 내에서 직접 스타일링하는 데 사용합니다.

### --question--

#### --text--

ID 선택자 앞에 오는 기호는 무엇인가요?

#### --distractors--

`.`

---

`*`

---

`$`

#### --answer--

`#`
