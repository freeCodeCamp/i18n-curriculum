---
id: 672bbe9171a5cca90f2edeea
title: 요소 사용자 동작 가상 클래스의 예시는 무엇인가요?
challengeType: 19
dashedName: what-are-examples-of-element-user-action-pseudo-classes
---

# --interactive--

사용자 피드백은 웹 디자인에서 매우 중요한 요소입니다. 예를 들어, 사용자가 버튼 위에 마우스를 올리거나 링크를 클릭할 때 시각적 신호를 받는 것이 중요합니다. 이러한 피드백은 사용자가 상호작용하는 요소의 상태를 이해하는 데 도움을 줍니다. 예를 들어, 링크가 방문되었는지 여부를 나타내는 것처럼요.

CSS의 사용자 동작 가상 클래스는 JavaScript나 다른 프로그래밍 언어 없이도 이런 종류의 피드백을 제공할 수 있게 해주는 특별한 키워드입니다.

이 가상 클래스에는 `:hover`, `:active`, `:focus`, `:visited` 등이 포함됩니다. 이들은 사용자 상호작용에 따라 요소의 모양을 변경할 수 있게 하여 전체적인 사용자 경험을 향상시킵니다.

이제 우리가 가진 사용자 동작 가상 클래스 몇 가지를 살펴보고 어떻게 작동하는지 알아봅시다.

`:active` 가상 클래스는 사용자가 요소를 활성화할 때 스타일을 적용합니다. 예를 들어, 사용자가 버튼이나 링크를 클릭할 때 즉각적인 시각적 피드백을 제공하여 사용자의 동작이 인식되고 있음을 보여줍니다.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a href="#">Example link</a>
```

```css
a:active {
  color: crimson;
}
```

:::

`:hover` 가상 클래스는 사용자가 마우스나 다른 포인팅 장치로 요소 위에 마우스를 올릴 때 작동합니다. 개발자들은 버튼, 링크 또는 사용자 주의를 끌어야 하는 모든 요소에 시각적 피드백을 만들기 위해 자주 사용합니다. 다음은 사용자가 클릭하기 전에 마우스를 올리는 버튼 예시입니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button class="btn">Hover Over Me</button>
```

```css
.btn:hover {
  background-color: darkgreen;
  color: white;
  cursor: pointer;
}
```

:::

`:focus` 가상 클래스는 요소가 포커스를 얻을 때 스타일을 적용합니다. 보통 키보드 탐색을 통해서나 사용자가 폼 입력 필드를 클릭할 때 발생합니다. 이는 단순한 피드백뿐 아니라 접근성 측면에서도 매우 중요합니다. 키보드에 크게 의존하는 사용자가 상호작용 중인 요소를 쉽게 식별할 수 있도록 보장합니다.

다음은 클릭하거나 키보드로 탐색할 때 포커스를 얻는 입력 필드 예시입니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <input type="text" />
</form>
```

```css
input:focus {
  outline: 2px solid darkgreen;
  border-radius: 4px;
}
```

:::

`:visited` 가상 클래스는 사용자가 방문한 링크를 대상으로 합니다. 이는 사용자가 이미 방문한 페이지와 아직 방문하지 않은 페이지를 구분하는 데 유용합니다. 다음은 링크가 방문되었을 때 앵커 텍스트 색상을 청록색으로 변경하는 예시입니다:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a href="https://www.example.com" target="_blank">Visit Example.com</a>
```

```css
a:visited {
  color: cyan;
}
```

:::

CSS의 `:checked` 가상 클래스는 체크박스나 라디오 버튼 같은 폼 요소가 선택(체크)되었을 때 스타일을 적용할 수 있게 해줍니다. 이 가상 클래스는 브라우저가 기본 스타일을 제공하지만, 사용자 경험을 향상시키기 위해 이러한 요소의 모양을 커스터마이징할 때 유용합니다.

다음은 웹사이트에서 약관 동의를 위한 체크박스 예시입니다.

