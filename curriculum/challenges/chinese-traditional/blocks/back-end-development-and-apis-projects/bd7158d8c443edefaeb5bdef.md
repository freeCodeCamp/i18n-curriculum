---
id: bd7158d8c443edefaeb5bdef
title: 時間戳記微服務
challengeType: 4
forumTopicId: 301508
dashedName: timestamp-microservice
---

# --description--

建置一個功能上類似於此的全端 JavaScript 應用程式：<a href="https://timestamp-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://timestamp-microservice.freecodecamp.rocks</a>。進行此專案將涉及你使用以下其中一種方法撰寫你的程式碼：

-   複製<a href="https://github.com/freeCodeCamp/boilerplate-project-timestamp/"  target="_blank" rel="noopener noreferrer nofollow">這個 GitHub 倉庫</a>並在區域完成你的專案。
-   使用你選擇的網站建置工具來完成專案。務必將我們 GitHub 倉庫中的所有檔案納入其中。

**注意：** 時區轉換不是此專案的目的，因此假設所有傳送的有效日期都會以 GMT 日期使用 `new Date()` 進行解析。 

# --hints--

你應該提供你自己的專案，而不是範例 URL。

```js
  assert(
    !/.*\/timestamp-microservice\.freecodecamp\.rocks/.test(code)
  );
```

對 `/api/:date?` 的請求，如果日期有效，應該傳回一個 JSON 物件，該物件包含一個 `unix` 鍵，其值為輸入日期的 Unix 時間戳（以毫秒為單位，型別為 Number）。

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

對 `/api/:date?` 的請求，如果日期有效，應該傳回一個 JSON 物件，該物件包含一個 `utc` 鍵，其值為輸入日期的字串，格式為：`Thu, 01 Jan 1970 00:00:00 GMT`

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

對 `/api/1451001600000` 的請求應該傳回 `{ unix: 1451001600000, utc: "Fri, 25 Dec 2015 00:00:00 GMT" }`

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

你的專案可以控制代碼處理能被 `new Date(date_string)` 成功解析的日期。

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

如果輸入的日期字串無效，API 將傳回具有結構 `{ error : "Invalid Date" }` 的物件。

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

空的日期參數應該傳回一個包含 `unix` 鍵的 JSON 物件中的當前時間

```js
  const response = await fetch(code + '/api');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  var now = Date.now();
  assert.approximately(data.unix, now, 20000);
```

空的日期參數應該傳回一個帶有 `utc` 鍵的 JSON 物件中的當前時間

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

