---
id: 587d7fb0367417b2b2512bee
title: Iniciar um servidor de Express funcional
challengeType: 2
forumTopicId: 301519
dashedName: start-a-working-express-server
---

# --description--

In the first two lines of the file `myApp.js`, you can see how easy it is to create an Express app object. This object has several methods, and you will learn many of them in these challenges. One fundamental method is `app.listen(port)`. It tells your server to listen on a given port, putting it in running state. For testing reasons, we need the app to be running in the background so we added this method in the `server.js` file for you.

Vamos servir nossa primeira string! No Express, as rotas têm a seguinte estrutura: `app.METHOD(PATH, HANDLER)`. METHOD é um método http em letras minúsculas. PATH é um caminho relativo no servidor (pode ser uma string ou até mesmo uma expressão regular). HANDLER é uma função que o Express chama quando a rota tem correspondência. Os manipuladores têm o formato `function(req, res) {...}`, onde req é o objeto solicitado, e res é o objeto de resposta. Por exemplo, o manipulador

```js
function(req, res) {
  res.send('Response String');
}
```

servirá a string 'Response String'.

# --instructions--

Use o método `app.get()` para servir a string "Hello Express" para solicitações de GET que correspondam ao caminho `/` (root). Certifique-se de que seu código funciona olhando os logs e, em seguida, veja os resultados na pré-visualização se estiver usando o Gitpod.

**Observação:** todo o código para estas lições deve ser adicionado entre as poucas linhas de código que fornecemos para você no início.

# --hints--

Seu aplicativo deve servir a string 'Hello Express'

```js
  $.get(code).then(
    (data) => {
      assert.equal(
        data,
        'Hello Express',
        'Your app does not serve the text "Hello Express"'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