**참고**: 이 예시의 일부 CSS는 아직 배우지 않은 속성을 사용합니다. 이는 커스텀 체크박스를 만드는 방법을 보여주기 위한 것이며, 앞으로 수업과 워크숍에서 자세히 배우게 됩니다.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <label>
  Agree <input class="checkbox" type="checkbox" />
  </label>
</form>
```

```css
.checkbox {
  appearance: none;
  width: 18px;
  height: 18px;
  border: 2px solid #ccc;
  border-radius: 4px;
  display: inline-block;
  position: relative;
  cursor: pointer;
  transition: all 0.25s ease;
  vertical-align: middle; 
}

.checkbox:hover {
  border-color: #888;
}

.checkbox:checked {
  background-color: #4caf50;
  border-color: #4caf50;
}

.checkbox:checked::after {
  content: "";
  position: absolute;
  left: 4px;
  top: 0px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 2px 2px 0;
  transform: rotate(45deg);
}

.checkbox:focus {
  outline: 2px solid #90caf9;
  outline-offset: 2px;
}

```

:::

이 예시에서는 `appearance` 속성을 `none`으로 설정하여 브라우저가 체크박스 입력에 기본적으로 적용하는 스타일을 제거합니다. 사용자가 체크박스를 선택하면 배경색이 `green`으로 바뀝니다.

다른 동작 가상 클래스 예시는 다음과 같습니다:

- `:focus-within`: 요소나 그 자손 요소 중 하나가 포커스를 가질 때 스타일을 적용합니다.
- `:enabled`: 현재 활성화된 폼 버튼이나 다른 요소를 대상으로 합니다.
- `:disabled`: 비활성화된 폼 버튼이나 다른 요소를 대상으로 합니다.
- `:target`: URL 조각(주소에서 `#` 기호 뒤 부분)의 대상이 되는 요소에 스타일을 적용합니다.

# --questions--

## --text--

사용자 동작 가상 클래스를 사용하면 무엇을 할 수 있나요?

## --answers--

애니메이션과 전환 효과를 적용할 수 있습니다.

### --feedback--

CSS만으로 사용자와 상호작용할 수 있는 방법을 생각해보세요.

---

DOM 구조를 동적으로 수정할 수 있습니다.

### --feedback--

CSS만으로 사용자와 상호작용할 수 있는 방법을 생각해보세요.

---

JavaScript에 의존하지 않고 사용자에게 피드백을 제공할 수 있습니다.

---

목록에서 마지막 요소를 스타일링할 수 있습니다.

### --feedback--

CSS만으로 사용자와 상호작용할 수 있는 방법을 생각해보세요.

## --video-solution--

3

## --text--

CSS에서 `:checked` 가상 클래스는 무엇을 하나요?

## --answers--

비활성화된 요소를 선택합니다.

### --feedback--

폼이 사용자 선택을 처리하는 방식을 생각해보세요.

---

마우스를 올린 요소를 선택합니다.

### --feedback--

폼이 사용자 선택을 처리하는 방식을 생각해보세요.

---

체크된 체크박스나 라디오 버튼 같은 요소를 스타일링합니다.

---

포커스를 얻은 요소를 스타일링합니다.

### --feedback--

폼이 사용자 선택을 처리하는 방식을 생각해보세요.

## --video-solution--

3

## --text--

`:focus` 가상 클래스는 무엇을 하나요?

## --answers--

마우스로 요소 위에 올려졌을 때 선택합니다.

### --feedback--

사용자가 키보드로 폼을 탐색하는 방식을 생각해보세요.

---

보통 키보드 탐색이나 클릭을 통해 요소가 포커스를 얻을 때 스타일을 적용합니다.

---

폼이 제출된 후 요소를 선택합니다.

### --feedback--

사용자가 키보드로 폼을 탐색하는 방식을 생각해보세요.

---

비활성화된 요소에 스타일을 적용합니다.

### --feedback--

사용자가 키보드로 폼을 탐색하는 방식을 생각해보세요.

## --video-solution--

2
