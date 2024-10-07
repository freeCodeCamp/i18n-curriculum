---
id: 587d7b7d367417b2b2512b1f
title: オブジェクトに格納されている配列の変更
challengeType: 1
forumTopicId: 301163
dashedName: modify-an-array-stored-in-an-object
---

# --description--

Now you've seen all the basic operations for JavaScript objects. You can add, modify, and remove key-value pairs, check if keys exist, and iterate over all the keys in an object. As you continue learning JavaScript you will see even more versatile applications of objects. Additionally, the Data Structures lessons located in the Coding Interview Prep section of the curriculum also cover the ES6 <dfn>Map</dfn> and <dfn>Set</dfn> objects, both of which are similar to ordinary objects but provide some additional features. Now that you've learned the basics of arrays and objects, you're fully prepared to begin tackling more complex problems using JavaScript!

# --instructions--

コードエディターに用意されているオブジェクトをご覧ください。 この `user` オブジェクトには 3 つのキーが含まれています。 `data` キーには 5 つのキーが含まれており、そのうちの 1 つには `friends` の配列が含まれています。 このことから、オブジェクトがデータ構造として非常に柔軟であることがわかります。 関数 `addFriend` の記述が一部できていますが、 この記述を完成させて、関数が `user` オブジェクトを受け取り、`friend` 引数の名前を `user.data.friends`に格納されている配列に追加して、その配列を返すようにしてください。

# --hints--

`user` オブジェクトに `name`、`age`、`data` のキーが存在する必要があります。

```js
assert('name' in user && 'age' in user && 'data' in user);
```

`addFriend` 関数は、`user` オブジェクトと `friend` 文字列を引数として取り、`user` オブジェクト内の `friends` の配列に friend を追加する必要があります。

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

`addFriend(user, "Pete")` は `["Sam", "Kira", "Tomo", "Pete"]` を返す必要があります。

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
