---
id: 587d7fb4367417b2b2512c00
title: Expandir seu projeto com pacotes externos do npm
challengeType: 2
forumTopicId: 301527
dashedName: expand-your-project-with-external-packages-from-npm
---

# --description--

One of the biggest reasons to use a package manager, is their powerful dependency management. Instead of manually having to make sure that you get all dependencies whenever you set up a project on a new computer, npm automatically installs everything for you. But how can npm know exactly what your project needs? Meet the `dependencies` section of your package.json file.

Nesta seção, pacotes de que seu projeto necessita são armazenados usando o seguinte formato:

```json
"dependencies": {
  "package-name": "version",
  "express": "4.14.0"
}

```

# --instructions--

Adicione a versão `1.1.0` do pacote `@freecodecamp/example` ao campo `dependencies` do arquivo `package.json`.

**Observação:** `@freecodecamp/example` é um pacote falso usado como ferramenta de aprendizagem.

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

A versão de `"@freecodecamp/example"` deve ser a `"1.1.0"`.

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.match(
        data.dependencies['@freecodecamp/example'],
        /^[\^\~]?1\.1\.0/,
        'Wrong version of "@freecodecamp/example" installed. It should be 1.1.0'
      );
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
