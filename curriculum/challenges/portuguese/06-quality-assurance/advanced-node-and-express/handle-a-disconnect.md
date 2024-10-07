---
id: 589fc831f9fc0f352b528e76
title: Tratar de uma desconexão
challengeType: 2
forumTopicId: 301552
dashedName: handle-a-disconnect
---

# --description--

You may notice that up to now you have only been increasing the user count. Handling a user disconnecting is just as easy as handling the initial connect, except you have to listen for it on each socket instead of on the whole server.

Para fazer isso, adicione outro listener dentro do `'connect'` que já existe e que escute por `'disconnect'` no socket sem passar dados. Você pode testar essa funcionalidade apenas registrando no console que um usuário se desconectou.

```js
socket.on('disconnect', () => {
  /*anything you want to do on disconnect*/
});
```

Para garantir que os clients tenham a contagem atualizada dos usuários atuais continuamente, você deve diminuir os `currentUsers` crie uma conta em 1 quando a desconexão acontece, emitindo o evento `'user count'` com a contagem atualizada.

**Observação:** assim como ocorre com `'disconnect'`, todos os outros eventos que um socket pode emitir para o servidor devem ser tratados dentro do listener que estiver conectando, onde 'socket' está definido.

Envie sua página quando você achar que ela está certa. Se você estiver encontrando erros, pode <a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#handle-a-disconnect-8" target="_blank" rel="noopener noreferrer nofollow">conferir o projeto concluído até este ponto</a>.

# --hints--

O servidor deve tratar do evento de desconexão a partir de um socket.

```js
async (getUserInput) => {
  const url = new URL("/_api/server.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(data, /socket.on.*('|")disconnect('|")/s, '');
}
```

O client deve estar escutando o evento `'user count'`.

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

