---
id: 672bbec3b86dbdaa07a5a5be
title: 함수형 가상 클래스의 예시는 무엇인가요?
challengeType: 19
dashedName: what-are-examples-of-functional-pseudo-classes
---

# --interactive--

함수형 가상 클래스는 더 복잡한 조건이나 관계를 기반으로 요소를 선택할 수 있게 해줍니다. 상태를 기준으로 요소를 선택하는 일반 가상 클래스와 달리, 예를 들어 `:hover`, `:focus`, 함수형 가상 클래스는 소괄호 안에 인수를 받기 때문에 "함수형 가상 클래스"라는 이름이 붙었습니다.

함수형 가상 클래스의 예시는 다음과 같습니다:

- `:is()`
- `:where()`
- `:has()`
- `:not()`

각 함수형 가상 클래스를 예시와 함께 자세히 살펴보겠습니다.

`:is()` 가상 클래스는 일부 특성은 공유하지만 모두 같지는 않은 요소 그룹에 스타일을 적용할 때 유용합니다. 예를 들어, 웹사이트에서 `button` 요소, 버튼처럼 스타일이 적용된 링크, 그리고 `input` 요소 중 `submit`와 `reset` 타입을 포함한 다양한 버튼 유형에 스타일을 적용하고 싶을 수 있습니다. 이를 나타내는 예시는 다음과 같습니다. `:is()` 함수를 사용하지 않으면 다음과 같이 복잡한 선택자를 작성해야 합니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
<a href="#" class="button">Link styled like a button</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />
```

```css
button,
a.button,
input[type='submit'],
input[type='reset'] {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

button:hover,
a.button:hover,
input[type='submit']:hover,
input[type='reset']:hover {
  background-color: blue;
  border-color: blue;
}
```

:::

`:is()` 함수를 사용하면 다음과 같이 더 간결하고 이해하기 쉬운 선택자를 작성할 수 있습니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
<a href="#" class="button">Link styled like a button</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />
```

```css
:is(button, a.button, input[type='submit'], input[type='reset']) {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

:is(button, a.button, input[type='submit'], input[type='reset']):hover {
  background-color: blue;
  border-color: blue;
}
```

:::

`:where()` 가상 클래스는 `:is()`와 비슷하게 작동하지만 선택자의 특이성을 높이지 않습니다. 이로 인해 다른 규칙의 특이성에 영향을 주지 않고 스타일을 적용할 때 이상적입니다.

예를 들어, `:where()` 함수를 사용해 제목 요소에 대해 0 `margin`와 `padding`를 적용할 수 있습니다. 이렇게 하면 나중에 더 구체적인 스타일을 적용해도 초기화가 방해하지 않습니다. 예시는 다음과 같습니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Page Title</h1>
<h2>Subtitle</h2>
<h3>A point</h3>

<p>Example paragraph.</p>
<p>Example paragraph.</p>
<p>Example paragraph.</p>
```

```css
:where(h1, h2, h3) {
  margin: 0;
  padding: 0;
}
```

:::

자식 요소의 상태를 기반으로 부모 요소에 스타일을 적용하는 것은 `:has()` 가상 클래스가 도입되기 전까지 어려웠습니다. 이 가상 클래스는 자식 요소의 존재나 상태에 따라 부모 요소에 스타일을 적용할 수 있게 해줍니다.

예를 들어, 아래 CSS는 `article`가 포함된 모든 `h2` 요소에만 적용됩니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<article>
  <h2>Subheading</h2>
  <p>Lorem ipsum dolor sit amet.</p>
</article>

<article>
  <h3>A point</h3>
  <p>Lorem ipsum dolor sit amet.</p>
  <p>Lorem ipsum dolor sit amet.</p>
</article>
```

```css
article:has(h2) {
  border: 2px solid hotpink;
}
```

:::

`:not()` 가상 클래스는 특정 예외 하나 이상을 제외한 요소 그룹에 스타일을 적용할 때 이상적입니다. 아래 CSS에서는 기본 버튼이 아닌 모든 버튼에 회색 배경이 적용됩니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button class="primary">Primary Button</button>
<button class="secondary">Secondary Button</button>
<button class="danger">Another Secondary Button</button>
```

```css
button {
  padding: 10px 20px;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
  border: none;
  color: white;
}

button.primary {
  background-color: deepskyblue;
}

button:not(.primary) {
  background-color: grey;
}
```

:::

# --questions--

## --text--

어떤 가상 클래스가 `:is()`처럼 작동하지만 선택자의 특이성을 추가하지 않나요?

## --answers--

`:not()`

### --feedback--

이 가상 클래스는 광범위하지만 비침습적인 스타일을 적용할 때 좋습니다.

---

`:has()`

### --feedback--

이 가상 클래스는 광범위하지만 비침습적인 스타일을 적용할 때 좋습니다.

---

`:where()`

---

`:empty`

### --feedback--

이 가상 클래스는 광범위하지만 비침습적인 스타일을 적용할 때 좋습니다.

## --video-solution--

3

## --text--

다음 중 함수형 가상 클래스가 아닌 것은 무엇인가요?

## --answers--

`:is()`

### --feedback--

함수형 가상 클래스는 소괄호를 사용하며 그 안에 인수를 받습니다.

---

`:first-child`

---

`:has()`

### --feedback--

함수형 가상 클래스는 소괄호를 사용하며 그 안에 인수를 받습니다.

---

`:where()`

### --feedback--

함수형 가상 클래스는 소괄호를 사용하며 그 안에 인수를 받습니다.

## --video-solution--

2

## --text--

하나 또는 두 개의 예외를 제외한 요소 그룹에 스타일을 적용할 때 완벽한 가상 클래스는 무엇인가요?

## --answers--

`:has()`

### --feedback--

특정 요소를 스타일 적용에서 제외하는 방법을 생각해보세요.

---

`:is()`

### --feedback--

특정 요소를 스타일 적용에서 제외하는 방법을 생각해보세요.

---

`:not()`

---

`:where()`

### --feedback--

특정 요소를 스타일 적용에서 제외하는 방법을 생각해보세요.

## --video-solution--

3
