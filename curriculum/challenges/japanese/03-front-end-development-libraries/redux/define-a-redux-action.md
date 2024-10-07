---
id: 5a24c314108439a4d403614d
title: Redux のアクションを定義する
challengeType: 6
forumTopicId: 301440
dashedName: define-a-redux-action
---

# --description--

Since Redux is a state management framework, updating state is one of its core tasks. In Redux, all state updates are triggered by dispatching actions. An action is simply a JavaScript object that contains information about an action event that has occurred. The Redux store receives these action objects, then updates its state accordingly. Sometimes a Redux action also carries some data. For example, the action carries a username after a user logs in. While the data is optional, actions must carry a `type` property that specifies the 'type' of action that occurred.

Redux のアクションは、アプリで発生しているイベントに関する情報を Redux ストアに届けるメッセンジャーと捉えることができます。 情報を受け取ったストアは、発生したアクションに基づいて状態を更新する役割を果たします。

# --instructions--

Redux のアクションの記述は簡単で、type プロパティを持つオブジェクトを宣言するだけです。 オブジェクト `action` を宣言し、文字列 `'LOGIN'` を設定したプロパティ `type` を付けてください。

# --hints--

`action` オブジェクトが存在する必要があります。

```js
assert(
  (function () {
    return typeof action === 'object';
  })()
);
```

`action` オブジェクトに、値 `LOGIN` を持つキープロパティ `type` を持たせます。

```js
assert(
  (function () {
    return action.type === 'LOGIN';
  })()
);
```

# --seed--

## --seed-contents--

```js
// Define an action here:
```

# --solutions--

```js
const action = {
  type: 'LOGIN'
}
```
