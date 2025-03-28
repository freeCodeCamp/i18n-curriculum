---
id: 589a8eb3f9fc0f352b528e72
title: 實現第三種社交登錄
challengeType: 2
forumTopicId: 301558
dashedName: implementation-of-social-authentication-iii
---

# --description--

The final part of the strategy is handling the profile returned from GitHub. We need to load the user's database object if it exists, or create one if it doesn't, and populate the fields from the profile, then return the user's object. GitHub supplies us a unique *id* within each profile which we can use to search with to serialize the user with (already implemented). Below is an example implementation you can use in your project--it goes within the function that is the second argument for the new strategy, right below where `console.log(profile);` currently is:

```js
myDataBase.findOneAndUpdate(
  { id: profile.id },
  {
    $setOnInsert: {
      id: profile.id,
      username: profile.username,
      name: profile.displayName || 'John Doe',
      photo: profile.photos[0].value || '',
      email: Array.isArray(profile.emails)
        ? profile.emails[0].value
        : 'No public email',
      created_on: new Date(),
      provider: profile.provider || ''
    },
    $set: {
      last_login: new Date()
    },
    $inc: {
      login_count: 1
    }
  },
  { upsert: true, new: true },
  (err, doc) => {
    return cb(null, doc.value);
  }
);
```

`findOneAndUpdate` 的作用是在數據庫中查詢對象並更新， 如果對象不存在，將插入對象，然後我們可以在回調方法裏獲取到插入的新對象。 在這個例子中，我們會設置 `last_login`，而且總會爲 `login_count` 加 `1`。只有在插入一個新對象（新用戶）時，我們纔會初始化這些字段。 另外，還需要注意默認值的使用。 有時返回的用戶信息可能不全，可能是因爲用戶沒有填寫，也可能是因爲用戶選擇不公開一部分信息。 在這種情況下，我們需要進行相應的處理，以防我們的 app 報錯。

你現在應該可以登錄你的應用了， 試試吧！

完成上述要求後，請提交你的頁面鏈接。 如果你在運行時遇到錯誤，可以<a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#implementation-of-social-authentication-iii-5" target="_blank" rel="noopener noreferrer nofollow">查看已完成的項目</a>。

# --hints--

GitHub 策略應配置完成。

```js
async () => {
  const url = new URL("/_api/auth.js", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /GitHubStrategy[^]*myDataBase/gi,
    'Strategy should use now use the database to search for the user'
  );
  assert.match(
    data,
    /GitHubStrategy[^]*cb/gi,
    'Strategy should return the callback function "cb"'
  );
}
```

