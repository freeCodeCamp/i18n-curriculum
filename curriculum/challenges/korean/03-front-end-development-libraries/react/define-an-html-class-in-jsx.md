---
id: 5a24c314108439a4d4036160
title: JSX에서 HTML 클래스 정의하기
challengeType: 6
forumTopicId: 301393
dashedName: define-an-html-class-in-jsx
---

# --description--

Now that you're getting comfortable writing JSX, you may be wondering how it differs from HTML.

지금까지는 HTML과 JSX가 완전히 똑같아 보였을 수도 있습니다.

한 가지 큰 차이점은 JSX에서는 클래스를 정의할 때 `class`를 사용할 수 없습니다. 왜냐하면 `class`는 자바스크립트에서 이미 예약된 단어이기 때문입니다. 대신에 JSX는 `className`을 사용합니다.

사실, JSX 내에서 모든 HTML 속성과 이벤트 참조는 낙타 표기법(camelCase)으로 이름을 짓는 관습이 있습니다. 예를 들면, JSX 내에서 클릭 이벤트는 `onclick` 대신 `onClick` 입니다. 이와 같이, `onchange`는 `onChange`가 됩니다. 미묘한 차이지만, 앞으로의 학습을 진행하기 전에 꼭 기억해 두어야 합니다.

# --instructions--

주어진 JSX 코드의 `div`에 클래스 `myDiv`를 적용해 보세요.

# --hints--

상수 변수 `JSX`는 한 개의 `div` 엘리먼트를 반환해야 합니다.

```js
assert.strictEqual(JSX.type, 'div');
```

`div`는 클래스 `myDiv`를 가지고 있어야 합니다.

```js
assert.strictEqual(JSX.props.className, 'myDiv');
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(JSX, document.getElementById('root'))
```

## --seed-contents--

```jsx
const JSX = (
  <div>
    <h1>Add a class to this div</h1>
  </div>
);
```

# --solutions--

```jsx
const JSX = (
<div className = 'myDiv'>
  <h1>Add a class to this div</h1>
</div>);
```
