---
id: 587d7fb5367417b2b2512c04
title: Remover um pacote de suas dependências
challengeType: 2
forumTopicId: 301530
dashedName: remove-a-package-from-your-dependencies
---

# --description--

You have now tested a few ways you can manage dependencies of your project by using the package.json's dependencies section. You have also included external packages by adding them to the file and even told npm what types of versions you want, by using special characters such as the tilde or the caret.

Mas e se você quisesse remover um pacote externo do qual você não precisa mais? Você já deve ter adivinhado: apenas remova o par chave-valor correspondente a esse pacote das dependências.

Este mesmo método também se aplica à remoção de outros campos no seu package.json.

# --instructions--

Remova o pacote `@freecodecamp/example` das dependências.

**Observação:** certifique-se de que você tem a quantidade certa de vírgulas depois de removê-lo.

# --hints--

`"dependencies"` não deve incluir `"@freecodecamp/example"`.

```js
  $.get(code + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.notProperty(
        packJson.dependencies,
        '@freecodecamp/example',
        '"dependencies" still includes "@freecodecamp/example"'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

