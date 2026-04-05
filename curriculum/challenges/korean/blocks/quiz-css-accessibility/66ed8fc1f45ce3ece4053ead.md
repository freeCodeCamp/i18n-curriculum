---
id: 66ed8fc1f45ce3ece4053ead
title: CSS 접근성 퀴즈
challengeType: 8
dashedName: quiz-css-accessibility
---

# --description--

퀴즈를 통과하려면 아래 10문제 중 최소 9문제를 올바르게 답해야 합니다.

# --quizzes--

## --quiz--

### --question--

#### --text--

웹페이지에서 좋은 색상 대비가 필요한 이유는 무엇인가요?

#### --distractors--

페이지를 더 생동감 있게 만들기 위해서입니다.

---

검색 엔진 최적화(SEO) 요구사항을 충족하기 위해서입니다.

---

페이지의 중요한 요소를 돋보이게 만들기 위해서입니다.

#### --answer--

페이지 내용을 접근 가능하고 읽기 쉽게 만들기 위해서입니다.

### --question--

#### --text--

다음 중 배경색과 전경색을 입력하고 명암 대비율을 확인할 수 있는 도구는 무엇인가요?

#### --distractors--

TPGi Colour Contrast Analyzer

---

Figma

---

Canva

#### --answer--

WebAIM의 Color Contrast Checker

### --question--

#### --text--

다음 중 화면에 표시된 콘텐츠에서 배경색과 전경색을 선택하고 명암 대비율을 확인할 수 있는 도구는 무엇인가요?

#### --distractors--

Figma

---

Canva

---

WebAIM의 Color Contrast Checker

#### --answer--

TPGi Colour Contrast Analyzer

### --question--

#### --text--

왜 `display: none`와 `visibility: hidden`을 사용해 콘텐츠를 시각적으로 숨기면 안 되나요?

#### --distractors--

이 방법들은 화면 읽기 프로그램 같은 보조 기술만 숨겨진 콘텐츠에 접근할 수 있게 만듭니다.

---

이 방법들은 사용자가 마우스를 콘텐츠 위로 이동할 때까지 콘텐츠를 숨깁니다.

---

이 방법들은 일부 브라우저에서 작동하지 않습니다.

#### --answer--

이 방법들은 콘텐츠를 접근성 트리에서 제거하여 화면 읽기 프로그램이 숨겨진 콘텐츠에 접근할 수 없게 만듭니다.

### --question--

#### --text--

접근성 트리란 무엇인가요?

#### --distractors--

웹페이지 레이아웃의 시각적 표현입니다.

---

화면 읽기 프로그램이 웹페이지의 텍스트 콘텐츠를 읽기 위해 사용하는 구조입니다.

---

DOM 트리의 복사본입니다.

#### --answer--

화면 읽기 프로그램이 웹페이지의 콘텐츠를 해석하고 상호작용하기 위해 사용하는 구조입니다.

### --question--

#### --text--

다음 중 이미지가 `400px`의 최솟값 너비를 가지면서 뷰포트 너비가 `1000px`보다 클 때 더 넓어지도록 하는 것은 무엇인가요?

#### --distractors--

```css
img {
  width: max(400px, 10vw);
}
```

---

```css
img {
  width: max(400px, 30vw);
}
```

---

```css
img {
  width: max(400px, 20vw);
}
```

#### --answer--

```css
img {
  width: max(400px, 40vw);
}
```

### --question--

#### --text--

다음 중 부드러운 스크롤 동작을 허용하는 `scroll-behavior` 값은 무엇인가요?

#### --distractors--

`auto`

---

`inherit`

---

`revert`

#### --answer--

`smooth`

### --question--

#### --text--

사용자의 애니메이션 선호도를 감지하는 데 사용되는 기능은 무엇인가요?

#### --distractors--

`prefers-contrast`

---

`display-mode`

---

`animation`

#### --answer--

`prefers-reduce-motion`

### --question--

#### --text--

`placeholder` 요소의 `input` 속성에서 발생하는 접근성 문제는 무엇인가요?

#### --distractors--

자리 표시자 텍스트가 화면 읽기 프로그램이 입력 레이블 텍스트를 읽는 것을 방해합니다.

---

자리 표시자 텍스트가 화면 읽기 프로그램이 입력 값을 읽는 것을 방해합니다.

---

자리 표시자 텍스트가 너무 작아 읽기 어렵습니다.

#### --answer--

자리 표시자 텍스트가 실제 입력 값과 혼동될 수 있습니다.

### --question--

#### --text--

`hidden` 속성은 무엇을 하나요?

#### --distractors--

콘텐츠를 숨기고 마우스 오버 시 표시합니다.

---

접근성 트리에서만 콘텐츠를 숨깁니다.

---

시각적으로 콘텐츠를 숨기지만 접근성 트리에는 콘텐츠가 남아 있습니다.

#### --answer--

콘텐츠를 시각적으로 그리고 접근성 트리에서도 숨깁니다.
