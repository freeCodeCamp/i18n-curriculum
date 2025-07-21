---
id: 587d7fb5367417b2b2512c03
title: Usar o circunflexo para usar a última versão secundária de uma dependência
challengeType: 2
forumTopicId: 301531
dashedName: use-the-caret-character-to-use-the-latest-minor-version-of-a-dependency
---

# --description--

Similar to how the tilde we learned about in the last challenge allows npm to install the latest PATCH for a dependency, the caret (`^`) allows npm to install future updates as well. The difference is that the caret will allow both MINOR updates and PATCHes.

Sua versão atual de `@freecodecamp/example` deve ser `~1.2.13`, o que permitirá que o npm instale a versão `1.2.x` mais recente. Se você usasse o circunflexo (^) como um prefixo de versão, o npm teria permissão para atualizar para qualquer versão `1.x.x`.

```json
"package": "^1.3.8"
```

Isso permitiria atualizações para qualquer versão `1.x.x` do pacote.

# --instructions--

Use o circunflexo (`^`) para prefixar a versão de `@freecodecamp/example` em suas dependências e permitir que o npm atualize para qualquer versão MINOR.

**Observação:** os números da versão em si não devem ser alterados.

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

A versão de `"@freecodecamp/example"` deve corresponder a `"^1.x.x"`.

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.match(
        data.dependencies['@freecodecamp/example'],
        /^\^1\./,
        'Wrong version of "@freecodecamp/example". It should be ^1.2.13'
      );
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
