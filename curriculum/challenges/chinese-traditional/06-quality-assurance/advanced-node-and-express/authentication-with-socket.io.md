---
id: 589fc831f9fc0f352b528e77
title: 使用 Socket.IO 進行身份驗證
challengeType: 2
forumTopicId: 301548
dashedName: authentication-with-socket-io
---

# --description--

Currently, you cannot determine who is connected to your web socket. While `req.user` contains the user object, that's only when your user interacts with the web server, and with web sockets you have no `req` (request) and therefore no user data. One way to solve the problem of knowing who is connected to your web socket is by parsing and decoding the cookie that contains the passport session then deserializing it to obtain the user object. Luckily, there is a package on NPM just for this that turns a once complex task into something simple!

`passport.socketio@~3.7.0`、`connect-mongo@~3.2.0` 和 `cookie-parser@~1.4.5` 已經被添加爲依賴項。 分別請求它們爲 `passportSocketIo`、`MongoStore` 和 `cookieParser`。 同時，我們需要從之前引入的 `express-session` 中初始化新的內存。 就像這樣：

```js
const MongoStore = require('connect-mongo')(session);
const URI = process.env.MONGO_URI;
const store = new MongoStore({ url: URI });
```

現在我們只需要讓 Socket.IO 調用它並進行相應的配置即可。 請注意，以上這些都必須放在現有的 socket 相關代碼之前，而且不能放到連接的監聽回調函數裏。 你的服務器代碼應類似於這樣：

```js
io.use(
  passportSocketIo.authorize({
    cookieParser: cookieParser,
    key: 'express.sid',
    secret: process.env.SESSION_SECRET,
    store: store,
    success: onAuthorizeSuccess,
    fail: onAuthorizeFail
  })
);
```

請注意，爲 Socket.IO 配置 Passport 認證與我們爲 API 配置的 `session` 中間件非常相似。 這是因爲它們旨在使用相同的身份驗證方法 — — 從 cookie 獲取會話 id 並驗證它。

以前，當我們配置 `session` 中間件的時候，我們沒有爲 session 明確設置 cookie 名稱（`key`）。 這是因爲 `session` 包使用了默認值。 現在我們已經添加了另一個需要從 cookie 訪問相同值的軟件包， 我們需要在兩個配置對象中設置 `key` 值。

請將帶有 cookie 名稱的 `key` 添加到匹配 Socket.IO 密鑰的 `session` 中間件。 另外，將 `store` 引用添加到選項中，靠近我們設置 `saveUninitialized: true` 的位置。 這樣，Socket.IO 才知道與哪個 session 關聯。

<hr />

接下來，定義 `success` 與 `fail` 回調函數：

```js
function onAuthorizeSuccess(data, accept) {
  console.log('successful connection to socket.io');

  accept(null, true);
}

function onAuthorizeFail(data, message, error, accept) {
  if (error) throw new Error(message);
  console.log('failed connection to socket.io:', message);
  accept(null, false);
}
```

現在，我們可以通過 `socket.request.user` 訪問用戶對象。 例如，你可以這樣做：

```js
console.log('user ' + socket.request.user.username + ' connected');
```

它將在服務器控制檯記錄已連接的用戶！

完成以上要求後，請提交你的頁面鏈接。 如果你在運行時遇到錯誤，你可以<a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#authentication-with-socketio-9" target="_blank" rel="noopener noreferrer nofollow">查看已完成的項目</a>。

# --hints--

應添加 `passport.socketio` 作爲依賴。

```js
async (getUserInput) => {
  const url = new URL("/_api/package.json", getUserInput("url"));
  const res = await fetch(url);
  const packJson = await res.json();
  assert.property(
    packJson.dependencies,
    'passport.socketio',
    'Your project should list "passport.socketio" as a dependency'
  );
}
```

應添加 `cookie-parser` 作爲依賴。

```js
async (getUserInput) => {
  const url = new URL("/_api/package.json", getUserInput("url"));
  const res = await fetch(url);
  const packJson = await res.json();
  assert.property(
    packJson.dependencies,
    'cookie-parser',
    'Your project should list "cookie-parser" as a dependency'
  );
}
```

應正確引入 passportSocketIo。

```js
async (getUserInput) => {
  const url = new URL("/_api/server.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /require\((['"])passport\.socketio\1\)/gi,
    'You should correctly require and instantiate "passport.socketio"'
  );
}
```

應正確配置 passportSocketIo。

```js
async (getUserInput) => {
  const url = new URL("/_api/server.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /io\.use\(\s*\w+\.authorize\(/,
    'You should register "passport.socketio" as socket.io middleware and provide it correct options'
  );
}
```

