---
id: 587d7fb5367417b2b2512c01
title: Gerenciar dependências do npm entendendo o versionamento semântico
challengeType: 2
forumTopicId: 301529
dashedName: manage-npm-dependencies-by-understanding-semantic-versioning
---

# --description--

`Versions` of the npm packages in the dependencies section of your package.json file follow what’s called Semantic Versioning (SemVer), an industry standard for software versioning aiming to make it easier to manage dependencies. Libraries, frameworks or other tools published on npm should use SemVer in order to clearly communicate what kind of changes projects can expect if they update.

Conhecer o SemVer pode ser útil quando você desenvolve um software que usa dependências externas (algo que você faz quase sempre). Um dia, seu entendimento desses números vai evitar que você introduza acidentalmente alterações que causem problemas em seu projeto, sem compreender por que as coisas que funcionaram ontem, de repente, não funcionam hoje. É assim que o Versionamento Semântico funciona de acordo com o site oficial:

```json
"package": "MAJOR.MINOR.PATCH"
```

A versão MAJOR (principal) deve incrementar quando você fizer alterações incompatíveis na API. A versão MINOR (secundária) deve incrementar quando adicionar funcionalidades retrocompatíveis. A versão PATCH deve incrementar quando você fizer consertos de bugs retrocompatíveis. Isso significa que PATCHes são correções de bugs e MINORs adicionam novas funcionalidades, mas nenhum deles quebra o que funcionava antes. Por fim, as MAJORs adicionam alterações que não funcionarão com versões anteriores.

# --instructions--

Na seção de dependências do arquivo `package.json`, altere a versão de `@freecodecamp/example` para que corresponda à versão MAJOR 1, à versão MINOR 2 e à versão PATCH 13

# --hints--

`"dependencies"` deve incluir `"@freecodecamp/example"`.

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.property(
        data.dependencies,
        '@freecodecamp/example',
        '"dependencies" does not include "@freecodecamp/example"'
      );
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```

A versão de `"@freecodecamp/example"` deve ser a `"1.2.13"`.

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.equal(
        data.dependencies['@freecodecamp/example'],
        '1.2.13',
        'Wrong version of "@freecodecamp/example". It should be 1.2.13'
      );
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
