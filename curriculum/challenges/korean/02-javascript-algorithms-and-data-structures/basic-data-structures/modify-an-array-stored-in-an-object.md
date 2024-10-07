---
id: 587d7b7d367417b2b2512b1f
title: 객체에 담겨있는 배열 수정하기
challengeType: 1
forumTopicId: 301163
dashedName: modify-an-array-stored-in-an-object
---

# --description--

Now you've seen all the basic operations for JavaScript objects. You can add, modify, and remove key-value pairs, check if keys exist, and iterate over all the keys in an object. As you continue learning JavaScript you will see even more versatile applications of objects. Additionally, the Data Structures lessons located in the Coding Interview Prep section of the curriculum also cover the ES6 <dfn>Map</dfn> and <dfn>Set</dfn> objects, both of which are similar to ordinary objects but provide some additional features. Now that you've learned the basics of arrays and objects, you're fully prepared to begin tackling more complex problems using JavaScript!

# --instructions--

코드 에디터에 주어진 객체를 살펴보세요. `user` 객체는 3가지 키를 포함합니다. `data` 키는 5개의 키를 가진 객체를 값으로 갖고 있으며, 그 키 중 하나는 `friends` 라고 불리며 배열을 값으로 가집니다. 이를 통해 여러분은 객체가 얼마나 유연한 데이터 구조인지 알 수 있습니다. 우리는 `addFriend`라는 함수를 작성하기 시작했습니다. 이 함수를 완성해주세요. 이 함수는 `user` 객체와 `friend`의 이름을 인자로 받고, 인자로 받은 이름을 `user.data.friends` 배열에 추가하고, 이 배열을 반환합니다.

# --hints--

`user` 객체는 `name`, `age`, `data` 라는 키를 포함해야 합니다.

```js
assert('name' in user && 'age' in user && 'data' in user);
```

`addFriend` 함수는 `user` 객체와 `friend` 문자열을 인자로 받고, friend를 `user` 객체 안의 `friends` 배열에 추가해야 합니다.

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

`addFriend(user, "Pete")`를 실행하면 `["Sam", "Kira", "Tomo", "Pete"]`을 반환해야 합니다.

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
