---
id: 5a24c314108439a4d403614e
title: アクションクリエイターを定義する
challengeType: 6
forumTopicId: 301441
dashedName: define-an-action-creator
---

# --description--

After creating an action, the next step is sending the action to the Redux store so it can update its state. In Redux, you define action creators to accomplish this. An action creator is simply a JavaScript function that returns an action. In other words, action creators create objects that represent action events.

# --instructions--

呼び出されたときに `action` オブジェクトを返す `actionCreator()` という関数を定義してください。

# --hints--

関数 `actionCreator` が存在する必要があります。

```js
assert(typeof actionCreator === 'function');
```

`actionCreator` 関数の実行で、`action` オブジェクトを返します。

```js
assert(typeof action === 'object');
```

返される `action` に、値 `LOGIN` を持つキープロパティ `type` を持たせます。

```js
assert(action.type === 'LOGIN');
```

# --seed--

## --seed-contents--

```js
const action = {
  type: 'LOGIN'
}
// Define an action creator here:
```

# --solutions--

```js
const action = {
  type: 'LOGIN'
}
const actionCreator = () => {
  return action;
};
```
