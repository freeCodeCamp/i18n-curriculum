---
id: 5a24c314108439a4d4036156
title: ミドルウェアを使用して非同期アクションを処理する
challengeType: 6
forumTopicId: 301451
dashedName: use-middleware-to-handle-asynchronous-actions
---

# --description--

So far these challenges have avoided discussing asynchronous actions, but they are an unavoidable part of web development. At some point you'll need to call asynchronous endpoints in your Redux app, so how do you handle these types of requests? Redux provides middleware designed specifically for this purpose, called Redux Thunk middleware. Here's a brief description how to use this with Redux.

Redux Thunk ミドルウェアをインクルードするには、ミドルウェアを `Redux.applyMiddleware()` への引数として渡します。 次に、このステートメントを `createStore()` 関数への 2 つ目のオプションパラメーターとして渡します。 エディターの一番下のコードでこれを確認してください。 その次に、非同期アクションを作成するため、アクションクリエイターで `dispatch` を引数に取る関数を返します。 この関数の中で、アクションをディスパッチしたり、非同期要求を実行したりできます。

この例では `setTimeout()` を呼び出して非同期要求をシミュレートしています。 通常は非同期処理を開始する前にアクションをディスパッチして、何らかのデータが要求されていることをアプリケーションの state に知らせます (この state では、たとえば読み込み中を示すアイコンを表示したりできます)。 その後、データを受信した時点で別のアクションをディスパッチします。このアクションは、アクションが完了したという情報と一緒に、データをペイロードとして運びます。

この特別なアクションクリエイターには `dispatch` をパラメーターとして渡していることを覚えておいてください。 これを使用してアクションをディスパッチします。ディスパッチに直接アクションを渡すだけで、残りの処理はミドルウェアが行ってくれます。

# --instructions--

`handleAsync()` アクションクリエイターに両方のディスパッチを記述してください。 `requestingData()` を `setTimeout()` (API 呼び出しのシミュレーション) の前でディスパッチしてください。 次に、データを受信 (する真似を) した後で、`receivedData()` アクションをディスパッチし、このデータを渡してください。 これで、Redux での非同期アクションの処理方法がわかりました。 他はすべて以前と同じように動作します。

# --hints--

`requestingData` アクションクリエイターから、タイプが `REQUESTING_DATA` の値に等しいオブジェクトを返します。

```js
assert(requestingData().type === REQUESTING_DATA);
```

`receivedData` アクションクリエイターから、タイプが `RECEIVED_DATA` の値に等しいオブジェクトを返します。

```js
assert(receivedData('data').type === RECEIVED_DATA);
```

`asyncDataReducer` は関数である必要があります。

```js
assert(typeof asyncDataReducer === 'function');
```

`requestingData` アクションクリエイターのディスパッチで、ストアのフェッチの `state` プロパティを `true` に更新します。

```js
assert(
  (function () {
    const initialState = store.getState();
    store.dispatch(requestingData());
    const reqState = store.getState();
    return initialState.fetching === false && reqState.fetching === true;
  })()
);
```

`handleAsync` のディスパッチで、データ要求アクションをディスパッチし、遅延の後に、受信したデータアクションをディスパッチします。

```js
assert(
  (function () {
    const noWhiteSpace = __helpers.removeWhiteSpace(handleAsync.toString());
    return (
      noWhiteSpace.includes('dispatch(requestingData())') === true &&
      noWhiteSpace.includes('dispatch(receivedData(data))') === true
    );
  })()
);
```

# --seed--

## --seed-contents--

```js
const REQUESTING_DATA = 'REQUESTING_DATA'
const RECEIVED_DATA = 'RECEIVED_DATA'

const requestingData = () => { return {type: REQUESTING_DATA} }
const receivedData = (data) => { return {type: RECEIVED_DATA, users: data.users} }

const handleAsync = () => {
  return function(dispatch) {
    // Dispatch request action here

    setTimeout(function() {
      let data = {
        users: ['Jeff', 'William', 'Alice']
      }
      // Dispatch received data action here

    }, 2500);
  }
};

const defaultState = {
  fetching: false,
  users: []
};

const asyncDataReducer = (state = defaultState, action) => {
  switch(action.type) {
    case REQUESTING_DATA:
      return {
        fetching: true,
        users: []
      }
    case RECEIVED_DATA:
      return {
        fetching: false,
        users: action.users
      }
    default:
      return state;
  }
};

const store = Redux.createStore(
  asyncDataReducer,
  Redux.applyMiddleware(ReduxThunk.default)
);
```

# --solutions--

```js
const REQUESTING_DATA = 'REQUESTING_DATA'
const RECEIVED_DATA = 'RECEIVED_DATA'

const requestingData = () => { return {type: REQUESTING_DATA} }
const receivedData = (data) => { return {type: RECEIVED_DATA, users: data.users} }

const handleAsync = () => {
  return function(dispatch) {
    dispatch(requestingData());
    setTimeout(function() {
      let data = {
        users: ['Jeff', 'William', 'Alice']
      }
      dispatch(receivedData(data));
    }, 2500);
  }
};

const defaultState = {
  fetching: false,
  users: []
};

const asyncDataReducer = (state = defaultState, action) => {
  switch(action.type) {
    case REQUESTING_DATA:
      return {
        fetching: true,
        users: []
      }
    case RECEIVED_DATA:
      return {
        fetching: false,
        users: action.users
      }
    default:
      return state;
  }
};

const store = Redux.createStore(
  asyncDataReducer,
  Redux.applyMiddleware(ReduxThunk.default)
);
```
