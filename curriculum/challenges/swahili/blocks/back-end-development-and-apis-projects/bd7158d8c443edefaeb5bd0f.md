---
id: bd7158d8c443edefaeb5bd0f
title: Huduma ndogo ya metadata ya faili
challengeType: 4
forumTopicId: 301506
dashedName: file-metadata-microservice
---

# --description--

Jenga programu kamili ya JavaScript inayofanya kazi kwa njia inayofanana na hii: <a href="https://file-metadata-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://file-metadata-microservice.freecodecamp.rocks</a>. Kufanya kazi kwenye mradi huu kutahusisha kuandika msimbo wako kwa kutumia mojawapo ya njia zifuatazo:

-   Nakili <a href="https://github.com/freeCodeCamp/boilerplate-project-filemetadata/" target="_blank" rel="noopener noreferrer nofollow">hii repo ya GitHub</a> na ukamilishe mradi wako kwa ndani.
-   Tumia mtengenezaji wa tovuti unayempenda kukamilisha mradi. Hakikisha unajumuisha mafaili yote kutoka kwenye repo yetu ya GitHub.

# --instructions--

**KUNYONYESHA:** Unaweza kutumia kifurushi cha npm cha `multer` kushughulikia upakiaji wa faili.

# --hints--

Unapaswa kutoa mradi wako mwenyewe, si URL ya mfano.

```js
  assert(
    !/.*\/file-metadata-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Unaweza wasilisha fomu inayojumuisha upakiaji wa faili.

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[type="file"]'));
```

Sehemu ya ingizo ya faili kwenye fomu ina sifa ya kipengele ya `name` iliyowekwa kuwa `upfile`.

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[name="upfile"]'));
```

Unapowasilisha faili, unapata metadata ya faili `name`, `type`, na `size` kwa baiti ndani ya jibu la JSON.

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

