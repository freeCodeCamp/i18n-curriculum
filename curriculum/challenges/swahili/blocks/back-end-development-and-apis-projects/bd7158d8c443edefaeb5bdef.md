---
id: bd7158d8c443edefaeb5bdef
title: Huduma ndogo ya alama ya wakati
challengeType: 4
forumTopicId: 301508
dashedName: timestamp-microservice
---

# --description--

Jenga programu ya JavaScript ya full-stack ambayo inaendana kiutendaji na hii: <a href="https://timestamp-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://timestamp-microservice.freecodecamp.rocks</a>. Kufanya kazi kwenye mradi huu kutahusisha kuandika msimbo wako ukitumia mojawapo ya njia zifuatazo:

-   Nakili <a href="https://github.com/freeCodeCamp/boilerplate-project-timestamp/"  target="_blank" rel="noopener noreferrer nofollow">hii repo ya GitHub</a> na ukamilishe mradi wako kwa ndani ya kompyuta yako.
-   Tumia mtengenezaji wa tovuti unayempenda kukamilisha mradi. Hakikisha unajumuisha mafaili yote kutoka kwenye repo yetu ya GitHub.

**Kumbuka:** Kubadilisha maeneo ya saa si lengo la mradi huu, hivyo chukulia tarehe zote halali zitakazotumwa zitachambuliwa kwa `new Date()` kama tarehe za GMT.

# --hints--

Unapaswa kutoa mradi wako mwenyewe, si URL ya mfano.

```js
  assert(
    !/.*\/timestamp-microservice\.freecodecamp\.rocks/.test(code)
  );
```

Ombi kwa `/api/:date?` lenye tarehe halali linapaswa kurudisha kitu cha JSON chenye ufunguo wa `unix` ambacho ni alama ya Unix ya tarehe ya ingizo kwa millisekunde (aina Number)

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

Ombi kwa `/api/:date?` lenye tarehe halali linapaswa kurudisha kitu cha JSON chenye ufunguo wa `utc` ambao ni mfuatano wa herufi wa tarehe ya ingizo kwa muundo: `Thu, 01 Jan 1970 00:00:00 GMT`

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

Ombi kwa `/api/1451001600000` linapaswa kurudisha `{ unix: 1451001600000, utc: "Fri, 25 Dec 2015 00:00:00 GMT" }`

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

Mradi wako unaweza kushughulikia tarehe zinazoweza kuchambuliwa kwa mafanikio na `new Date(date_string)`

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

Kama mfuatano wa herufi wa tarehe ni batili, API inarudisha kitu chenye muundo wa `{ error : "Invalid Date" }`

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

Kigezo cha tarehe kisicho na maudhui kinapaswa kurudisha wakati wa sasa katika kitu cha JSON chenye ufunguo wa `unix`

```js
  const response = await fetch(code + '/api');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  var now = Date.now();
  assert.approximately(data.unix, now, 20000);
```

Kigezo cha tarehe kisicho na maudhui kinapaswa kurudisha wakati wa sasa katika kitu cha JSON chenye ufunguo wa `utc`

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
