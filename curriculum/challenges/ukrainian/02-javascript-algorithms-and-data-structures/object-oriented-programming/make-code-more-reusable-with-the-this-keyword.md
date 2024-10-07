---
id: 587d7dad367417b2b2512b76
title: Повторне використання коду з ключовим словом this
challengeType: 1
forumTopicId: 301321
dashedName: make-code-more-reusable-with-the-this-keyword
---

# --description--

The last challenge introduced a method to the `duck` object. It used `duck.name` dot notation to access the value for the `name` property within the return statement:

```js
sayName: function() {return "The name of this duck is " + duck.name + ".";}
```

Це допустимий спосіб отримати доступ до властивості об’єкта, але зі своїми підводними каменями. Якщо зміниться назва змінної, то й будь-які посилання коду до початкової назви необхідно буде також оновити. Це не становить проблеми в короткому визначенні об’єкта, але якщо посилань багато, то шанси на помилку збільшуються.

Уникнути цієї проблеми можна за допомогою ключового слова `this`:

```js
let duck = {
  name: "Aflac",
  numLegs: 2,
  sayName: function() {return "The name of this duck is " + this.name + ".";}
};
```

`this` — доволі широка тема, а наведений вище приклад є лише одним зі способів його використання. У даному контексті `this` посилається на пов’язаний із методом об’єкт `duck`. Якщо ім'я об'єкту зміниться на `mallard`, то необхідності шукати усі посилання до назви `duck` у коді не буде. Це робить код багаторазовим та легшим для читання.

# --instructions--

Змініть метод `dog.sayLegs`, забравши будь-які посилання на `dog`. Використайте приклад `duck` для керівництва.

# --hints--

`dog.sayLegs()` має повернути наданий рядок.

```js
assert(dog.sayLegs() === 'This dog has 4 legs.');
```

Код має використати ключове слово `this`, щоб отримати доступ до властивості `numLegs` об’єкта `dog`.

```js
assert(__helpers.removeJSComments(code).match(/this\.numLegs/g));
```

# --seed--

## --seed-contents--

```js
let dog = {
  name: "Spot",
  numLegs: 4,
  sayLegs: function() {return "This dog has " + dog.numLegs + " legs.";}
};

dog.sayLegs();
```

# --solutions--

```js
let dog = {
  name: "Spot",
  numLegs: 4,
  sayLegs () {
    return 'This dog has ' + this.numLegs + ' legs.';
  }
};

dog.sayLegs();
```
