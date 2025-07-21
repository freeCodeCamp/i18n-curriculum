---
id: 587d7fb3367417b2b2512bfb
title: 'Utilizar o package.json, o centro de qualquer projeto do Node.js ou pacote npm'
challengeType: 2
forumTopicId: 301528
dashedName: how-to-use-package-json-the-core-of-any-node-js-project-or-npm-package
---

# --description--

Working on these challenges will involve you writing your code using one of the following methods:

- Clone <a href="https://github.com/freeCodeCamp/boilerplate-npm/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete these challenges locally.
- Use um criador de sites de sua escolha para completar o projeto. Certifique-se de incorporar todos os arquivos do nosso repositório no GitHub.

The `package.json` file is the center of any Node.js project or npm package. Ele armazena informações sobre o seu projeto. It consists of a single JSON object where information is stored in key-value pairs. Os dois únicos campos obrigatórios são `name` e `version`, mas é uma boa prática fornecer informações adicionais.

Você pode criar o arquivo `package.json` no terminal usando o comando `npm init`. Isso executará um assistente de instalação. Usar `npm init` com a flag `-y` gera o arquivo sem fazer qualquer pergunta; `npm init -y`.

If you look at the file tree of your project, you will find the `package.json` file on the top level of the tree. Este é o arquivo que você vai melhorar nos próximos desafios.

Uma das informações mais comuns neste arquivo é o campo `author`. Especifica quem criou o projeto e pode consistir em uma string ou um objeto com detalhes de contato ou outros. Um objeto é recomendado para projetos maiores, mas uma string simples como o exemplo a seguir já servirá para este projeto.

```json
"author": "Jane Doe",
```

# --instructions--

Add your name as the `author` of the project in the `package.json` file.

**Observação:** lembre-se de que você está escrevendo JSON. Então, todos os nomes de campos devem usar aspas duplas (") e ser separados por uma vírgula (,).

# --hints--

O `package.json` deve ter uma chave "author" válida

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.exists(data.author, '"author" is missing');
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
