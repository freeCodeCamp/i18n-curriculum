---
id: 587d7fb1367417b2b2512bf2
title: Usar o arquivo .env
challengeType: 2
forumTopicId: 301521
dashedName: use-the--env-file
---

# --description--

The `.env` file is a hidden file that is used to pass environment variables to your application. This file is secret, no one but you can access it, and it can be used to store data that you want to keep private or hidden. For example, you can store API keys from external services or your database URI. Você também pode usar para armazenar opções de configurações. By setting configuration options, you can change the behavior of your application, without the need to rewrite some code.

As variáveis de ambiente podem ser acessadas pelo aplicativo usando `process.env.VAR_NAME`. O objeto `process.env` é um objeto global do Node e suas variáveis são passadas como strings. Por convenção, os nomes de variáveis ficam todos em letras maiúsculas, com palavras separadas por um sublinhado. O `.env` é um arquivo shell. Assim, você não precisa encapsular nomes ou valores entre aspas. Também é importante notar que não pode haver espaço em torno do sinal de igual quando você estiver atribuindo valores às suas variáveis, como, por exemplo, `VAR_NAME=value`. Normalmente, você colocará cada definição de variável em uma linha separada.

# --instructions--

Vamos adicionar uma variável de ambiente como uma opção de configuração.

Crie um arquivo `.env` na raiz do diretório do seu projeto e armazene a variável `MESSAGE_STYLE=uppercase` nele.

Depois, no manipulador da rota GET `/json` que você criou no último desafio, acesse `process.env.MESSAGE_STYLE` e transforme a `message` do objeto de resposta em letras maiúsculas se a variável for igual a `uppercase`. O objeto de resposta deve ser `{"message": "Hello json"}` ou `{"message": "HELLO JSON"}`, dependendo do valor de `MESSAGE_STYLE`. Observe que você deve ler o valor de `process.env.MESSAGE_STYLE` **dentro** do manipulador de rota, não fora dela, devido ao modo como nossos testes são executados.

Você precisará usar o pacote `dotenv`. It loads environment variables from your `.env` file into `process.env`. The `dotenv` package has already been installed, and is in your project's `package.json` file. At the top of your `myApp.js` file, add `require('dotenv').config()` to load the environment variables.

# --hints--

A resposta do endpoint `/json` deve ser alterada de acordo com a variável de ambiente `MESSAGE_STYLE`

```js
  $.get(code + '/_api/use-env-vars').then(
    (data) => {
      assert.isTrue(
        data.passed,
        'The response of "/json" does not change according to MESSAGE_STYLE'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

