---
id: 5a24bbe0dba28a8d3cbd4c5e
title: JSX에 주석 달기
challengeType: 6
forumTopicId: 301376
dashedName: add-comments-in-jsx
---

# --description--

JSX는 자바스크립트로 컴파일되는 언어입니다. 때때로 가독성을 위해 코드에 주석을 달아주는 것이 필요할 수도 있습니다. 다른 프로그래밍 언어들처럼, JSX도 JSX만의 방법이 있습니다.

JSX에 주석을 다는 방법으로는, `{/* */}`으로 주석 내용을 감싸는 문법을 사용하면 됩니다.

# --instructions--

코드 에디터에는 지난 도전에서 만든 것과 비슷한 JSX 엘리먼트가 있습니다. 현재 있는 `h1` 혹은 `p` 엘리먼트를 수정하지 말고, 주어진 `div` 엘리먼트 아무데나 주석을 달아 보세요.

# --hints--

상수 변수 `JSX`는 하나의 `div` 엘리먼트를 반환해야 합니다.

```js
assert(JSX.type === 'div');
```

`div`는 하나의 `h1` 태그를 첫 번째 엘리먼트로 가지고 있어야 합니다.

```js
assert(JSX.props.children[0].type === 'h1');
```

`div`는 `p` 태그를 두 번째 엘리먼트로 가지고 있어야 합니다.

```js
assert(JSX.props.children[1].type === 'p');
```

기존의 `h1`과 `p`는 수정되면 안됩니다.

```js
assert(
  JSX.props.children[0].props.children === 'This is a block of JSX' &&
    JSX.props.children[1].props.children === "Here's a subtitle"
);
```

`JSX`는 올바른 문법으로 주석을 작성해야 합니다.

```js
assert(/<div>[\s\S]*{\s*\/\*[\s\S]*\*\/\s*}[\s\S]*<\/div>/.test(code));
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
