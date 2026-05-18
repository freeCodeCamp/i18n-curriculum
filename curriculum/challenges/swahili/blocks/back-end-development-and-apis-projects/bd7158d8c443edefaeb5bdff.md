---
id: bd7158d8c443edefaeb5bdff
title: Microservice ya Kuchambua Kichwa cha Ombi
challengeType: 4
forumTopicId: 301507
dashedName: request-header-parser-microservice
---

# --description--

Jenga programu ya JavaScript ya full-stack ambayo inaendana kiutendaji na hii: <a href="https://request-header-parser-microservice.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://request-header-parser-microservice.freecodecamp.rocks/</a>. Kufanya kazi kwenye mradi huu kutahusisha kuandika msimbo wako ukitumia mojawapo ya njia zifuatazo:

-   Nakili <a href="https://github.com/freeCodeCamp/boilerplate-project-headerparser/" target="_blank" rel="noopener noreferrer nofollow">hii repo ya GitHub</a> na ukamilishe mradi wako kwa ndani.
-   Tumia mtengenezaji wa tovuti unayempenda kukamilisha mradi. Hakikisha umejumuisha mafaili yote kutoka kwenye repo yetu ya GitHub.

# --hints--

Unapaswa kutoa mradi wako mwenyewe, si URL ya mfano.

```js
  assert(
    !/.*\/request-header-parser-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Ombi kwa `/api/whoami` linapaswa kurudisha kitu cha JSON chenye anwani yako ya IP katika ufunguo wa `ipaddress`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.ipaddress && data.ipaddress.length > 0);
```

Ombi kwa `/api/whoami` linapaswa kurudisha kitu cha JSON chenye lugha unayopendelea katika ufunguo wa `language`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.language && data.language.length > 0);
```

Ombi kwa `/api/whoami` linapaswa kurudisha kitu cha JSON chenye programu yako katika ufunguo wa `software`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.software && data.software.length > 0);
```
