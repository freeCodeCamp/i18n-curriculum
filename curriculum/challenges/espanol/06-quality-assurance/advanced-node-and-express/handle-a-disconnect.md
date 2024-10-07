---
id: 589fc831f9fc0f352b528e76
title: Maneja una desconexión
challengeType: 2
forumTopicId: 301552
dashedName: handle-a-disconnect
---

# --description--

You may notice that up to now you have only been increasing the user count. Handling a user disconnecting is just as easy as handling the initial connect, except you have to listen for it on each socket instead of on the whole server.

Para ello, añade otro oyente (listener) dentro del oyente existente `'connect'` que escuche `'disconnect'` en el socket sin que pasen datos. Puedes probar esta funcionalidad simplemente registrando que un usuario se ha desconectado en la consola.

```js
socket.on('disconnect', () => {
  /*anything you want to do on disconnect*/
});
```

Para asegurar que los usuarios disponen siempre del recuento de usuarios actualizado, debes reducir `currentUsers` en 1 cuando ocurra la desconexión, y entonces emitir el evento `'user count'` con el recuento actualizado.

**Nota:** Al igual que `'disconnect'`, todos los demás eventos que un socket puede emitir al servidor deben ser manejados dentro del oyente de conexión donde tenemos definido 'socket'.

Envía tu página cuando creas que la has hecho bien. Si se producen errores, <a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#handle-a-disconnect-8" target="_blank" rel="noopener noreferrer nofollow">aquí puedes ver el proyecto completado hasta este punto</a>.

# --hints--

El servidor debe manejar la desconexión del evento de un socket.

```js
async (getUserInput) => {
  const url = new URL("/_api/server.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(data, /socket.on.*('|")disconnect('|")/s, '');
}
```

El cliente debe estar escuchando el evento `'user count'`

```js
async (getUserInput) => {
  const url = new URL("/public/client.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /socket.on.*('|")user count('|")/s,
    'Your client should be connection to server with the connection defined as socket'
  );
}
```

