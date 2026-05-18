---
id: bd7158d8c443edefaeb5bd0e
title: Huduma ndogo ya kufupisha URL
challengeType: 4
forumTopicId: 301509
dashedName: url-shortener-microservice
---

# --description--

Jenga programu ya JavaScript ya upande wa mteja na seva inayofanana kiutendaji na hii: <a href="https://url-shortener-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://url-shortener-microservice.freecodecamp.rocks</a>. Kufanya kazi kwenye mradi huu kutahusisha kuandika msimbo wako kwa kutumia mojawapo ya njia zifuatazo:

-   Nakili <a href="https://github.com/freeCodeCamp/boilerplate-project-urlshortener/" target="_blank" rel="noopener noreferrer nofollow">hii repo ya GitHub</a> na ukamilishe mradi wako kwa ndani ya kompyuta yako.
-   Tumia mtengenezaji wa tovuti unayempenda kukamilisha mradi. Hakikisha unajumuisha mafaili yote kutoka kwenye repo yetu ya GitHub.

# --instructions--

**KUNYONYESHA:** Usisahau kutumia programu ya kati ya kuchambua mwili wa ombi ili kushughulikia maombi ya POST. Pia, unaweza kutumia kitendakazi `dns.lookup(host, cb)` kutoka kwenye moduli kuu ya `dns` kuthibitisha URL iliyowasilishwa.

# --hints--

Unapaswa kutoa mradi wako mwenyewe, si URL ya mfano.

```js
  assert(
    !/.*\/url-shortener-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Unaweza kutuma URL kwa `/api/shorturl` kwa njia ya POST na upate jibu la JSON lenye vigezo `original_url` na `short_url`. Hapa kuna mfano: `{ original_url : 'https://freeCodeCamp.org', short_url : 1}`

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

Unapotembelea `/api/shorturl/<short_url>`, utaelekezwa upya kwa URL halisi.

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
  // Ensure a new URL is reached
  const getResponse = await fetch(
    url + '/api/shorturl/' + shortenedUrlVariable, {redirect:'follow'}
  );
  if (getResponse) {
    const { url } = getResponse; // status is always 200 for some reason
    assert.strictEqual(url,fullUrl);
  } else {
    throw new Error(`${getResponse.status} ${getResponse.statusText}`);
  }

  // No more auto follow
  const getManualResponse = await fetch(
    url + '/api/shorturl/' + shortenedUrlVariable, {redirect:'manual'}
  );
  if (getManualResponse) {
    const { status } = getManualResponse; // if a redirect happens, it won't reach the new resource
    assert.strictEqual(status,0);
  } else {
    throw new Error(`${getManualResponse.status} ${getManualResponse.statusText}`);
  }

```

Ikiwa utapita URL isiyo halali ambayo haifuati muundo halali wa `http://www.example.com`, jibu la JSON litakuwa na `{ error: 'invalid url' }`

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
