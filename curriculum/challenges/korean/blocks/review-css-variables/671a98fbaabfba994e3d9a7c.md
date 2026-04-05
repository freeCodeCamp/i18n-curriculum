---
id: 671a98fbaabfba994e3d9a7c
title: CSS 변수 검토
challengeType: 31
dashedName: review-css-variables
---

# --interactive--

## CSS 사용자 정의 속성(CSS 변수)

- **정의**: CSS 사용자 정의 속성, 즉 CSS 변수는 CSS 작성자가 문서 전체에서 재사용할 특정 값을 담기 위해 정의하는 항목입니다. 이는 더 효율적이고 유지 관리가 쉽고 유연한 스타일시트를 만들 수 있게 하는 강력한 기능입니다. 사용자 정의 속성은 특히 테마 디자인을 만들 때 유용합니다. 서로 다른 테마에 대해 속성 집합을 정의할 수 있습니다:

```css
:root {
  --bg-color: white;
  --text-color: black;
}

.dark-theme {
  --bg-color: #333;
  --text-color: white;
}

body {
  background-color: var(--bg-color);
  color: var(--text-color);
}
```

## `@property` 규칙

- **정의**: `@property` 규칙은 개발자가 사용자 정의 속성을 더 세밀하게 제어할 수 있게 하는 강력한 CSS 기능으로, 애니메이션 방식과 초기 값 설정 등을 포함합니다.

```css
@property --property-name {
  syntax: '<type>';
  inherits: true | false;
  initial-value: <value>;
}
```

- **`--property-name`**: 정의하는 사용자 정의 속성의 이름입니다. 모든 사용자 정의 속성처럼 두 개의 대시로 시작해야 합니다.
**`syntax`**: 속성의 유형을 정의하며, `<color>`, `<length>`, `<number>`, `<percentage>` 또는 더 복잡한 유형일 수 있습니다.
- **`inherits`**: 이 속성이 부모 요소로부터 값을 상속받을지 여부를 지정합니다.
- **`initial-value`**: 속성의 기본값을 설정합니다.
- **`@property` 규칙을 사용한 그라디언트 예시**: 이 예시는 요소에 마우스를 올렸을 때 부드럽게 애니메이션되는 그라디언트를 만듭니다.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">

<div class="gradient-box"></div>
```

```css
@property --gradient-angle {
  syntax: "<angle>";
  inherits: false;
  initial-value: 0deg;
}

.gradient-box {
  width: 100px;
  height: 100px;
  background: linear-gradient(var(--gradient-angle), red, blue);
  transition: --gradient-angle 0.5s;
}

.gradient-box:hover {
  --gradient-angle: 90deg;
}
```

:::

- **대체 수단**: 사용자 정의 속성을 사용할 때, 표준 사용자 정의 속성과 마찬가지로 `var()` 함수를 사용해 대체 수단 값을 제공할 수 있습니다:

```css
.button {
  background-color: var(--main-color, #3498db);
}
```

# --assignment--

CSS 변수 주제와 개념을 검토하세요.
