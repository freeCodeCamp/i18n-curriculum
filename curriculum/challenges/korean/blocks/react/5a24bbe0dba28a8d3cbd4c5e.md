---
id: 5a24bbe0dba28a8d3cbd4c5e
title: JSX에 주석 추가하기
challengeType: 6
forumTopicId: 301376
dashedName: add-comments-in-jsx
---

# --description--

JSX는 유효한 JavaScript로 컴파일되는 구문입니다. 가독성을 위해 때때로 코드에 주석을 추가해야 할 때가 있습니다. 대부분의 프로그래밍 언어처럼 JSX도 주석을 다는 고유한 방법이 있습니다.

JSX 안에 주석을 넣으려면 `{/* */}` 구문을 사용해 주석 텍스트를 감싸면 됩니다.

# --instructions--

코드 편집기에는 이전 도전 과제에서 만든 것과 비슷한 JSX 요소가 있습니다. 기존 `div` 또는 `h1` 요소를 수정하지 말고, 제공된 `p` 요소 안 어딘가에 주석을 추가하세요.

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

기존 `h1`과 `p` 요소는 수정하지 않아야 합니다.

```js
assert(
  JSX.props.children[0].props.children === 'This is a block of JSX' &&
    JSX.props.children[1].props.children === "Here's a subtitle"
);
```

`JSX`는 유효한 주석 구문을 사용해야 합니다.

```js
assert(/<div>[\s\S]*{\s*\/\*[\s\S]*\*\/\s*}[\s\S]*<\/div>/.test(code));
```

# --seed--

## --seed-contents--

```jsx
const JSX = (
  <div>
    <h1>This is a block of JSX</h1>
    <p>Here's a subtitle</p>
  </div>
);
```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>This is a block of JSX</h1>
  { /* this is a JSX comment */ }
  <p>Here's a subtitle</p>
</div>);
```
