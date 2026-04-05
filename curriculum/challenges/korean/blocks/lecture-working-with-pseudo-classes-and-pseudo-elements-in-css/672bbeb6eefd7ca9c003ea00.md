---
id: 672bbeb6eefd7ca9c003ea00
title: 트리 구조 가상 클래스의 예시는 무엇인가요?
challengeType: 19
dashedName: what-are-examples-of-tree-structural-pseudo-classes
---

# --interactive--

트리 구조 가상 클래스는 문서 트리 내에서 요소의 위치를 기준으로 요소를 선택하고 스타일을 적용할 수 있게 해줍니다. 문서 트리는 HTML 문서 내 요소들의 계층 구조를 의미합니다.

다음은 트리 구조 가상 클래스 목록입니다:

- `:root`
- `:empty`
- `:nth-child(n)`
- `:nth-last-child(n)`
- `:first-child`
- `:last-child`
- `:only-child`
- `:nth-of-type`
- `:first-of-type`
- `:last-of-type`
- `:only-of-type`

각 트리 구조 가상 클래스를 예제와 함께 자세히 살펴보겠습니다.

​​`:root` 가상 클래스는 보통 루트 `html` 요소입니다. 문서에서 가장 상위 레벨을 선택할 수 있어 문서 전체에 공통 스타일을 적용할 때 유용합니다.     

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Welcome to My Website</h1>
<p>This is a sample paragraph to demonstrate the :root pseudo-class.</p>
```

```css
:root {
  background: black;
  color: aliceblue;
}
```

:::

`:root` 가상 클래스는 CSS 변수 설정에도 자주 사용됩니다:

```css
:root {
  --main-font: 'Arial, sans-serif';
  --primary-color: blue; 
  --secondary-color: green; 
}
```

CSS 변수를 사용하면 값을 저장하고 스타일시트에서 재사용할 수 있습니다. 이에 대해서는 나중에 더 배우게 됩니다.

빈 요소, 즉 공백 외에 자식이 없는 요소도 문서 트리에 포함됩니다. 그래서 빈 요소를 선택할 수 있는 `:empty` 가상 클래스가 있습니다. 예를 들어, 이 HTML 코드에는 두 개의 빈 목록 항목이 있습니다. `:empty` 가상 클래스를 사용하면 빈 목록 항목에 다르게 스타일을 적용할 수 있습니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  background: black;
}
```

:::

빈 목록 항목에 가장 실용적인 처리는 아마도 아예 표시하지 않는 것입니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  display: none;
}
```

:::

`:nth-child(n)` 는 부모 내에서 위치를 기준으로 요소를 선택할 수 있게 해주고, `:nth-last-child(n)` 는 끝에서부터 요소를 셉니다. `n` 은 특정 숫자이거나 `odd` 또는 `even` 같은 키워드일 수 있습니다. 이는 위치에 따라 표 셀을 스타일링할 때 매우 유용합니다: 짝수와 홀수.

다음은 과일 가격 목록 표의 HTML 예제입니다. CSS는 `:nth-child` 가상 클래스를 사용해 홀수와 짝수 위치에 있는 표 셀을 선택합니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<table>
  <tr>
    <th>Item</th>
    <th>Price</th>
  </tr>
  <tr>
    <td>Apple</td>
    <td>$1.00</td>
  </tr>
  <tr>
    <td>Banana</td>
    <td>$0.50</td>
  </tr>
  <tr>
    <td>Orange</td>
    <td>$0.80</td>
  </tr>
</table>
```

```css
th,
td {
  border: 1px solid lightgray;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: orangered;
}

tr:nth-child(odd) {
  background-color: lightgreen;
}
```

:::

`:first-child`, `:last-child`, `:only-child` 가상 클래스는 모두 부모 컨테이너 내 또는 문서 전체에서 항목을 선택합니다.

- `:first-child` 는 부모 요소나 문서 내 첫 번째 요소를 선택합니다.
- `:last-child` 는 부모 요소나 문서 내 마지막 요소를 선택합니다.
- `:only-child` 는 부모 요소나 문서 내 유일한 요소를 선택합니다.

이 예제에서 `:first-child` 와 `:last-child` 가상 클래스를 사용하면 `Item 1` 과 `Item 3` 둘 다 선택됩니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```

```css
li:first-child {
  background-color: orangered;
}

li:last-child {
  background-color: lightgreen;
}
```

:::

페이지에 순서 없는 목록이 더 있다면 선택을 더 구체적으로 해야 합니다: 

`:only-child` 가상 클래스가 어떻게 작동하는지 보여주기 위해, 두 개의 별도 `div` 요소가 있는 HTML 예제를 준비했습니다. `:only-child` 가상 클래스를 사용하면 자식이 하나인 `div` 요소만 선택됩니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<div class="container">
  <div>This is the only item in this container.</div>
</div>

<div class="container">
  <div>This is one of two items in this container.</div>
  <div>Here is the second item.</div>
</div>
```

```css
.container div:only-child {
  border: 2px solid crimson;
  padding: 10px;
  background-color: lightblue;
}
```

:::

`:first-of-type` 와 `:last-of-type` 가상 클래스는 부모 내에서 특정 요소 유형의 첫 번째와 마지막 발생을 선택합니다. 이는 형제 요소 중 첫 번째 또는 마지막 인스턴스에 고유한 스타일을 적용할 때 유용합니다.

