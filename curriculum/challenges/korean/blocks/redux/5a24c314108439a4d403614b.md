---
id: 5a24c314108439a4d403614b
title: 리덕스 스토어 생성하기
challengeType: 6
forumTopicId: 301439
dashedName: create-a-redux-store
---

# --description--

Redux is a state management framework that can be used with a number of different web technologies, including React.

리덕스에서는 애플리케이션 전체 상태를 담당하는 단일 상태 객체가 존재합니다. 이는 10개의 컴포넌트를 가진 리액트 앱이 있고 각 컴포넌트가 자체 로컬 상태를 가지고 있더라도, 앱의 전체 상태는 리덕스 `store`에 저장된 단일 상태 객체에 의해 정의된다는 것을 의미합니다. 리덕스를 배울 때 이해해야 하는 첫 번째 중요한 원칙은 리덕스 스토어가 애플리케이션 상태에 대한 단일 진실의 원천이라는 것입니다.

이것은 또한 애플리케이션의 어떤 부분이든 상태를 업데이트하고 싶을 때 **반드시** 리덕스 스토어를 통해서만 해야 함을 의미합니다. 단방향 데이터 흐름은 앱에서 상태 관리를 추적하기 쉽게 만듭니다.

# --instructions--

리덕스 `스토어`는 애플리케이션 `상태`를 보유하고 관리하는 객체입니다. 리덕스 객체에는 리덕스 `스토어`를 생성하는 데 사용되는 `createStore()`라는 방법이 있습니다. 이 방법은 `리듀서` 함수를 필수 인수로 받습니다. `리듀서` 함수는 나중의 챌린지에서 다루어지며, 코드 에디터에 이미 정의되어 있습니다. `상태`를 인수로 받고 `상태`를 출력합니다.

`스토어` 변수를 선언하고 `리듀서`를 인수로 전달하면서 `createStore()` 방법에 할당합니다.

**참고:** 코드 편집기에서는 ES6 기본 매개변수 구문을 사용하여 이 상태가 `5`란 값을 저장할 수 있도록 초기화하고 있습니다. 기본 매개변수에 익숙하지 않다면, 이 주제를 다루는 <a href="https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/es6/set-default-parameters-for-your-functions" target="_blank" rel="noopener noreferrer nofollow">교육과정 내 ES6 섹션</a>을 참고할 수 있습니다.

# --hints--

리덕스 스토어는 존재해야 합니다.

```js
assert(typeof store.getState === 'function');
```

리덕스 스토어의 상태 값은 5여야 합니다.

```js
assert(store.getState() === 5);
```

# --seed--

## --seed-contents--

```js
const reducer = (state = 5) => {
  return state;
}

// Redux methods are available from a Redux object
// For example: Redux.createStore()
// Define the store here:
```

# --solutions--

```js
const reducer = (state = 5) => {
  return state;
}

const store = Redux.createStore(reducer);
```
