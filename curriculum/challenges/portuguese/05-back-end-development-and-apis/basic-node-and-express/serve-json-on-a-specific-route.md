---
id: 587d7fb1367417b2b2512bf1
title: Servir JSON em uma rota específica
challengeType: 2
forumTopicId: 301517
dashedName: serve-json-on-a-specific-route
---

# --description--

While an HTML server serves HTML, an API serves data. A <dfn>REST</dfn> (REpresentational State Transfer) API allows data exchange in a simple way, without the need for clients to know any detail about the server. The client only needs to know where the resource is (the URL), and the action it wants to perform on it (the verb). The GET verb is used when you are fetching some information, without modifying anything. These days, the preferred data format for moving information around the web is JSON. Simply put, JSON is a convenient way to represent a JavaScript object as a string, so it can be easily transmitted.

Vamos criar uma API simples, gerando uma rota que responda com JSON no caminho `/json`. Você pode fazer isso como de costume, com o método `app.get()`. Dentro do manipulador de rota, use o método `res.json()`, passando um objeto como um argumento. Este método fecha o loop de solicitação-resposta, retornando os dados. Nos bastidores, ele converte um objeto JavaScript válido em uma string. Em seguida, define os cabeçalhos apropriados para dizer ao navegador que você está servindo JSON e envia os dados de volta. Um objeto válido tem a estrutura usual `{key: data}`. `data` pode ser um número, uma string, um objeto aninhado ou um array. `data` também podem ser uma variável ou o resultado de uma chamada de função. Nesse caso, ele será avaliado antes de ser convertido em uma string.

# --instructions--

Sirva o objeto `{"message": "Hello json"}` como uma resposta, no formato JSON, para solicitações de GET feitas à rota `/json`. Em seguida, aponte o navegador para `your-app-url/json`. Você deverá ver a mensagem na tela.

# --hints--

O `/json` do endpoint deve servir o objeto JSON `{"message": "Hello json"}`

```js
  $.get(code + '/json').then(
    (data) => {
      assert.equal(
        data.message,
        'Hello json',
        "The '/json' endpoint does not serve the right data"
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

