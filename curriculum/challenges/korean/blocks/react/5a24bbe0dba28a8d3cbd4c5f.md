---
id: 5a24bbe0dba28a8d3cbd4c5f
title: DOM에 HTML 요소 렌더링하기
challengeType: 6
forumTopicId: 301406
dashedName: render-html-elements-to-the-dom
---

# --description--

지금까지 JSX가 JavaScript 내에서 읽기 쉬운 HTML을 작성하는 편리한 도구라는 것을 배웠습니다. React를 사용하면 ReactDOM이라는 React의 렌더링 API를 통해 이 JSX를 HTML DOM에 직접 렌더링할 수 있습니다.

ReactDOM은 React 요소를 DOM에 렌더링하는 간단한 메서드를 제공합니다. 이 메서드는 `ReactDOM.render(componentToRender, targetNode)`와 같으며, 첫 번째 인수는 렌더링하려는 React 요소나 컴포넌트이고, 두 번째 인수는 컴포넌트를 렌더링할 DOM 노드입니다.

예상하셨겠지만, `ReactDOM.render()`는 JSX 요소 선언 후에 호출해야 하며, 변수는 사용하기 전에 선언해야 하는 것과 같습니다.

# --instructions--

코드 편집기에는 간단한 JSX 컴포넌트가 있습니다. `ReactDOM.render()` 메서드를 사용해 이 컴포넌트를 페이지에 렌더링하세요. 정의된 JSX 요소를 첫 번째 인수로 직접 전달할 수 있고, `document.getElementById()`를 사용해 렌더링할 DOM 노드를 선택하세요. `div`와 `id='challenge-node'`가 사용 가능하니 활용하세요. `JSX` 상수는 변경하지 마세요.

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

제공된 JSX 요소는 id가 `challenge-node`인 DOM 노드에 렌더링되어야 합니다.

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
