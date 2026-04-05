---
id: 672bbeaa5afdc5a98d5ab8ff
title: 위치 가상 클래스의 예시는 무엇인가요?
challengeType: 19
dashedName: what-are-examples-of-location-pseudo-classes
---

# --interactive--

위치 가상 클래스는 현재 문서 내에서 대상이 되는 링크와 요소를 스타일링하는 데 사용됩니다. 방문한 링크인지, 요소가 현재 포커스 상태인지에 따라 스타일을 적용하는 방법을 제공합니다.

위치 가상 클래스의 예시는 다음과 같습니다:

- `:link`
- `:visited`
- `:any-link`
- `:local-link`
- `:target`

각 가상 클래스를 좀 더 자세히 살펴보겠습니다.

`:link` 가상 클래스는 웹페이지에서 방문하지 않은 모든 링크를 대상으로 지정할 수 있게 해줍니다. 사용자가 클릭하기 전 링크를 다르게 스타일링할 때 사용할 수 있습니다. 예를 들어, 방문하지 않은 모든 링크를 파란색이나 웹사이트의 기본 색상으로 만들고 싶을 수 있습니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:link {
  color: magenta;
}
```

:::

이 경우, 사용자가 아직 클릭하지 않은 모든 링크는 마젠타색으로 표시됩니다. 사용자가 링크를 클릭하면 `:link` 스타일은 더 이상 적용되지 않고 `:visited` 가상 클래스가 적용됩니다. `:visited` 가상 클래스는 사용자가 링크를 클릭한 후에 작동하므로, 이미 클릭한 링크를 대상으로 지정할 때 사용할 수 있습니다.

다음은 방문한 링크 상태를 `purple` 색상으로 변경하는 예시입니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:visited {
  color: purple;
}
```

:::

`:visited` 가상 클래스는 사용자가 방문한 링크와 방문하지 않은 링크를 구분하는 데 도움을 줍니다.

`:any-link` 가상 클래스는 `:link`와 `:visited` 가상 클래스의 조합입니다. 따라서 방문 여부와 상관없이 `href` 속성이 있는 모든 앵커 요소와 일치합니다.

다음은 `:any-link` 가상 클래스의 링크 색상을 `crimson`으로 변경하는 예시입니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:any-link {
  color: crimson;
}
```

:::

`:local-link` 가상 클래스는 같은 문서를 가리키는 링크를 대상으로 지정합니다. 내부 링크와 외부 링크를 구분할 때 유용합니다. 현재 어떤 브라우저도 `:local-link` 가상 클래스를 지원하지 않습니다.

`:target` 가상 클래스는 현재 URL 조각 식별자와 일치하는 요소를 선택합니다. 예를 들어 `#section1`입니다. 페이지 내 내비게이션이 있는 경우 매우 유용합니다.

다음은 페이지 내 내비게이션을 나타내는 HTML 예시입니다. CSS는 `:target` 가상 클래스를 사용해 사용자가 이동한 섹션을 스타일링합니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<nav id="table-of-contents">
  <ul>
    <li><a href="#section1">Introduction</a></li>
    <li><a href="#section2">Features</a></li>
  </ul>
</nav>

<section id="section1">
  <h2>Introduction</h2>
  <p>This is the introduction section.</p>
</section>

<section id="section2">
  <h2>Features</h2>
  <p>This section describes the features.</p>
</section>
```

```css
section:target {
  background-color: green;
  border: 2px solid green;
  padding: 10px;
}
```

:::

사용자가 내비게이션 링크 중 하나를 클릭하면 해당 섹션의 배경색이 초록색으로 변경됩니다.

# --questions--

## --text--

현재 URL 조각 식별자와 일치하는 요소를 스타일링할 수 있게 하는 가상 클래스는 무엇인가요? 예를 들어 `#section1` 같은 경우입니다.

## --answers--

`:hover`

### --feedback--

페이지 내 링크를 통해 특정 섹션을 강조하는 방법을 생각해 보세요.

---

`:focus`

### --feedback--

페이지 내 링크를 통해 특정 섹션을 강조하는 방법을 생각해 보세요.

---

`:target`

---

`:checked`

### --feedback--

페이지 내 링크를 통해 특정 섹션을 강조하는 방법을 생각해 보세요.

## --video-solution--

3

## --text--

위치 가상 클래스가 특히 유용한 경우는 언제인가요?

## --answers--

형제 관계에 따라 요소를 스타일링할 때입니다.

### --feedback--

사용자 상호작용에 따라 링크와 대상 요소를 어떻게 스타일링할 수 있을지 생각해 보세요.

---

링크가 방문되었는지, 요소가 현재 포커스 상태인지에 따라 스타일을 적용할 때입니다.

---

부모 요소의 속성에 따라 요소를 스타일링할 때입니다.

### --feedback--

사용자 상호작용에 따라 링크와 대상 요소를 어떻게 스타일링할 수 있을지 생각해 보세요.

---

웹페이지 레이아웃을 동적으로 조정할 때입니다.

### --feedback--

사용자 상호작용에 따라 링크와 대상 요소를 어떻게 스타일링할 수 있을지 생각해 보세요.

## --video-solution--

2

## --text--

같은 문서를 가리키는 링크를 대상으로 하지만 현재 어떤 브라우저도 지원하지 않는 가상 클래스는 무엇인가요?

## --answers--

`:any-link`

### --feedback--

내부 링크와 외부 링크를 구분하기 위해 설계되었지만 아직 지원되지 않는 가상 클래스를 생각해 보세요.

---

`:local-link`

---

`:visited`

### --feedback--

내부 링크와 외부 링크를 구분하기 위해 설계되었지만 아직 지원되지 않는 가상 클래스를 생각해 보세요.

---

`:target`

### --feedback--

내부 링크와 외부 링크를 구분하기 위해 설계되었지만 아직 지원되지 않는 가상 클래스를 생각해 보세요.

## --video-solution--

2
