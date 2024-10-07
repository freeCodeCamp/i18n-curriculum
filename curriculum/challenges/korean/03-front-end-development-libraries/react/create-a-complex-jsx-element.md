---
id: 5a24bbe0dba28a8d3cbd4c5d
title: 복잡한 JSX 요소 생성하기
challengeType: 6
forumTopicId: 301382
dashedName: create-a-complex-jsx-element
---

# --description--

The last challenge was a simple example of JSX, but JSX can represent more complex HTML as well.

여기서 알고가야 할 중요한 포인트는 중첩된 JSX는 반드시 한 개의 엘리먼트를 반환해야 한다는 점입니다.

이 한 개의 부모 엘리먼트는 자식 레벨의 중첩된 모든 엘리먼트를 감쌉니다.

만약 여러 형제 JSX 엘리먼트들을 감싸는 부모 엘리먼트가 작성되지 않으면 제대로 트랜스파일 되지 않습니다.

여기 예시가 있습니다.

**올바른 JSX:**

```jsx
<div>
  <p>Paragraph One</p>
  <p>Paragraph Two</p>
  <p>Paragraph Three</p>
</div>
```

**올바르지 않은 JSX:**

```jsx
<p>Paragraph One</p>
<p>Paragraph Two</p>
<p>Paragraph Three</p>
```

# --instructions--

아래의 엘리먼트들을 순서대로 포함하는 `div`를 렌더링하는, 새로운 상수 변수 `JSX`를 정의해보세요.

`h1` 한 개, `p` 한 개 그리고 `li` 아이템 세 개를 포함하는 순서없는 리스트(ul) 한 개. 각 엘리먼트의 내용은 자유롭게 작성해보세요.

**참고:** 여러 엘리먼트를 렌더링할 때 괄호로 전체를 묶어줄 수 있는데, 반드시 해야하는 것은 아닙니다. 이번 도전에서는 `div` 부모 태그 하나로 모든 자식 엘리먼트를 감쌌습니다. `div`를 제거하면, 변수 JSX가 트랜스파일되지 않습니다. 이렇게 감싸는 것은 리액트 컴포넌트에서 적용되니, 기억해두세요.

# --hints--

상수 변수 `JSX`는 한 개의 `div` 엘리먼트를 반환해야 합니다.

```js
assert(JSX.type === 'div');
```

`div`는 `h1` 태그를 첫 번째 엘리먼트로 가지고 있어야 합니다.

```js
assert(JSX.props.children[0].type === 'h1');
```

`div`는 `p` 태그를 두 번째 엘리먼트로 가지고 있어야 합니다.

```js
assert(JSX.props.children[1].type === 'p');
```

`div`는 `ul` 태그를 세 번째 엘리먼트로 가지고 있어야 합니다.

```js
assert(JSX.props.children[2].type === 'ul');
```

`ul`는 세 개의 `li` 엘리먼트를 가지고 있어야 합니다.

```js
assert(
  JSX.props.children
    .filter((ele) => ele.type === 'ul')[0]
    .props.children.filter((ele) => ele.type === 'li').length === 3
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(JSX, document.getElementById('root'))
```

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
