---
id: 5a24c314108439a4d4036182
title: 리액트에 인라인 스타일 적용하기
challengeType: 6
forumTopicId: 301378
dashedName: add-inline-styles-in-react
---

# --description--

You may have noticed in the last challenge that there were several other syntax differences from HTML inline styles in addition to the `style` attribute set to a JavaScript object. First, the names of certain CSS style properties use camel case. For example, the last challenge set the size of the font with `fontSize` instead of `font-size`. Hyphenated words like `font-size` are invalid syntax for JavaScript object properties, so React uses camel case. As a rule, any hyphenated style properties are written using camel case in JSX.

다음은, 모든 속성의 길이(`height`, `width`, `fontSize`)는 지정되지 않는 한 `px`로 추정됩니다. 예를 들어 `em`을 사용하고 싶으면 이렇게 따옴표에 값과 단위를 넣어주면 됩니다 `{fontSize: "4em"}`. `px`를 제외한 모든 길이 값들은 따옴표로 묶어줘야 합니다.

# --instructions--

많은 스타일을 설정한 경우, 스타일 객체(`object`)를 상수 변수에 할당해서 코드를 정리할 수 있습니다. 파일 제일 상단에 `styles` 상수를 전역 변수로 선언해보세요. `styles` 상수에 다음 세 가지 속성을 가진 `객체`를 할당해주세요. `div`의 color는 `purple`, font-size는 `40`, border는 `2px solid purple`를 넣어주세요. 그런 다음 `style` 속성에 `styles` 상수 변수를 설정합니다.

# --hints--

`styles` 변수는 세 개의 속성을 가진 `object`이어야 합니다.

```js
assert(Object.keys(styles).length === 3);
```

`styles` 변수는 `color` 속성에 `purple` 값이 설정되어야 합니다.

```js
assert(styles.color === 'purple');
```

`styles` 변수는 `fontSize` 속성에 `40` 값이 설정되어야 합니다.

```js
assert(styles.fontSize == 40);
```

`styles` 변수는 `border` 속성에 `2px solid purple` 값이 설정되어야 합니다.

```js
assert(styles.border === '2px solid purple');
```

이 컴포넌트는 `div` 엘리먼트를 렌더링해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.shallow(React.createElement(Colorful));
    return mockedComponent.type() === 'div';
  })()
);
```

`div` 엘리먼트는 `styles` 객체로 정의된 스타일이 있어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.shallow(React.createElement(Colorful));
    return (
      mockedComponent.props().style.color === 'purple' &&
      mockedComponent.props().style.fontSize == 40 &&
      mockedComponent.props().style.border === '2px solid purple'
    );
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<Colorful />, document.getElementById('root'))
```

## --seed-contents--

```jsx
// Change code above this line
class Colorful extends React.Component {
  render() {
    // Change code below this line
    return (
      <div style={{color: "yellow", fontSize: 24}}>Style Me!</div>
    );
    // Change code above this line
  }
};
```

# --solutions--

```jsx
const styles = {
  color: "purple",
  fontSize: 40,
  border: "2px solid purple"
};
// Change code above this line
class Colorful extends React.Component {
  render() {
    // Change code below this line
    return (
      <div style={styles}>Style Me!</div>
    );
    // Change code above this line
  }
};
```
