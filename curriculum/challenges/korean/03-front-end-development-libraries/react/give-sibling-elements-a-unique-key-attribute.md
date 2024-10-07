---
id: 5a24c314108439a4d403618b
title: 형제 엘리먼트에 고유한 키 속성 제공하기
challengeType: 6
forumTopicId: 301394
dashedName: give-sibling-elements-a-unique-key-attribute
---

# --description--

The last challenge showed how the `map` method is used to dynamically render a number of elements based on user input. However, there was an important piece missing from that example. When you create an array of elements, each one needs a `key` attribute set to a unique value. React uses these keys to keep track of which items are added, changed, or removed. This helps make the re-rendering process more efficient when the list is modified in any way.

**참고:** 키는 형제 엘리먼트 사이에서만 다르면 되고, 애플리케이션 전체적으로 다를 필요는 없습니다.

# --instructions--

코드 편집기에는 프론트엔드 프레임워크의 이름을 담은 배열과 상태가 없는 함수형 컴포넌트 `Frameworks()`가 있습니다. `Frameworks()`는 지난 도전과 마찬가지로 배열을 순서가 없는 리스트로 매핑(map)합니다. `frontEndFrameworks` 배열의 각 프레임워크에 대해 `li` 엘리먼트를 반환하는 `map` 콜백을 작성해보세요. 이번에는 각 `li`에 고유의 값으로 설정된 `key` 속성을 제공해보세요. `li` 엘리먼트는 `frontEndFrameworks`의 텍스트도 포함되어야 합니다.

보통 렌더링되는 엘리먼트를 고유하게 식별할 수 있는 키를 만듭니다. 마지막 수단으로 배열의 인덱스를 사용할 수도 있지만, 보통 고유한 아이디를 사용해야 합니다.

# --hints--

`Frameworks` 컴포넌트는 존재하고, 페이지에 렌더링되어야 합니다.

```js
assert(
  Enzyme.mount(React.createElement(Frameworks)).find('Frameworks').length === 1
);
```

`Frameworks`는 `h1` 엘리먼트를 렌더링해야 합니다.

```js
assert(Enzyme.mount(React.createElement(Frameworks)).find('h1').length === 1);
```

`Frameworks`는 `ul` 엘리먼트를 렌더링해야 합니다.

```js
assert(Enzyme.mount(React.createElement(Frameworks)).find('ul').length === 1);
```

`ul`는 여섯 개의 `li` 엘리먼트를 렌더링해야 합니다.

```js
assert(
  Enzyme.mount(React.createElement(Frameworks)).find('ul').children().length ===
    6 &&
    Enzyme.mount(React.createElement(Frameworks))
      .find('ul')
      .childAt(0)
      .name() === 'li' &&
    Enzyme.mount(React.createElement(Frameworks)).find('li').length === 6
);
```

각 리스트 아이템 엘리먼트는 고유한 `key` 속성을 가지고 있어야 합니다.

```js
assert(
  (() => {
    const ul = Enzyme.mount(React.createElement(Frameworks)).find('ul');
    const keys = new Set([
      ul.childAt(0).key(),
      ul.childAt(1).key(),
      ul.childAt(2).key(),
      ul.childAt(3).key(),
      ul.childAt(4).key(),
      ul.childAt(5).key()
    ]);
    return keys.size === 6;
  })()
);
```

각 리스트 아이템 엘리먼트는 `frontEndFrameworks`의 텍스트를 포함해야 합니다.

```js
assert(
  (() => {
    const li = Enzyme.mount(React.createElement(Frameworks))
      .find('ul')
      .children();
    return [...Array(5)].every((_, i) =>
      frontEndFrameworks.includes(li.at(i).text())
    );
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<Frameworks />, document.getElementById('root'))
```

## --seed-contents--

```jsx
const frontEndFrameworks = [
  'React',
  'Angular',
  'Ember',
  'Knockout',
  'Backbone',
  'Vue'
];

function Frameworks() {
  const renderFrameworks = null; // Change this line
  return (
    <div>
      <h1>Popular Front End JavaScript Frameworks</h1>
      <ul>
        {renderFrameworks}
      </ul>
    </div>
  );
};
```

# --solutions--

```jsx
const frontEndFrameworks = [
  'React',
  'Angular',
  'Ember',
  'Knockout',
  'Backbone',
  'Vue'
];

function Frameworks() {
  const renderFrameworks = frontEndFrameworks.map((fw, i) => <li key={i}>{fw}</li>);
  return (
    <div>
      <h1>Popular Front End JavaScript Frameworks</h1>
      <ul>
        {renderFrameworks}
      </ul>
    </div>
  );
};
```
