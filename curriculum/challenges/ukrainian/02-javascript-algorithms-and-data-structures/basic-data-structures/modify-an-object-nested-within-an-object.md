---
id: 587d7b7c367417b2b2512b19
title: Зміна об’єкта, вкладеного в об’єкті
challengeType: 1
forumTopicId: 301164
dashedName: modify-an-object-nested-within-an-object
---

# --description--

Now let's take a look at a slightly more complex object. Object properties can be nested to an arbitrary depth, and their values can be any type of data supported by JavaScript, including arrays and even other objects. Consider the following:

```js
let nestedObject = {
  id: 28802695164,
  date: 'December 31, 2016',
  data: {
    totalUsers: 99,
    online: 80,
    onlineStatus: {
      active: 67,
      away: 13,
      busy: 8
    }
  }
};
```

`nestedObject` має три властивості: `id` (значенням є число), `date` (значенням є рядок) та `data` (значенням є об’єкт з вкладеною структурою). Хоча структури можуть швидко ускладнюватися, все одно можна використовувати ті самі нотації, щоб отримати доступ до необхідної інформації. Щоб призначити значення `10` до властивості `busy`, вкладеної в об’єкт `onlineStatus`, використовується точкова нотація, щоб посилатись на властивість:

```js
nestedObject.data.onlineStatus.busy = 10;
```

# --instructions--

Ми визначили об’єкт `userActivity`, який містить інший вкладений об’єкт. Встановіть значення ключа `online` на `45`.

# --hints--

`userActivity` повинен мати властивості `id`, `date` та `data`.

```js
assert(
  'id' in userActivity && 'date' in userActivity && 'data' in userActivity
);
```

`userActivity` повинен мати ключ `data`, налаштований на об’єкт з ключами `totalUsers` та `online`.

```js
assert('totalUsers' in userActivity.data && 'online' in userActivity.data);
```

Властивість `online`, вкладена в ключі `data` об’єкта `userActivity`, повинна мати значення `45`

```js
assert(userActivity.data.online === 45);
```

Налаштуйте властивість `online` за допомогою точкової або дужкової нотації.

```js
assert.strictEqual(__helpers.removeJSComments(code).search(/online: 45/), -1);
```

# --seed--

## --seed-contents--

```js
let userActivity = {
  id: 23894201352,
  date: 'January 1, 2017',
  data: {
    totalUsers: 51,
    online: 42
  }
};

// Only change code below this line

// Only change code above this line

console.log(userActivity);
```

# --solutions--

```js
let userActivity = {
  id: 23894201352,
  date: 'January 1, 2017',
  data: {
    totalUsers: 51,
    online: 42
  }
};

userActivity.data.online = 45;
```