아래 예제에서 `:first-of-type` 와 `:last-of-type` 는 `section` 요소 내 첫 번째 요소와 마지막 요소에 적용됩니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<section>
  <h2>Introduction</h2>
  <p>This is the first paragraph in the first section</p>
  <p>This is the second paragraph in the first section</p>
</section>
<section>
  <h2>Details</h2>
  <p>This is the first paragraph in the second section.</p>
  <p>This is the second paragraph in the second section.</p>
</section>
```

```css
section p:first-of-type {
  background-color: lightgreen;
}

section p:last-of-type {
  background-color:lightblue;
}
```

:::

`:nth-of-type(n)` 는 부모 내에서 같은 유형의 형제 중 위치를 기준으로 특정 요소를 선택할 수 있게 해줍니다. 예를 들어, 아래 HTML에서 `:nth-of-type(2)` 는 컨테이너 내 두 번째 요소를 선택합니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>First paragraph</p>
  <p>Second paragraph</p>
  <p>Third paragraph</p>
</div>
```

```css
p:nth-of-type(2) {
  color: red;
  font-weight: bold;
}
```

:::

`:only-of-type` 는 부모 내에서 해당 유형의 유일한 요소인 경우 선택합니다. 이는 단일 항목을 강조하거나 그룹에 속하지 않은 경우 다르게 스타일을 적용할 때 유용합니다.

아래 예제에는 두 개의 `div` 요소가 있는데, 그중 하나는 단일 요소를 포함합니다. CSS는 첫 번째 컨테이너에만 적용됩니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>The only paragraph</p>
</div>

<div class="container">
  <p>The first paragraph</p>
  <p>The second paragraph</p>
</div>
```

```css
p:only-of-type {
  border: 4px solid green;
}
```

:::

# --questions--

## --text--

`:first-of-type` 와 `:last-of-type` 가상 클래스의 차이는 무엇인가요?

## --answers--

`:first-of-type` 는 부모 내 특정 유형의 첫 번째 요소를 선택하고, `:last-of-type` 는 다른 유형의 마지막 요소를 선택합니다.

### --feedback--

이 가상 클래스들이 `p` 또는 `h1` 같은 특정 태그의 첫 번째와 마지막 인스턴스를 스타일링하는 데 어떻게 도움이 되는지 생각해보세요.

---

`:first-of-type` 와 `:last-of-type` 는 모두 요소의 첫 번째 발생을 선택하지만 문서 내 서로 다른 섹션에서 선택합니다.

### --feedback--

이 가상 클래스들이 `p` 또는 `h1` 같은 특정 태그의 첫 번째와 마지막 인스턴스를 스타일링하는 데 어떻게 도움이 되는지 생각해보세요.

---

`:first-of-type` 는 부모 내 특정 요소 유형의 첫 번째 발생을 선택하고, `:last-of-type` 는 같은 부모 내 해당 요소 유형의 마지막 발생을 선택합니다.

---

`:last-of-type` 는 문서 내 첫 번째와 마지막 요소에 스타일을 적용하고, `:last-of-type` 는 특정 유형의 모든 요소에 스타일을 적용합니다.

### --feedback--

이 가상 클래스들이 `p` 또는 `h1` 같은 특정 태그의 첫 번째와 마지막 인스턴스를 스타일링하는 데 어떻게 도움이 되는지 생각해보세요.

## --video-solution--

3

## --text--

`:first-child` 와 `:last-child` 가상 클래스의 차이는 무엇인가요?

## --answers--

`:first-child` 는 부모 내 첫 번째 요소를 선택하고, `:last-child` 는 다른 부모 내 마지막 요소를 선택합니다.

### --feedback--

두 가상 클래스가 같은 부모 컨테이너 내 첫 번째와 마지막 요소를 스타일링하는 데 어떻게 도움이 되는지 생각해보세요.

---

`:first-child` 는 부모 내 첫 번째 요소를 선택하고, `:last-child` 는 같은 부모 내 마지막 요소를 선택합니다.

---

`:first-child` 는 부모 내 특정 유형의 첫 번째 요소를 선택하고, `:last-child` 는 같은 부모 내 다른 유형의 마지막 요소를 선택합니다.

### --feedback--

두 가상 클래스가 같은 부모 컨테이너 내 첫 번째와 마지막 요소를 스타일링하는 데 어떻게 도움이 되는지 생각해보세요.

---

`:first-child` 는 부모 내 첫 번째와 마지막 요소를 선택하고, `:last-child` 는 나머지 모든 요소를 선택합니다.

### --feedback--

두 가상 클래스가 같은 부모 컨테이너 내 첫 번째와 마지막 요소를 스타일링하는 데 어떻게 도움이 되는지 생각해보세요.

## --video-solution--

2

## --text--

자식이 없고 공백만 포함하는 요소도 선택할 수 있는 가상 클래스는 무엇인가요?

## --answers--

`:empty`

---

`:first-child`

### --feedback--

내용이 없는 요소를 어떻게 스타일링할 수 있을지 생각해보세요.

---

`:last-child`

### --feedback--

내용이 없는 요소를 어떻게 스타일링할 수 있을지 생각해보세요.

---

`:only-of-type`

### --feedback--

내용이 없는 요소를 어떻게 스타일링할 수 있을지 생각해보세요.

## --video-solution--

1
