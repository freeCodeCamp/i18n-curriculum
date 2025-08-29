---
id: 5a24c314108439a4d4036181
title: 인라인 스타일을 소개합니다
challengeType: 6
forumTopicId: 301395
dashedName: introducing-inline-styles
---

# --description--

There are other complex concepts that add powerful capabilities to your React code. But you may be wondering about the more simple problem of how to style those JSX elements you create in React. You likely know that it won't be exactly the same as working with HTML because of <a href="/learn/front-end-development-libraries/react/define-an-html-class-in-jsx" target="_blank" rel="noopener noreferrer nofollow">the way you apply classes to JSX elements</a>.

스타일시트(stylesheet)에서 스타일을 가져오면 크게 다르지 않습니다. `className` 속성을 사용해서 JSX 엘리먼트에 클래스를 적용하고, 스타일시트에서 클래스에 스타일에 적용하는거죠. 다른 방법은 리액트에서 엄청 일반적인 인라인 스타일을 적용하는 것입니다.

HTML에서 하는 방법과 비슷하지만 몇 가지 JSX만의 차이점이 있는 인라인 스타일을 JSX 엘리먼트에 적용합니다. 다음은 HTML에서의 인라인 스타일 예시입니다:

```jsx
<div style="color: yellow; font-size: 16px">Mellow Yellow</div>
```

JSX 엘리먼트도 `style`을 사용하지만, JSX가 변환되는 방식 때문에 값을 문자열(`string`)로 설정할 수 없습니다. 대신에 자바스크립트 객체(`object`)로 설정합니다. 여기 예시가 있습니다.

```jsx
<div style={{color: "yellow", fontSize: 16}}>Mellow Yellow</div>
```

`fontSize` 프로퍼티를 카멜케이스(`camelCase`)로 사용하는 것을 보세요. 이는 리액트가 스타일 객체에 케밥케이스(`kebab-case`) 키를 허용하지 않기 때문입니다. 그래도 리액트가 HTML의 올바른 프로퍼티 이름에 적용시켜줄 것입니다.

# --instructions--

코드 편집기에 있는 `div`에 `style` 메서드를 추가해서 텍스트의 색상을 `red`, 크기를 `72px`로 만들어 보세요.

참고로, 글꼴 크기는 `px` 단위를 생략하고 숫자로 설정하거나, `"72px"`와 같이 쓸 수 있습니다.
# --hints--

이 컴포넌트는 `div` 엘리먼트를 렌더링해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Colorful));
    return mockedComponent.children().type() === 'div';
  })()
);
```

`div` 엘리먼트는 `red` 색상을 가지고 있어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Colorful));
    return mockedComponent.children().props().style.color === 'red';
  })()
);
```

`div` 엘리먼트는 `72px` 글자 크기를 가지고 있어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Colorful));
    return (
      mockedComponent.children().props().style.fontSize === 72 ||
      mockedComponent.children().props().style.fontSize === '72' ||
      mockedComponent.children().props().style.fontSize === '72px'
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
class Colorful extends React.Component {
  render() {
    return (
      <div>Big Red</div>
    );
  }
};
```

# --solutions--

```jsx
class Colorful extends React.Component {
  render() {
    return (
      <div style={{color: "red", fontSize: 72}}>Big Red</div>
    );
  }
};
```
