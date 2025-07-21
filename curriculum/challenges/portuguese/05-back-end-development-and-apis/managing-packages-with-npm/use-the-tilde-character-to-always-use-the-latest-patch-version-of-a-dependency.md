---
id: 587d7fb5367417b2b2512c02
title: Usar o til para usar sempre a última versão de patch de uma dependência
challengeType: 2
forumTopicId: 301532
dashedName: use-the-tilde-character-to-always-use-the-latest-patch-version-of-a-dependency
---

# --description--

In the last challenge, you told npm to only include a specific version of a package. That’s a useful way to freeze your dependencies if you need to make sure that different parts of your project stay compatible with each other. But in most use cases, you don’t want to miss bug fixes since they often include important security patches and (hopefully) don’t break things in doing so.

Para permitir que uma dependência do npm atualize para a última versão de PATCH, você pode prefixar a versão da dependência com o caractere de til (`~`). Aqui está um exemplo de como permitir atualizações para qualquer versão `1.3.x`.

```json
"package": "~1.3.8"
```

# --instructions--

No arquivo package.json, a regra atual de como o npm pode atualizar `@freecodecamp/example` é usar uma versão específica (`1.2.13`). Mas agora, você deseja permitir a última versão de `1.2.x`.

Use o til (`~`) para prefixar a versão de `@freecodecamp/example` nas dependências e permitir que o npm atualize o pacote para qualquer nova versão _patch_.

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

A versão de `"@freecodecamp/example"` deve corresponder a `"~1.2.13"`.

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.match(
        data.dependencies['@freecodecamp/example'],
        /^\~1\.2\.13/,
        'Wrong version of "@freecodecamp/example". It should be ~1.2.13'
      );
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
