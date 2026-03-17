---
id: 695cc8f280fef0cc3bed02ca
title: Що таке модуль path і як він працює?
challengeType: 19
dashedName: what-is-the-path-module-and-how-does-it-work
---

# --description--

Модуль Node.js `path` дозволяє працювати з файлами та шляхами до папок. Він надає кілька корисних методів для обробки та трансформації директорій, включно з об’єднанням, нормалізацією та розв’язанням шляхів на різних платформах і операційних системах.

Щоб використати модуль `path`, ви можете імпортувати його так:

```js
const path = require("path");
```

Розглянемо деякі методи, які надає модуль `path`, і як вони працюють.

Спершу варто знати про глобальні змінні Node.js `__filename` і `__dirname`, також відомі як змінні "common JS". Для доступу до них не потрібен модуль `path`, тому їх і називають глобальними змінними.

`__filename` — це абсолютний шлях до поточного файлу, а `__dirname` — абсолютний шлях до папки, що містить поточний файл.

Наприклад, у мене є `script.js` файл, над яким я зараз працюю. Ось що повертають ці два методи:

```js
console.log(__filename);
// /Users/user/Desktop/fCC/script-code/node/node-path/script.js

console.log(__dirname);
// /Users/user/Desktop/fCC/script-code/node/node-path
```

Також варто розуміти різницю між відносними та абсолютними шляхами.

Відносний шлях вказує на файл або папку відносно вашої поточної робочої директорії. Наприклад, `./assets/src/text-files`.

Абсолютний шлях, навпаки, дає повну адресу файлу або папки від кореня вашої системи, наприклад `/Users/johndoe/projects/app/assets/src/text-files.`.

Метод `basename()` показує останню частину файлу, тобто ім’я файлу:

```js
console.log(path.basename(__filename)); // script.js
```

`dirname()` повертає ім’я директорії шляху:

```js
console.log(path.dirname(__dirname)); // node-path
```

`extname()` повертає розширення поточного файлу:

```js
console.log(path.extname(__filename)); // .js
```

Ви також можете вказати інший файл, щоб отримати його розширення:

```js
console.log(path.extname('text-files/text1.txt')); // .txt
```

Метод `join()` приймає всі сегменти шляху, які ви передаєте, і об’єднує їх в один чистий, нормалізований шлях.

Це може бути корисно, якщо ви хочете об’єднати пов’язані файли в різних папках, щоб працювати з ними разом:

```js
const joinedPath = path.join("src", "assets", "text-files");
console.log(joinedPath); // src/assets/text-files
```

Windows використовує зворотні скісні риски для розділення директорій, тому результат буде `src\assets\text-files`.

Крім того, метод `join()` автоматично виправляє неправильні риски і видаляє зайві:

```js
const wrongPath = path.join("/src//", "assets", "text-files");
console.log(wrongPath); // /src/assets/text-files
```

Метод `resolve()` перетворює послідовність сегментів шляху в абсолютний шлях. Він починається з вашої поточної робочої директорії і дає повний шлях, що вказує на точне розташування на пристрої:

```js
const absolutePath = path.resolve("assets", "src", "text-files");
console.log(absolutePath);
// /Users/user/Desktop/fCC/script-code/node/node-path/assets/src/text-files
```

Різниця між `join()` і `resolve()` у тому, що `join()` створює відносний шлях, а `resolve()` повертає абсолютний шлях.

Нарешті, є методи `parse()` і `format()`.

`parse()` приймає директорію або файл і повертає об’єкт, що містить розбиття його частин, таких як корінь системи, директорія, розширення та ім’я файлу:

```js
const parsedFile = path.parse(__filename);

console.log(parsedFile);
/*
{
 root: '/',
 dir: '/Users/user/Desktop/fCC/script-code/node/node-path',
 base: 'script.js',
 ext: '.js',
 name: 'script'
}
*/
```

`format()`, навпаки, будує шлях з об’єкта, що містить директорію, ім’я та розширення:

```js
const formattedDirectory = path.format({
  dir: "/users/johndoe/docs",
  name: "file",
  ext: ".txt",
});

console.log(formattedDirectory); // /users/johndoe/docs/file.txt
```

# --questions--

## --text--

У чому різниця між `path.dirname()` і `path.extname()` у Node.js?

## --answers--

`dirname()` видаляє розширення файлу, а `extname()` видаляє ім’я директорії.

### --feedback--

Зверніть увагу, який метод працює з директоріями, а який — з розширеннями файлів.

---

`dirname()` повертає повний шлях до файлу, а `extname()` повертає ім’я директорії.

### --feedback--

Зверніть увагу, який метод працює з директоріями, а який — з розширеннями файлів.

---

`dirname()` повертає ім’я директорії шляху, а `extname()` повертає розширення файлу.

---

`dirname()` і `extname()` обидва повертають однакове значення, але в різних форматах.

### --feedback--

Зверніть увагу, який метод працює з директоріями, а який — з розширеннями файлів.

## --video-solution--

3

## --text--

Який метод `path` будує повний шлях до файлу з об’єкта, що містить властивості директорії, імені та розширення?

## --answers--

`path.parse()`

### --feedback--

Подумайте, що є протилежним до `parse()`.

---

`path.format()`

---

`path.resolve()`

### --feedback--

Подумайте, що є протилежним до `parse()`.

---

`path.join()`

### --feedback--

Подумайте, що є протилежним до `parse()`.

## --video-solution--

2

## --text--

До чого надають доступ глобальні змінні Node.js `__filename` і `__dirname`?

## --answers--

Абсолютний шлях до поточного файлу та директорії, що його містить.

---

Ім’я поточного модуля та його залежностей.

### --feedback--

Подумайте, які змінні автоматично дають повні шляхи до файлів і папок без використання модуля path.

---

Відносний шлях до директорії встановлення Node.js.

### --feedback--

Подумайте, які змінні автоматично дають повні шляхи до файлів і папок без використання модуля path.

---

URL запущеного веб-сервера та його ім’я хоста.

### --feedback--

Подумайте, які змінні автоматично дають повні шляхи до файлів і папок без використання модуля path.

## --video-solution--

1
