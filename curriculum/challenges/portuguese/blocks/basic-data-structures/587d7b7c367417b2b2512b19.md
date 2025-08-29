---
id: 587d7b7c367417b2b2512b19
title: Modificar um objeto aninhado dentro de um objeto
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

`nestedObject` possui três propriedades: `id` (o valor é um número), `date` (o valor é uma string) e `data`(o valor é um objeto com sua estrutura aninhada). Enquanto estruturas podem se tornar rapidamente complexas, nós ainda podemos usar as mesmas notações para acessar as informações que precisamos. Para atribuir o valor `10` para a propriedade `busy` do objeto aninhado `onlineStatus`, nós usamos a notação de ponto para referenciar a propriedade:

```js
nestedObject.data.onlineStatus.busy = 10;
```

# --instructions--

Aqui nós definimos um objeto `userActivity`, o qual inclui outro objeto aninhado dentro dele. Defina o valor da chave `online` para `45`.

# --hints--

`userActivity` deve ter as propriedades `id`, `date` e `data`.

```js
assert(
  'id' in userActivity && 'date' in userActivity && 'data' in userActivity
);
```

`userActivity` deve ter uma chave `data` definida para um objeto com as chaves `totalUsers` e `online`.

```js
assert('totalUsers' in userActivity.data && 'online' in userActivity.data);
```

A propriedade `online` aninhada na chave `data` de `userActivity` deve ser definida para `45`

```js
assert(userActivity.data.online === 45);
```

A propriedade `online` deve ser definindo usando a notação de ponto ou de colchetes.

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
