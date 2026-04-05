---
id: 66ed8fd0f45ce3ece4053eaf
title: CSS 속성 선택자 퀴즈
challengeType: 8
dashedName: quiz-css-attribute-selectors
---

# --description--

퀴즈를 통과하려면 아래 10문제 중 최소 9문제를 올바르게 답해야 합니다.

# --quizzes--

## --quiz--

### --question--

#### --text--

CSS 속성 선택자는 무엇에 사용되나요?

#### --distractors--

태그 이름을 기준으로 요소에 스타일을 적용할 때 사용합니다.

---

클래스 이름을 기준으로 요소에 스타일을 적용할 때 사용합니다.

---

부모 요소를 기준으로 스타일을 적용할 때 사용합니다.

#### --answer--

속성을 기준으로 요소에 스타일을 적용할 때 사용합니다.

### --question--

#### --text--

다음 중 이 CSS 선택자로 선택되지 않는 것은 무엇인가요?

```css
[title~="flower"] {
  border: 5px solid yellow;
}
```

#### --distractors--

```html
<img src="img1.jpg" title="clematis flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="FLOWERS of flower" width="150" height="113">
```

#### --answer--

```html
<img src="img2.jpg" title="flowers" width="150" height="113">
```

### --question--

#### --text--

어떤 CSS 선택자가 `p` 속성이 `lang`로 설정된 모든 `"fr"` 요소와 일치하나요?

#### --distractors--

```css
p[lang-="fr"] { color: blue; }
```

---

```css
p[lang~="fr"] { color: blue; }
```

---

```css
p[lang=="fr"] { color: blue; }
```

#### --answer--

```css
p[lang="fr"] { color: blue; }
```

### --question--

#### --text--

어떤 CSS 선택자가 `a` 속성이 있는 모든 `href` 요소와 일치하나요?

#### --distractors--

```css
a(href) { color: green; }
```

---

```css
a { color: green; }
```

---

```css
a[href~=""] { color: green; }
```

#### --answer--

```css
a[href] { color: blue; }
```

### --question--

#### --text--

대문자 로마 숫자가 있는 모든 순서 있는 목록과 일치하는 CSS 선택자는 무엇인가요?

#### --distractors--

```css
ol[type="a"] { border-color: black; }
```

---

```css
ol[type="A"] { border-color: black; }
```

---

```css
ol[type="i"] { border-color: black; }
```

#### --answer--

```css
ol[type="I"] { border-color: black; }
```

### --question--

#### --text--

`data-lang` 속성은 일반적으로 무엇에 사용되나요?

#### --distractors--

문서의 언어를 지정하는 데 사용합니다.

---

문서의 문자 인코딩을 정의하는 데 사용합니다.

---

부모 요소를 기준으로 요소의 언어를 설정하는 데 사용합니다.

#### --answer--

이 사용자 정의 데이터 속성을 기준으로 요소에 스타일을 적용하는 데 사용합니다.

### --question--

#### --text--

`img` 속성이 `alt`과 같을 때만 `"code"` 요소에 스타일을 적용하려면 어떤 CSS 선택자를 사용해야 하나요?

#### --distractors--

```css
img[alt~="code"] { border: 1px solid red; }
```

---

```css
img[alt=="code"] { border: 1px solid red; }
```

---

```css
img[alt*="code"] { border: 1px solid red; }
```

#### --answer--

```css
img[alt="code"] { border: 1px solid red; }
```

### --question--

#### --text--

숫자 번호 매기기 유형을 가진 순서 있는 목록과 일치하는 CSS 선택자는 무엇인가요?

#### --distractors--

```css
ol[type="i"] { color: purple; }
```

---

```css
ol[type="I"] { color: purple; }
```

---

```css
ol[type="a"] { color: purple; }
```

#### --answer--

```css
ol[type="1"] { color: purple; }
```

### --question--

#### --text--

`a`과 `href` 속성을 모두 가진 `title` 요소에 스타일을 적용하려면 어떤 CSS 선택자를 사용해야 하나요?

#### --distractors--

```css
a[href] a[title] { text-decoration: underline dotted; }
```

---

```css
a[href]a[title] { text-decoration: underline dotted; }
```

---

```css
a[href].[title] { text-decoration: underline dotted; }
```

#### --answer--

```css
a[href][title] { text-decoration: underline dotted; }
```

### --question--

#### --text--

레스토랑 웹사이트를 개발 중이며 `menu-item` 속성이 있는 `data-special` 클래스를 가진 모든 요소에 스타일을 적용하려면 어떤 CSS 선택자를 사용해야 하나요?

#### --distractors--

```css
menu-item[data-special] { background-color: blue; }
```

---

```css
#menu-item[data-special] { background-color: blue; }
```

---

```css
[data-special="menu-item"] { background-color: blue; }
```

#### --answer--

```css
.menu-item[data-special] { background-color: blue; }
```
