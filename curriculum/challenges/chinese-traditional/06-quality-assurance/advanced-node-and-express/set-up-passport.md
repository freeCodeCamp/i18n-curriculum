---
id: 5895f70cf9fc0f352b528e65
title: 設置 Passport
challengeType: 2
forumTopicId: 301565
dashedName: set-up-passport
---

# --description--

It's time to set up *Passport* so you can finally start allowing a user to register or log in to an account. In addition to Passport, you will use Express-session to handle sessions. Express-session has a ton of advanced features you can use, but for now you are just going to use the basics. Using this middleware saves the session id as a cookie in the client, and allows us to access the session data using that id on the server. This way, you keep personal account information out of the cookie used by the client to tell to your server clients are authenticated and keep the *key* to access the data stored on the server.

`passport@~0.4.1` 和 `express-session@~1.17.1` 已經安裝，並且在你的 `package.json` 文件中均被列爲依賴項。

現在，你需要配置 session 並初始化 Passport。 首先，創建變量 `session` 和 `passport` 以便分別請求 `express-session` 和 `passport`。

然後，通過定義以下選項來設置你的 Express 應用程序來使用會話：

```javascript
app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: true,
  saveUninitialized: true,
  cookie: { secure: false }
}));
```

請在 `.env` 文件中添加 `SESSION_SECRET`，並給它賦一個隨機值。 這是用來計算用於加密你的 cookie 的哈希值的！

在你做了所有這些後，告訴你的 Express 應用程序**使用** `passport.initialize()` 和 `passport.session()`。

完成後，提交你的頁面鏈接。 如果你遇到錯誤，可以<a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#set-up-passport-3" target="_blank" rel="noopener noreferrer nofollow">查看已完成的項目</a>。

# --hints--

應添加 Passort 和 Express-session 作爲依賴。

```js
async (getUserInput) => {
  const url = new URL("/_api/package.json", getUserInput("url"));
  const res = await fetch(url);
  const packJson = await res.json();
  assert.property(
    packJson.dependencies,
    'passport',
    'Your project should list "passport" as a dependency'
  );
  assert.property(
    packJson.dependencies,
    'express-session',
    'Your project should list "express-session" as a dependency'
  );
}
```

依賴應正確引入。

```js
async (getUserInput) => {
  const url = new URL("/_api/server.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /require.*("|')passport("|')/,
    'You should have required passport'
  );
  assert.match(
    data,
    /require.*("|')express-session("|')/,
    'You should have required express-session'
  );
}
```

Express app 可以使用新的依賴。

```js
async (getUserInput) => {
  const url = new URL("/_api/server.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(data, /passport\.initialize/, 'Your express app should use "passport.initialize()"');
  assert.match(data, /passport\.session/, 'Your express app should use "passport.session()"');
}
```

應正確設置 session 和 session secret。

```js
async (getUserInput) => {
  const url = new URL("/_api/server.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /secret *:\s*process\.env(\.SESSION_SECRET|\[(?<q>"|')SESSION_SECRET\k<q>\])/,
    'Your express app should have express-session set up with your secret as process.env.SESSION_SECRET'
  );
}
```

