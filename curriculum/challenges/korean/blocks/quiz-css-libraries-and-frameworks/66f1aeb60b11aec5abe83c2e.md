---
id: 66f1aeb60b11aec5abe83c2e
title: CSS 라이브러리와 프레임워크 퀴즈
challengeType: 8
dashedName: quiz-css-libraries-and-frameworks
---

# --description--

퀴즈를 통과하려면 아래 10문제 중 최소 9문제를 올바르게 답해야 합니다.

# --quizzes--

## --quiz--

### --question--

#### --text--

CSS 프레임워크란 무엇인가요?

#### --distractors--

CSS 오류를 고치는 도구입니다.

---

CSS 파일을 린트하는 도구입니다.

---

CSS 파일을 포맷하는 도구입니다.

#### --answer--

CSS 스타일을 위한 라이브러리입니다.

### --question--

#### --text--

다음 중 인기 있는 유틸리티 우선 CSS 프레임워크는 무엇인가요?

#### --distractors--

템플릿 CSS

---

로딩 CSS

---

미니멀 CSS

#### --answer--

Tailwind CSS

### --question--

#### --text--

CSS 프레임워크의 단점은 무엇인가요?

#### --distractors--

컴포넌트가 너무 적습니다.

---

커스터마이징 옵션이 없습니다.

---

브라우저 지원이 향상됩니다.

#### --answer--

CSS 파일이 부풀려질 수 있습니다.

### --question--

#### --text--

SCSS는 무엇의 약자인가요?

#### --distractors--

슈퍼 캐스케이딩 스타일 시트.

---

구조화된 CSS.

---

간단한 CSS.

#### --answer--

Sassy CSS.

### --question--

#### --text--

다음 중 Sass의 기능은 무엇인가요?

#### --distractors--

주석

---

CSS 린팅.

---

인라인 CSS.

#### --answer--

믹스인

### --question--

#### --text--

Tailwind CSS에서 유틸리티 클래스를 사용하는 올바른 방법은 무엇인가요?

#### --distractors--

```html
<button class="color-blue text-color font-size allow-hover round-btn">
  Button
</button>
```

---

```html
<button class="blue text font-size hover round-btn margin-full">
  Button
</button>
```

---

```html
<button class="set-blue set-text set-font set-hover round-btn padding-full">
  Button
</button>
```

#### --answer--

```html
<button class="bg-blue-500 text-white font-bold py-2 px-4 rounded-full hover:bg-blue-700">
  Button
</button>
```

### --question--

#### --text--

CSS 프레임워크의 두 가지 유형은 무엇인가요?

#### --distractors--

태블릿 우선 CSS 프레임워크와 컴포넌트 기반 CSS 프레임워크.

---

유틸리티 우선 CSS 프레임워크와 지연 로딩 CSS 프레임워크.

---

미니멀 CSS 프레임워크와 유틸리티 우선 CSS 프레임워크.

#### --answer--

유틸리티 우선 CSS 프레임워크와 컴포넌트 기반 CSS 프레임워크.

### --question--

#### --text--

SCSS의 파일 확장자는 무엇인가요?

#### --distractors--

`.sass`

---

`.scsss`

---

`.css`

#### --answer--

`.scss`

### --question--

#### --text--

SCSS에서 변수를 정의하는 올바른 방법은 무엇인가요?

#### --distractors--

```css
#primary-color: #3498eb;

header {
  background-color: #primary-color;
}
```

---

```css
>primary-color: #3498eb;

header {
  background-color: >primary-color;
}
```

---

```css
?primary-color: #3498eb;

header {
  background-color: ?primary-color;
}
```

#### --answer--

```css
$primary-color: #3498eb;

header {
  background-color: $primary-color;
}
```

### --question--

#### --text--

믹스인을 정의하는 올바른 방법은 무엇인가요?

#### --distractors--

```css
--mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

---

```css
>mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

---

```css
mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

#### --answer--

```css
@mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```
