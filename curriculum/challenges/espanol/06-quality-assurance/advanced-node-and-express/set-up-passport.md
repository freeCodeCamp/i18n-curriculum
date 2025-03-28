---
id: 5895f70cf9fc0f352b528e65
title: Configura Passport
challengeType: 2
forumTopicId: 301565
dashedName: set-up-passport
---

# --description--

Es hora de configurar *Passport* para que finalmente pueda empezar a permitir que un usuario se registre o inicie sesión en una cuenta. Además de Passport, usaras Express-session para manejar sesiones. Express-session tiene un gran número de funciones avanzadas que puede usar, aunque por ahora solo se vamos a emplear los básico. El uso de este middleware guarda el id de la sesión como una cookie en el cliente y nos permite acceder a información sobre la sesión usando ese id en el servidor. De esta manera, se guarda la información personal de la cuenta fuera de la cookie (empleada por el cliente para decirle a su servidor que está autenticado) y guarda la *key* para acceder a los datos guardados en el servidor.

`passport@~0.4.1` y `express-session@~1.17.1` ya están instalados, y los dos están apuntados como dependencias en tu archivo `package.json`.

Necesita configurar los ajustes de sesión e inicializar Passport. Primero, crea las variables `session` y `passport` que requieren `express-session` y `passport` respectivamente.

Después, haga que su aplicación de Express use la sesión definiendo las siguientes opciones:

```javascript
app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: true,
  saveUninitialized: true,
  cookie: { secure: false }
}));
```

Asegúrese de añadir `SESSION_SECRET` al fichero `.env`, dándole un valor aleatorio. ¡Este es utilizado para calcular el hash utilizado para encriptar sus cookies!

Después de todo esto, informe a su aplicación de express para que **use** `passport.initialize()` y `passport.session()`.

Envía tu página cuando crea que lo ha hecho bien. Si te encuentras con errores, puedes <a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#set-up-passport-3" target="_blank" rel="noopener noreferrer nofollow">comprobar el proyecto realizado hasta este momento</a>.

# --hints--

Passport y Express-session deben ser dependencias.

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

Las dependencias deben ser requeridas correctamente.

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

La aplicación Express debe usar nuevas dependencias.

```js
async () => {
  const url = new URL("/_api/server.js", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(data, /passport\.initialize/, 'Your express app should use "passport.initialize()"');
  assert.match(data, /passport\.session/, 'Your express app should use "passport.session()"');
}
```

Session y session secret deben estar configurados correctamente.

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

