---
id: 587d7fb0367417b2b2512bed
title: Conhecer o console do Node
challengeType: 2
forumTopicId: 301515
dashedName: meet-the-node-console
---

# --description--

Working on these challenges will involve you writing your code using one of the following methods:

- Clone <a href="https://github.com/freeCodeCamp/boilerplate-express/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete these challenges locally.
- Use <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-express/" target="_blank" rel="noopener noreferrer nofollow">nosso projeto inicial no Gitpod</a> para completar esses desafios.
- Use um criador de sites de sua escolha para completar o projeto. Certifique-se de incorporar todos os arquivos do nosso repositório no GitHub.

During the development process, it is important to be able to check what’s going on in your code.

Node is just a JavaScript environment. Like client side JavaScript, you can use the console to display useful debug information. On your local machine, you would see console output in a terminal. No Gitpod, um terminal é aberto na parte inferior do editor por padrão.

We recommend to keep the terminal open while working at these challenges. By reading the output in the terminal, you can see any errors that may occur.

O servidor deve ser reiniciado após serem feitas alterações em seus arquivos.

Você pode interromper o servidor pelo terminal usando `ctrl + c` e iniciá-lo usando o Node diretamente (`node mainEntryFile.js`) ou usando um script de execução no arquivo `package.json` com `npm run`.

Por exemplo, o script `"start": "node server.js"` seria executado pelo terminal usando `npm run start`.

Para implementar a reinicialização automática do servidor ao salvar arquivos, o Node fornece a flag `--watch`, que você pode adicionar ao começo do script `"start": "node --watch server.js"` — ou você pode instalar um pacote do npm como o `nodemon`. Deixamos isso para você fazer como exercício.

# --instructions--

Modify the `myApp.js` file to log "Hello World" to the console.

# --hints--

`"Hello World"` should be in the console

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/hello-console').then(
    (data) => {
      assert.isTrue(data.passed, '"Hello World" is not in the server console');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

