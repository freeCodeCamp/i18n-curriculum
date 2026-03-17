---
id: 695cc8f280fef0cc3bed02cb
title: Що таке модуль process і як він працює?
challengeType: 19
dashedName: what-is-the-process-module-and-how-does-it-work
---

# --description--

`process` — один із найважливіших базових модулів Node.js. Він дає вам доступ до інформації про поточний процес Node.js і дозволяє керувати ним під час роботи вашого застосунку.

Коли ви виконуєте команду на кшталт `node script.js` у терміналі, Node.js запускає процес — це запущений екземпляр програми Node, який виконує файл `script.js`. Цей процес має власну пам’ять, середовище та контекст виконання.

Поточний процес відкритий глобально через модуль `process`, тож вам навіть не потрібно його імпортувати. Якщо у вас встановлений Node.js, ви можете викликати його будь-де.

Модуль `process` відкриває властивості та методи, щоб отримати певну інформацію про поточний контекст виконання.

`process.env` дає вам інформацію про поточне середовище, на якому працює Node. Це завжди повертає великий об’єкт із багатьма параметрами, тому ось як ви можете напряму отримати деяку найважливішу інформацію:

```js
// Gets all environment variables available to the current Node.js process
console.log(process.env);

// Gets the current Node.js environment mode (like 'development' or 'production')
console.log(process.env.NODE_ENV); // development

// Gets the path of the shell program running the Node.js process
console.log(process.env.SHELL); // /bin/bash

// Gets the system PATH variable where executables are searched for
console.log(process.env.PATH); // /usr/local/bin:/usr/bin:/bin

// Gets the present working directory from where the process was started
console.log(process.env.PWD); // /Users/johndoe/projects/myapp

// Gets the username of the user running the current process
console.log(process.env.USER); // johndoe
```

`process.argv` дозволяє читати аргументи командного рядка:

```js
console.log(process.argv);
/*
script.js --watch
Hello world
[
  '/Users/user/.nvm/versions/node/v22.17.0/bin/node',
  '/Users/user/Desktop/fCC/script-code/node/node-process/script.js',
  '--watch'
]
*/
```

Метод `cwd()` показує поточний робочий каталог:

```js
console.log(process.cwd());
```

Події процесу — це базова функція Node.js, яка дозволяє вашому застосунку реагувати на ключові моменти його життєвого циклу, наприклад, коли він збирається завершитись, стикається з помилкою або отримує системний сигнал.

Подія `exit`, наприклад, виконується безпосередньо перед завершенням процесу Node.js:

```js
process.on("exit", (code) => {
  console.log(`Process exiting with code: ${code}`);
});

// Process exiting with code: 0
```

Подія `uncaughtException` спрацьовує, коли в коді не було оброблено помилку, що допомагає запобігти аварійному завершенню:

```js
process.on("uncaughtException", (err) => {
  console.error("Uncaught error:", err.message);
});
```

Нарешті, подія `warning` спрацьовує, коли Node.js видає попередження процесу:

```js
process.on("warning", (warning) => {
  console.warn("Warning name:", warning.name);
  console.warn("Warning message:", warning.message);
});
```

Потім ви можете використати метод `emitWarning()`, щоб викликати кастомне попередження:

```js
// Example warning with the emitWarning() method
process.emitWarning('This is a custom warning message', 'CustomWarning');

/*
  Warning name: CustomWarning
  Warning message: This is a custom warning message
*/
```

# --questions--

## --text--

Що робить метод `process.emitWarning()`?

## --answers--

Він зупиняє процес, коли виникає кастомне попередження.

### --feedback--

Подумайте, як Node.js обробляє кастомні попередження через події.

---

Він викликає подію кастомного попередження, яку можна обробити слухачем попереджень.

---

Він записує помилку в лог і негайно завершує процес.

### --feedback--

Подумайте, як Node.js обробляє кастомні попередження через події.

---

Він перезапускає процес Node.js після показу попередження.

### --feedback--

Подумайте, як Node.js обробляє кастомні попередження через події.

## --video-solution--

2

## --text--

Як використовувати модуль process?

## --answers--

Викликаючи його напряму, бо це глобальний об’єкт.

---

Увімкнувши його у конфігураційному файлі Node.js.

### --feedback--

Подумайте, чому ви можете отримати доступ до process будь-де без налаштувань.

---

Встановивши його вручну через npm перед викликом.

### --feedback--

Подумайте, чому ви можете отримати доступ до process будь-де без налаштувань.

---

Імпортуючи його через require('process') перед кожним використанням.

### --feedback--

Подумайте, чому ви можете отримати доступ до process будь-де без налаштувань.

## --video-solution--

1

## --text--

Для чого використовують події процесу?

## --answers--

Щоб визначати змінні середовища для застосунку.

### --feedback--

Подумайте, як Node.js реагує на зміни життєвого циклу під час виконання.

---

Щоб створювати нові процеси для паралельного виконання.

### --feedback--

Подумайте, як Node.js реагує на зміни життєвого циклу під час виконання.

---

Щоб слухати й реагувати на важливі моменти життєвого циклу, як-от вихід, помилки чи системні сигнали.

---

Щоб керувати шляхами та розширеннями файлів у системі.

### --feedback--

Подумайте, як Node.js реагує на зміни життєвого циклу під час виконання.

## --video-solution--

3
