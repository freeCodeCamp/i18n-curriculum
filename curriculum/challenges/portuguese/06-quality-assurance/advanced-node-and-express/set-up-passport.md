---
id: 5895f70cf9fc0f352b528e65
title: Configurar o Passport
challengeType: 2
forumTopicId: 301565
dashedName: set-up-passport
---

# --description--

It's time to set up *Passport* so you can finally start allowing a user to register or log in to an account. In addition to Passport, you will use Express-session to handle sessions. Express-session has a ton of advanced features you can use, but for now you are just going to use the basics. Using this middleware saves the session id as a cookie in the client, and allows us to access the session data using that id on the server. This way, you keep personal account information out of the cookie used by the client to tell to your server clients are authenticated and keep the *key* to access the data stored on the server.

`passport@~0.4.1` e `express-session@~1.17.1` já estão instalados e listados como dependências no arquivo `package.json`.

Você precisará configurar as definições de sessão e inicializar o Passport. Primeiro, crie as variáveis `session` e `passport` para exigir `express-session` e `passport`, respectivamente.

Em seguida, configure a aplicação do Express para que use o session, definindo as seguintes opções:

```javascript
app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: true,
  saveUninitialized: true,
  cookie: { secure: false }
}));
```

Certifique-se de adicionar `SESSION_SECRET` ao arquivo `.env` e de dar a ele um valor aleatório. Isto é usado para calcular o hash usado para criptografar seu cookie!

Depois de fazer tudo isso, informe ao aplicativo do express para que **use** `passport.initialize()` e `passport.session()`.

Envie sua página quando você achar que ela está certa. Se você estiver encontrando erros, pode <a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#set-up-passport-3" target="_blank" rel="noopener noreferrer nofollow">conferir o projeto concluído até este ponto</a>.

# --hints--

O Passport e o Express-session devem ser dependências.

```js
async () => {
  const url = new URL("/_api/package.json", code);
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

As dependências devem ser solicitados corretamente.

```js
async () => {
  const url = new URL("/_api/server.js", code);
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

A aplicação do Express deve usar novas dependências.

```js
async () => {
  const url = new URL("/_api/server.js", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(data, /passport\.initialize/, 'Your express app should use "passport.initialize()"');
  assert.match(data, /passport\.session/, 'Your express app should use "passport.session()"');
}
```

Session e session secret devem estar definidos corretamente.

```js
async () => {
  const url = new URL("/_api/server.js", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /secret *:\s*process\.env(\.SESSION_SECRET|\[(?<q>"|')SESSION_SECRET\k<q>\])/,
    'Your express app should have express-session set up with your secret as process.env.SESSION_SECRET'
  );
}
```

