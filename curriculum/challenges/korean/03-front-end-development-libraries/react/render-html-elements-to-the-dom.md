---
id: 5a24bbe0dba28a8d3cbd4c5f
title: DOM에 HTML 엘리먼트 렌더링하기
challengeType: 6
forumTopicId: 301406
dashedName: render-html-elements-to-the-dom
---

# --description--

So far, you've learned that JSX is a convenient tool to write readable HTML within JavaScript. With React, we can render this JSX directly to the HTML DOM using React's rendering API known as ReactDOM.

ReactDOM은 다음의 간단한 방법으로 리액트 엘리먼트들을 DOM에 렌더링합니다: `ReactDOM.render(componentToRender, targetNode)`, 첫 번째 인자는 랜더링할 리액트 엘리먼트 혹은 컴포넌트이고, 두 번째 인자는 첫 번째 인자를 렌더링하게 될 DOM의 노드입니다.

변수를 사용하기 이전에 반드시 선언부터 해야하는 것과 마찬가지로, `ReactDOM.render()`도 반드시 JSX 엘리먼트 선언 이후에 호출되어야 합니다.

# --instructions--

코드 에디터에 간단한 JSX 컴포넌트가 있습니다. `ReactDOM.render()` 메서드를 이용해서 이 컴포넌트를 페이지에 렌더링 해보세요. 정의된 JSX 엘리먼트를 첫 번째 인자로 바로 사용할 수 있으며, `document.getElementById()`을 이용해서 렌더링 하고 싶은 DOM 노드를 선택할 수 있습니다. `id='challenge-node'`를 가진 `div`를 사용해보세요. 상수 변수 `JSX`는 수정하지 않도록 주의하세요.

# --hints--

상수 변수 `JSX`는 한 개의 `div` 엘리먼트를 반환해야 합니다.

```js
assert(JSX.type === 'div');
```

`div`는 `h1` 태그를 첫 번째 엘리먼트를 가지고 있어야 합니다.

```js
assert(JSX.props.children[0].type === 'h1');
```

`div`는 `p` 태그를 두 번째 엘리먼트로 가지고 있어야 합니다.

```js
assert(JSX.props.children[1].type === 'p');
```

주어진 JSX 엘리먼트는 id가 `challenge-node`인 DOM 노드에 렌더링 되어야 합니다.

```js
assert(
  document.getElementById('challenge-node').childNodes[0].innerHTML ===
    '<h1>Hello World</h1><p>Lets render this to the DOM</p>'
);
```

# --seed--

## --seed-contents--

```jsx
const JSX = (
  <div>
    <h1>Hello World</h1>
    <p>Lets render this to the DOM</p>
  </div>
);
// Add your code below this line
```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>Hello World</h1>
  <p>Lets render this to the DOM</p>
</div>
);
// Add your code below this line
ReactDOM.render(JSX, document.getElementById('challenge-node'));
```
