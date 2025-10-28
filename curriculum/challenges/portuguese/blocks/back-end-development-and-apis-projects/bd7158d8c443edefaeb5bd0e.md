---
id: bd7158d8c443edefaeb5bd0e
title: Microsserviço redutor de URL
challengeType: 4
forumTopicId: 301509
dashedName: url-shortener-microservice
---

# --description--

Construa um aplicativo JavaScript full stack que seja funcionalmente semelhante a este: <a href="https://url-shortener-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://url-shortener-microservice.freecodecamp.rocks</a>.Trabalhar nesse projeto vai fazer com que você escreva o código usando um dos seguintes métodos:

-   Clone <a href="https://github.com/freeCodeCamp/boilerplate-project-urlshortener/" target="_blank" rel="noopener noreferrer nofollow">este repositório do GitHub</a> e complete seu projeto localmente.
-   Use um construtor de sites de sua escolha para completar o projeto. Certifique-se de incorporar todos os arquivos do nosso repositório no GitHub.

# --instructions--

**DICA:** Não esqueça de usar um middleware de análise de corpo para lidar com as requisições POST.Você também pode usar a função `dns.lookup(host, cb)` do módulo central do `dns` para verificar um URL enviado.

# --hints--

Você deve fornecer seu próprio projeto, não o exemplo de URL.

```js
  assert(
    !/.*\/url-shortener-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Você pode postar um URL para `/api/shorturl` e obter uma resposta em JSON com as propriedades `original_url` e `short_url`.Aqui está um exemplo: `{ original_url : 'https://freeCodeCamp.org', short_url : 1}`

```js
  const url = code;
  const urlVariable = Date.now();
  const fullUrl = `${url}/?v=${urlVariable}`
  const res = await fetch(url + '/api/shorturl', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: `url=${fullUrl}`
  });
  if (res.ok) {
    const { short_url, original_url } = await res.json();
    assert.isNotNull(short_url);
    assert.strictEqual(original_url, `${url}/?v=${urlVariable}`);
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
```

Quando você visitar `/api/shorturl/<short_url>`, será redirecionado para a URL original.

```js
  const url = code;
  const urlVariable = Date.now();
  const fullUrl = `${url}/?v=${urlVariable}`
  let shortenedUrlVariable;
  const postResponse = await fetch(url + '/api/shorturl', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: `url=${fullUrl}`
  });
  if (postResponse.ok) {
    const { short_url } = await postResponse.json();
    shortenedUrlVariable = short_url;
  } else {
    throw new Error(`${postResponse.status} ${postResponse.statusText}`);
  }
  const getResponse = await fetch(
    url + '/api/shorturl/' + shortenedUrlVariable
  );
  if (getResponse) {
    const { redirected, url } = getResponse;
    assert.isTrue(redirected);
    assert.strictEqual(url,fullUrl);
  } else {
    throw new Error(`${getResponse.status} ${getResponse.statusText}`);
  }
```

Se você passar um URL inválido que não siga o formato válido `http://www.example.com`, a resposta em JSON conterá `{ error: 'invalid url' }`

```js
  const url = code;
  const res = await fetch(url + '/api/shorturl', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: `url=ftp:/john-doe.invalidTLD`
  });
  if (res.ok) {
    const { error } = await res.json();
    assert.isNotNull(error);
    assert.strictEqual(error.toLowerCase(), 'invalid url');
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
```

