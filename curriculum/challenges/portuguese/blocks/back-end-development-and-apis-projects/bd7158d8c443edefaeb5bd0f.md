---
id: bd7158d8c443edefaeb5bd0f
title: Microsserviço de metadados de arquivos
challengeType: 4
forumTopicId: 301506
dashedName: file-metadata-microservice
---

# --description--

Construa um aplicativo JavaScript full-stack que seja funcionalmente semelhante a este: <a href="https://file-metadata-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://file-metadata-microservice.freecodecamp.rocks</a>. Trabalhar neste projeto envolverá você escrever seu código usando um dos seguintes métodos:

-   Clone <a href="https://github.com/freeCodeCamp/boilerplate-project-filemetadata/" target="_blank" rel="noopener noreferrer nofollow">este repositório do GitHub</a> e complete seu projeto localmente.
-   Use um construtor de sites de sua escolha para completar o projeto. Certifique-se de incorporar todos os arquivos do nosso repositório no GitHub.

# --instructions--

**DICA:** Você pode usar o pacote npm `multer` para gerenciar o upload de arquivos.

# --hints--

Você deve fornecer seu próprio projeto, não o exemplo de URL.

```js
  assert(
    !/.*\/file-metadata-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Você pode enviar um formulário que inclua o upload de arquivos.

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[type="file"]'));
```

O campo entrada do arquivo de formulário tem o atributo `name` definido como `upfile`.

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[name="upfile"]'));
```

Ao enviar um arquivo, você recebe `name` (nome), `type` (tipo) e `size` (tamanho, em bytes) do arquivo dentro da resposta em JSON.

```js
  const boundary = 'fccBoundary1234567890';
  const head =
    `--${boundary}\r\n` +
    'Content-Disposition: form-data; name="upfile"; filename="icon"\r\n' +
    'Content-Type: image/png\r\n\r\n';
  const body = new Blob([head, new Uint8Array(70), `\r\n--${boundary}--\r\n`]);
  const data = await fetch(code + '/api/fileanalyse', {
    method: 'POST',
    headers: {
      'Content-Type': `multipart/form-data; boundary=${boundary}`
    },
    body
  });
  const parsed = await data.json();
  assert.property(parsed, 'size');
  assert.equal(parsed.name, 'icon');
  assert.equal(parsed.type, 'image/png');
```

