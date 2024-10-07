---
id: 5a24c314108439a4d403616f
title: '[복습] 상태가 없는 함수형 컴포넌트에서 props 사용하기'
challengeType: 6
forumTopicId: 301411
dashedName: review-using-props-with-stateless-functional-components
---

# --description--

Except for the last challenge, you've been passing props to stateless functional components. These components act like pure functions. They accept props as input and return the same view every time they are passed the same props. You may be wondering what state is, and the next challenge will cover it in more detail. Before that, here's a review of the terminology for components.

상태가 없는 '함수형' 컴포넌트(*stateless functional component*)는 프로퍼티를 받아 JSX로 반환하는 함수를 말합니다. 그리고 상태가 없는 컴포넌트(*stateless component*)란 `React.Component`를 상속하는 클래스입니다. 이 클래스는 내부에서 상태를 사용하지 않습니다(자세한 내용은 다음 도전에서). 마지막으로 상태가 있는 컴포넌트(*stateful component*)는 클래스 컴포넌트로, 자체적으로 상태를 관리합니다. 이 상태가 있는 컴포넌트를 간단하게 컴포넌트 혹은 리액트 컴포넌트라고 불리는 것을 보셨을 겁니다.

상태를 가진 컴포넌트를 최소화하고, 상태가 없는 함수형 컴포넌트를 사용하는게 일반적인 패턴입니다. 이렇게 하면 애플리케이션의 특정 영역에서 상태를 관리할 수 있게 도와줍니다. 결국 상태 변경이 앱 동작에 미치는 영향을 더 쉽게 파악할 수 있어서, 앱의 개발과 유지보수에 도움이 됩니다.

# --instructions--

코드 편집기에 `CampSite` 컴포넌트가 자식 컴포넌트인 `Camper`를 렌더링하고 있습니다. `Camper` 컴포넌트를 정의하고 프로퍼티 기본값으로 `{ name: 'CamperBot' }`를 할당 해보세요. `Camper` 안에서 원하는 코드를 렌더링 해보세요. 하지만 프로퍼티로 전달받은 `name`의 값만을 가진 `p` 엘리먼트가 있어야 합니다. 마지막으로 `Camper` 컴포넌트에서 `propTypes`를 정의해보세요. `name` 프로퍼티를 가지고 있어야 하고, 타입은 `string` 입니다.

# --hints--

`CampSite` 컴포넌트가 렌더링 되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(CampSite));
    return mockedComponent.find('CampSite').length === 1;
  })()
);
```

`Camper` 컴포넌트가 렌더링 되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(CampSite));
    return mockedComponent.find('Camper').length === 1;
  })()
);
```

`Camper` 컴포넌트는 프로퍼티 기본값으로 텍스트 `CamperBot`을 가진 `name` 프로퍼티가 있어야 합니다.

```js
assert(
  /Camper.defaultProps={name:(['"`])CamperBot\1,?}/.test(
    __helpers.removeWhiteSpace(code)
  )
);
```

`Camper` 컴포넌트는 프로퍼티 타입이 `string`인 `name`을 가지고 있어야 합니다.

```js
assert(
  /Camper.propTypes={name:PropTypes.string.isRequired,?}/.test(
    __helpers.removeWhiteSpace(code)
  )
);
```

`Camper` 컴포넌트는 `name` 프로퍼티에서 받은 텍스트를 갖는 하나의 `p` 엘리먼트가 있어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(CampSite));
    return (
      mockedComponent.find('p').text() ===
      mockedComponent.find('Camper').props().name
    );
  })()
);
```

# --seed--

## --before-user-code--

```jsx
var PropTypes = {
   string: { isRequired: true }
};
```

## --after-user-code--

```jsx
ReactDOM.render(<CampSite />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class CampSite extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <Camper/>
      </div>
    );
  }
};
// Change code below this line
```

# --solutions--

```jsx
class CampSite extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <Camper/>
      </div>
    );
  }
};
// Change code below this line

const Camper = (props) => {
   return (
     <div>
       <p>{props.name}</p>
     </div>
   );
};

Camper.propTypes = {
  name: PropTypes.string.isRequired
};

Camper.defaultProps = {
  name: 'CamperBot'
};
```
