---
id: bd7154d8c242eddfaeb5bd13
title: Створіть гру «Життя»
challengeType: 3
forumTopicId: 302362
dashedName: build-the-game-of-life
---

# --description--

**Objective:** Build an app that is functionally similar to this: <a href="https://codepen.io/freeCodeCamp/full/BpwMZv/" target="_blank" rel="noopener noreferrer nofollow">https://codepen.io/freeCodeCamp/full/BpwMZv/</a>.

Гра життя — це клітинний автомат, розроблений британським математиком Джоном Хортоном Конвеєм. Це <em>гра з нульовим гравцем</em>, тобто її розвиток визначається початковим станом та не потребує подальших вводів. Людина взаємодіє з грою, створюючи початкову конфігурацію та спостерігаючи за розвитком.

Всесвіт гри — це нескінченна двовимірна ортогональна сітка квадратних клітинок, кожна з яких перебуває в одному з двох можливих станів: заселеному та незаселеному. Every cell interacts with its eight neighbors, which are the cells that are horizontally, vertically, or diagonally adjacent.

На кожному кроці в часі відбуваються такі переходи:

- Any live cell with fewer than two live neighbors dies, as if by underpopulation.
- Any live cell with two or three live neighbors lives on to the next generation.
- Any live cell with more than three live neighbors dies, as if by overpopulation.
- Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

Виконайте історію користувача та пройдіть тести. Використовуйте необхідні вам бібліотеки або API. Оформте за власним стилем.

**Історія користувача:** коли я вперше заходжу в гру, вона випадково створить площину і почне гру.

**Історія користувача:** я можу запустити і зупинити площину.

**Історія користувача:** я можу налаштувати площину.

**Історія користувача:** я можу очистити площину.

**Історія користувача:** коли я натисну кнопку «Start», гра почнеться.

**Історія користувача:** щоразу, коли змінюється площина, я можу побачити, скільки поколінь минуло.

Коли закінчите, надайте посилання на свій проєкт та натисніть кнопку «Я виконав(-ла) це завдання».

Ви можете отримати фідбек до свого проєкту, поділившись ним на <a href="https://forum.freecodecamp.org/c/project-feedback/409" target="_blank" rel="noopener noreferrer nofollow">форумі freeCodeCamp</a>.

# --solutions--

```js
// solution required
```
