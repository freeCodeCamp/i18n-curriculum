---
id: 5a24c314108439a4d4036161
title: 자체 닫기(Self-Closing) JSX 태그 알아보기
challengeType: 6
forumTopicId: 301396
dashedName: learn-about-self-closing-jsx-tags
---

# --description--

So far, you’ve seen how JSX differs from HTML in a key way with the use of `className` vs. `class` for defining HTML classes.

JSX를 HTML과 구별하는 또 다른 중요한 점은 자체닫기(self-closing) 태그입니다.

HTML에서는 `<div></div>`처럼 거의 모든 태그가 시작(opening)과 끝(closing) 두 태그를 가지고 있습니다. 끝 태그는 항상 태그 이름 앞에 빗금 부호를 가지고 있습니다. However, there are special instances in HTML called <dfn>void elements</dfn>, or elements that don’t require both an opening and closing tag before another element can start.

예를 들면 줄 바꿈(line-break) 태그는 `<br>` 혹은 `<br />`으로 작성될 수 있으나, 태그 사이에 어떤 내용도 없는 `<br></br>`로는 작성되면 안됩니다.

JSX에서는 규칙이 조금 다릅니다. 모든 JSX 엘리먼트는 자체닫기 태그로 작성될 수 있으며, 모든 엘리먼트들은 반드시 닫혀야 됩니다. 줄 바꿈 태그로 예를 들어 보자면, 항상 `<br />`로 올바르게 JSX를 작성되어야하고 변환될 수 있습니다. 반면에 `<div>` 같은 경우에는 `<div />` 혹은 `<div></div>`로 쓰일 수 있습니다. 차이점으로는, 첫 번째 문법은 `<div />`에 어떠한 내용도 작성할 수 없습니다. 앞으로의 도전에서 이 문법이 리액트 컴포넌트를 렌더링할 때 유용하게 사용되는 것을 보게 될 것입니다.

# --instructions--

코드 편집기의 오류를 고쳐서 성공적으로 변환 되도록 올바른 JSX로 만들어 보세요. 닫는 태그(close tag)외에는 다른 내용은 바꾸지 않도록 주의하세요.

# --hints--

상수 변수 `JSX`는 하나의 `div` 엘리먼트를 반환해야 합니다.

```js
assert.strictEqual(JSX.type, 'div');
```

`div`는 하나의 `br` 태그를 가지고 있어야 합니다.

```js
assert(Enzyme.shallow(JSX).find('br').length === 1);
```

`div`는 하나의 `hr` 태그를 가지고 있어야 합니다.

```js
assert(Enzyme.shallow(JSX).find('hr').length === 1);
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
    <h2>Welcome to React!</h2> <br >
    <p>Be sure to close all tags!</p>
    <hr >
  </div>
);
```

# --solutions--

```jsx
const JSX = (
<div>
  <h2>Welcome to React!</h2> <br />
  <p>Be sure to close all tags!</p>
  <hr />
</div>
);
```
