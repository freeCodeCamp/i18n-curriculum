---
id: 5895f70cf9fc0f352b528e65
title: Налаштування Passport
challengeType: 2
forumTopicId: 301565
dashedName: set-up-passport
---

# --description--

It's time to set up *Passport* so you can finally start allowing a user to register or log in to an account. In addition to Passport, you will use Express-session to handle sessions. Express-session has a ton of advanced features you can use, but for now you are just going to use the basics. Using this middleware saves the session id as a cookie in the client, and allows us to access the session data using that id on the server. This way, you keep personal account information out of the cookie used by the client to tell to your server clients are authenticated and keep the *key* to access the data stored on the server.

`passport@~0.4.1` та `express-session@~1.17.1` вже встановлені та вказані як залежності у вашому файлі `package.json`.

Вам потрібно буде встановити налаштування сесії та ініціалізувати Passport. Спочатку створіть змінні `session` та `passport`, щоб вимагати `express-session` та `passport` відповідно.

Потім налаштуйте програму Express на використання сесії, визначивши наступні параметри:

```javascript
app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: true,
  saveUninitialized: true,
  cookie: { secure: false }
}));
```

Не забудьте додати `SESSION_SECRET` до свого файлу `.env` та надати йому випадкове значення. Це використовується для обчислення хешу, щоб зашифрувати ваші куки!

Після того, як ви все зробите, скажіть своїй програмі Express **використовувати** `passport.initialize()` та `passport.session()`.

Підтвердіть вашу сторінку, якщо все зрозуміло. Якщо виникають помилки, ви можете <a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#set-up-passport-3" target="_blank" rel="noopener noreferrer nofollow">переглянути проєкт, виконаний до цього етапу</a>.

# --hints--

Passport та Express-session повинні бути залежностями.

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

Залежності повинні бути правильно заданими.

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

Програма Express повинна використовувати нові залежності.

```js
async (getUserInput) => {
  const url = new URL("/_api/server.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(data, /passport\.initialize/, 'Your express app should use "passport.initialize()"');
  assert.match(data, /passport\.session/, 'Your express app should use "passport.session()"');
}
```

Сесія і секрет сесії повинні бути правильно налаштовані.

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

