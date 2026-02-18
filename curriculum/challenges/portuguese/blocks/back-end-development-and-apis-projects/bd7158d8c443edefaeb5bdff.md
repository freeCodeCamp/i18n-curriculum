---
id: bd7158d8c443edefaeb5bdff
title: Microsserviço conversor de requisição de cabeçalho
challengeType: 4
forumTopicId: 301507
dashedName: request-header-parser-microservice
---

# --description--

Construa um aplicativo JavaScript full-stack que seja funcionalmente semelhante a este: <a href="https://request-header-parser-microservice.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://request-header-parser-microservice.freecodecamp.rocks/</a>. Trabalhar neste projeto envolverá você escrevendo seu código usando um dos seguintes métodos:

-   Clone <a href="https://github.com/freeCodeCamp/boilerplate-project-headerparser/" target="_blank" rel="noopener noreferrer nofollow">este repositório do GitHub</a> e complete seu projeto localmente.
-   Use um construtor de sites de sua escolha para completar o projeto. Certifique-se de incorporar todos os arquivos do nosso repositório no GitHub.

# --hints--

Você deve fornecer seu próprio projeto, não o exemplo de URL.

```js
  assert(
    !/.*\/request-header-parser-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Uma solicitação a `/api/whoami` deve retornar um objeto JSON com o seu endereço IP na chave `ipaddress`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.ipaddress && data.ipaddress.length > 0);
```

Uma solicitação a `/api/whoami` deve retornar um objeto JSON com o seu idioma preferido na chave `language`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.language && data.language.length > 0);
```

Uma solicitação a `/api/whoami` deve retornar um objeto JSON com o seu software na chave `software`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.software && data.software.length > 0);
```

