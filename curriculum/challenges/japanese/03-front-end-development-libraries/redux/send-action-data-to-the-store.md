---
id: 5a24c314108439a4d4036155
title: ストアにアクションデータを送信する
challengeType: 6
forumTopicId: 301448
dashedName: send-action-data-to-the-store
---

# --description--

By now you've learned how to dispatch actions to the Redux store, but so far these actions have not contained any information other than a `type`. You can also send specific data along with your actions. In fact, this is very common because actions usually originate from some user interaction and tend to carry some data with them. The Redux store often needs to know about this data.

# --instructions--

コードエディターで、基本的な `notesReducer()` と `addNoteText()` アクションクリエイターが定義されています。 `action` オブジェクトを返すように `addNoteText()` 関数の本体を完成させてください。 オブジェクトには、`ADD_NOTE` という値を持つ `type` プロパティを含める必要があり、アクションクリエイターに渡される `note` データが設定された `text` プロパティも含める必要があります。 アクションクリエイターを呼び出すときには、オブジェクトに対してアクセスできる具体的なノート情報を渡します。

次に、`notesReducer()` の `switch` ステートメントの記述を完成させてください。 `addNoteText()` のアクションを処理する case を追加する必要があります。 この case は、タイプ `ADD_NOTE` のアクションが存在する場合にトリガーする必要があり、`action` を受信したときに新しい `state` として `text` プロパティを返す必要があります。

アクションはコードの最後でディスパッチされます。 記述を終えたら、コードを実行してコンソールを確認してください。 以上のコードだけで、アクション固有のデータをストアに送信して、ストアの `state` を更新するときに使用することができます。

# --hints--

アクションクリエイター `addNoteText` から、`type` と `text` というキーを持つオブジェクトを返します。

```js
assert(
  (function () {
    const addNoteFn = addNoteText('__TEST__NOTE');
    return addNoteFn.type === ADD_NOTE && addNoteFn.text === '__TEST__NOTE';
  })()
);
```

`addNoteText` アクションクリエイターによるタイプ `ADD_NOTE` のアクションのディスパッチで、`state` を、アクションクリエイターに渡された文字列に更新します。

```js
assert(
  (function () {
    const initialState = store.getState();
    store.dispatch(addNoteText('__TEST__NOTE'));
    const newState = store.getState();
    return initialState !== newState && newState === '__TEST__NOTE';
  })()
);
```

# --seed--

## --seed-contents--

```js
const ADD_NOTE = 'ADD_NOTE';

const notesReducer = (state = 'Initial State', action) => {
  switch(action.type) {
    // Change code below this line

    // Change code above this line
    default:
      return state;
  }
};

const addNoteText = (note) => {
  // Change code below this line

  // Change code above this line
};

const store = Redux.createStore(notesReducer);

console.log(store.getState());
store.dispatch(addNoteText('Hello!'));
console.log(store.getState());
```

# --solutions--

```js
const ADD_NOTE = 'ADD_NOTE';

const notesReducer = (state = 'Initial State', action) => {
  switch(action.type) {
    // Change code below this line
    case ADD_NOTE:
      return action.text;
    // Change code above this line
    default:
      return state;
  }
};

const addNoteText = (note) => {
  // Change code below this line
  return {
    type: ADD_NOTE,
    text: note
  }
  // Change code above this line
};

const store = Redux.createStore(notesReducer);

console.log(store.getState());
store.dispatch(addNoteText('Hello Redux!'));
console.log(store.getState());
```
