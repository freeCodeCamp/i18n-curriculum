---
id: bd7158d8c443edefaeb5bdef
title: Micro-serviço de timestamp
challengeType: 4
forumTopicId: 301508
dashedName: timestamp-microservice
---

# --description--

Construa um aplicativo JavaScript full-stack que seja funcionalmente semelhante a este: <a href="https://timestamp-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://timestamp-microservice.freecodecamp.rocks</a>. Trabalhar neste projeto envolverá você escrevendo seu código usando um dos seguintes métodos:

-   Clone <a href="https://github.com/freeCodeCamp/boilerplate-project-timestamp/"  target="_blank" rel="noopener noreferrer nofollow">este repositório do GitHub</a> e complete seu projeto localmente.
-   Use um construtor de sites de sua escolha para completar o projeto. Certifique-se de incorporar todos os arquivos do nosso repositório no GitHub.

**Nota:** A conversão de fusos horários não é um objetivo deste projeto, portanto, assuma que todas as datas válidas enviadas serão analisadas com `new Date()` como datas GMT. 

# --hints--

Você deve fornecer seu próprio projeto, não o exemplo de URL.

```js
  assert(
    !/.*\/timestamp-microservice\.freecodecamp\.rocks/.test(code)
  );
```

Uma solicitação a `/api/:date?` com uma data válida deve retornar um objeto JSON com uma chave `unix`, que é um timestamp do Unix da data de entrada em milissegundos (com o tipo Number)

```js
  const response = await fetch(code + '/api/2016-12-25');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert.equal(
    data.unix,
    1482624000000,
    'Should be a valid unix timestamp'
  );
```

Uma solicitação a `/api/:date?` com uma data válida deve retornar um objeto JSON com uma chave `utc` que é uma string da data de entrada no formato: `Thu, 01 Jan 1970 00:00:00 GMT`

```js
  const response = await fetch(code + '/api/2016-12-25');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert.equal(
    data.utc,
    'Sun, 25 Dec 2016 00:00:00 GMT',
    'Should be a valid UTC date string'
  );
```

Uma solicitação a `/api/1451001600000` deve retornar `{ unix: 1451001600000, utc: "Fri, 25 Dec 2015 00:00:00 GMT" }`

```js
  const response = await fetch(code + '/api/1451001600000');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(
    data.unix === 1451001600000 &&
      data.utc === 'Fri, 25 Dec 2015 00:00:00 GMT'
  );
```

Seu projeto pode tratar as datas que podem ser analisadas com sucesso por `new Date(date_string)`

```js
  const response = await fetch(code + '/api/05 October 2011, GMT');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(
    data.unix === 1317772800000 &&
      data.utc === 'Wed, 05 Oct 2011 00:00:00 GMT'
  );
```

Se a string de data de entrada for inválida, a API retorna um objeto que tem a estrutura `{ error : "Invalid Date" }`

```js
  const response = await fetch(code + '/api/this-is-not-a-date');
  if (response.ok) {
    const data = await response.json();
    assert.equal(data.error.toLowerCase(), 'invalid date');
  } else {
    const errorData = await response.json();
    assert(errorData.error.toLowerCase() === 'invalid date');
  }
```

Um parâmetro de data vazia deve retornar o tempo atual em um objeto JSON com a chave `unix`

```js
  const response = await fetch(code + '/api');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  var now = Date.now();
  assert.approximately(data.unix, now, 20000);
```

Um parâmetro de data vazia deve retornar o tempo atual em um objeto JSON com a chave `utc`

```js
  const response = await fetch(code + '/api');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  var now = Date.now();
  var serverTime = new Date(data.utc).getTime();
  assert.approximately(serverTime, now, 20000);
```

