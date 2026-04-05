---
id: 5a24bbe0dba28a8d3cbd4c5d
title: 복잡한 JSX 요소 만들기
challengeType: 6
forumTopicId: 301382
dashedName: create-a-complex-jsx-element
---

# --description--

지난 도전 과제는 간단한 JSX 예제였지만, JSX는 더 복잡한 HTML도 나타낼 수 있습니다.

중첩된 JSX에 대해 알아야 할 중요한 점은 반드시 하나의 요소만 반환해야 한다는 것입니다.

이 하나의 부모 요소가 다른 모든 중첩된 요소들을 감싸게 됩니다.

예를 들어, 부모 요소 없이 형제로만 작성된 여러 JSX 요소는 변환되지 않습니다.

예시는 다음과 같습니다:

**유효한 JSX:**

```jsx
<div>
  <p>Paragraph One</p>
  <p>Paragraph Two</p>
  <p>Paragraph Three</p>
</div>
```

**유효하지 않은 JSX:**

```jsx
<p>Paragraph One</p>
<p>Paragraph Two</p>
<p>Paragraph Three</p>
```

# --instructions--

다음 요소들을 순서대로 포함하는 `JSX`를 렌더링하는 새로운 상수 `div`를 정의하세요:

`h1`, `p`, 그리고 세 개의 `li` 항목을 포함하는 순서 없는 목록. 각 요소 안에는 원하는 텍스트를 포함할 수 있습니다.

**참고:** 이렇게 여러 요소를 렌더링할 때 모두 소괄호로 감쌀 수 있지만, 반드시 필요한 것은 아닙니다. 또한 이 도전 과제에서는 모든 자식 요소를 하나의 부모 요소로 감싸기 위해 `div` 태그를 사용한 점에 주목하세요. `div`를 제거하면 JSX가 더 이상 변환되지 않습니다. 이 점을 기억하세요. React 컴포넌트에서 JSX 요소를 반환할 때도 동일하게 적용됩니다.

# --hints--

상수 `JSX`는 `div` 요소를 반환해야 합니다.

```js
assert(JSX.type === 'div');
```

`div`는 첫 번째 요소로 `h1` 태그를 포함해야 합니다.

```js
assert(JSX.props.children[0].type === 'h1');
```

`div`는 두 번째 요소로 `p` 태그를 포함해야 합니다.

```js
assert(JSX.props.children[1].type === 'p');
```

`div`는 세 번째 요소로 `ul` 태그를 포함해야 합니다.

```js
assert(JSX.props.children[2].type === 'ul');
```

`ul`는 세 개의 `li` 요소를 포함해야 합니다.

```js
assert(
  JSX.props.children
    .filter((ele) => ele.type === 'ul')[0]
    .props.children.filter((ele) => ele.type === 'li').length === 3
);
```

# --seed--

## --seed-contents--

```jsx

```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>Hello JSX!</h1>
  <p>Some info</p>
  <ul>
    <li>An item</li>
    <li>Another item</li>
    <li>A third item</li>
  </ul>
</div>);
```
