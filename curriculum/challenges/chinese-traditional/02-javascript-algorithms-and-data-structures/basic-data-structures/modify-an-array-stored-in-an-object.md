---
id: 587d7b7d367417b2b2512b1f
title: 修改存儲在對象中的數組
challengeType: 1
forumTopicId: 301163
dashedName: modify-an-array-stored-in-an-object
---

# --description--

Now you've seen all the basic operations for JavaScript objects. You can add, modify, and remove key-value pairs, check if keys exist, and iterate over all the keys in an object. As you continue learning JavaScript you will see even more versatile applications of objects. Additionally, the Data Structures lessons located in the Coding Interview Prep section of the curriculum also cover the ES6 <dfn>Map</dfn> and <dfn>Set</dfn> objects, both of which are similar to ordinary objects but provide some additional features. Now that you've learned the basics of arrays and objects, you're fully prepared to begin tackling more complex problems using JavaScript!

# --instructions--

請看一下代碼編輯器中我們爲你寫好的對象。 `user` 對象包含 3 個屬性； `data` 對象包含 5 個屬性，其中包含一個叫做 `friends` 的數組。 這就是對象作爲數據結構所展現出的靈活性。 我們已經寫好了 `addFriend` 函數的一部分， 請你完成這個函數，使其接受一個 `user` 對象，將 `friend` 參數中的名字添加到 `user.data.friends` 數組中並返回該數組。

# --hints--

`user` 對象應該包含 `name`、`age` 和 `data` 三個屬性。

```js
assert('name' in user && 'age' in user && 'data' in user);
```

`addFriend` 函數應該接受一個 `user` 對象和一個 `friend` 字符串作爲輸入參數，並將這個字符串插入到 `user` 對象的 `friends` 數組中。

```js
assert(
  (function () {
    let L1 = user.data.friends.length;
    addFriend(user, 'Sean');
    let L2 = user.data.friends.length;
    return L2 === L1 + 1;
  })()
);
```

`addFriend(user, "Pete")` 應該返回 `["Sam", "Kira", "Tomo", "Pete"]`。

```js
assert.deepEqual(
  (function () {
    delete user.data.friends;
    user.data.friends = ['Sam', 'Kira', 'Tomo'];
    return addFriend(user, 'Pete');
  })(),
  ['Sam', 'Kira', 'Tomo', 'Pete']
);
```

# --seed--

## --seed-contents--

```js
let user = {
  name: 'Kenneth',
  age: 28,
  data: {
    username: 'kennethCodesAllDay',
    joinDate: 'March 26, 2016',
    organization: 'freeCodeCamp',
    friends: [
      'Sam',
      'Kira',
      'Tomo'
    ],
    location: {
      city: 'San Francisco',
      state: 'CA',
      country: 'USA'
    }
  }
};

function addFriend(userObj, friend) {
  // Only change code below this line

  // Only change code above this line
}

console.log(addFriend(user, 'Pete'));
```

# --solutions--

```js
let user = {
  name: 'Kenneth',
  age: 28,
  data: {
    username: 'kennethCodesAllDay',
    joinDate: 'March 26, 2016',
    organization: 'freeCodeCamp',
    friends: [
      'Sam',
      'Kira',
      'Tomo'
    ],
    location: {
      city: 'San Francisco',
      state: 'CA',
      country: 'USA'
    }
  }
};

function addFriend(userObj, friend) {
  userObj.data.friends.push(friend);
  return userObj.data.friends;
}
```
