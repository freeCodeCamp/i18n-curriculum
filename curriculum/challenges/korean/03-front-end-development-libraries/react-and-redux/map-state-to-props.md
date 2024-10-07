---
id: 5a24c314108439a4d4036145
title: 상태를 속성에 매핑하기
challengeType: 6
forumTopicId: 301433
dashedName: map-state-to-props
---

# --description--

The `Provider` component allows you to provide `state` and `dispatch` to your React components, but you must specify exactly what state and actions you want. This way, you make sure that each component only has access to the state it needs. You accomplish this by creating two functions: `mapStateToProps()` and `mapDispatchToProps()`.

이러한 함수에서는 액세스할 상태의 종류를 선언하고 디스패치할 수 있는 어떤 액션 생성자가 필요한지를 지정합니다. 이러한 함수가 준비되면 React Redux의 `connect` 메서드를 사용하여 이를 다른 도전과제에 있는 컴포넌트에 연결하는 방법을 볼 수 있습니다.

**참고:** React Redux는 내부적으로 `store.subscribe()` 메서드를 사용하여 `mapStateToProps()`를 구현합니다.

# --instructions--

`mapStateToProps()` 함수를 만드세요. 이 함수는 `state`를 인수로 받아서 해당 상태를 특정 속성 이름에 매핑하는 객체를 반환해야 합니다. 이러한 속성은 `props`를 통해 컴포넌트에 액세스할 수 있게 됩니다. 이 예시에서 앱의 전체 상태를 단일 배열에 유지하고 있기 때문에 해당 전체 상태를 컴포넌트로 전달할 수 있습니다. 반환되는 객체에 `messages`라는 속성을 만들고 이를 `state`로 설정합니다.

# --hints--

상수 `state`는 비어있는 배열이어야 합니다.

```js
assert(Array.isArray(state) && state.length === 0);
```

`mapStateToProps`는 함수여야 합니다.

```js
assert(typeof mapStateToProps === 'function');
```

`mapStateToProps`는 객체를 반환해야 합니다.

```js
assert(typeof mapStateToProps() === 'object');
```

`mapStateToProps`에 배열을 상태로써 전달하면 이 배열을 `messages` 키에 할당하여 반환해야 합니다.

```js
assert(mapStateToProps(['messages']).messages.pop() === 'messages');
```

# --seed--

## --seed-contents--

```jsx
const state = [];

// Change code below this line
```

# --solutions--

```jsx
const state = [];

// Change code below this line

const mapStateToProps = (state) => {
  return {
    messages: state
  }
};
```
