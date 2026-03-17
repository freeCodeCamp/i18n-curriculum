---
id: 66ed8fedf45ce3ece4053eb3
title: Тест з CSS сітки
challengeType: 8
dashedName: quiz-css-grid
---

# --description--

Щоб пройти тест, ви повинні правильно відповісти щонайменше на 18 із 20 запитань нижче.

# --quizzes--

## --quiz--

### --question--

#### --text--

Що таке CSS сітка?

#### --distractors--

Метод, який використовується для відображення таблиць на вебсайті.

---

Метод, який використовується для укладання зображень у плитку.

---

Спосіб відображення обрисів навколо HTML-елементів.

#### --answer--

Двовимірний макет для HTML-документів.

### --question--

#### --text--

Який із наведених способів є правильним для створення контейнера сітки?

#### --distractors--

`display: grid-area;`

---

`grid: grid-template;`

---

`grid-template: set;`

#### --answer--

`display: grid;`

### --question--

#### --text--

Що робить властивість `grid-template-columns`?

#### --distractors--

Визначає дві колонки і три рядки для контейнера сітки.

---

Встановлює всі колонки макету сітки з фіксованою довжиною.

---

Створює контейнер макету сітки з двома колонками.

#### --answer--

Визначає кількість колонок у макеті сітки.

### --question--

#### --text--

Що робить властивість `grid-template-rows`?

#### --distractors--

Вказує розмір і розташування елемента сітки в макеті сітки.

---

Створює шаблон для створення нових рядків сітки.

---

Вказує розмір рядка за замовчуванням у контейнері сітки.

#### --answer--

Вказує кількість і висоту кожного рядка в макеті сітки.

### --question--

#### --text--

Що робить функція `minmax()`?

#### --distractors--

Перемикається між першим і другим значенням залежно від доступного простору.

---

Повертає середнє значення двох вхідних даних.

---

Встановлює мінімальний розмір елемента для браузера в повноекранному режимі.

#### --answer--

Встановлює мінімальні та максимальні розміри для треку.

### --question--

#### --text--

Який скорочений запис для властивостей `column-gap` і `row-gap`?

#### --distractors--

`gap-column-row`

---

`gutters`

---

`grid-gap`

#### --answer--

`gap`

### --question--

#### --text--

У чому різниця між неявною та явною сіткою?

#### --distractors--

Неявні сітки використовують властивість `grid-template-columns`, тоді як явні сітки використовують властивість `grid-template-rows`.

---

Явні сітки використовують властивість `grid-template-columns`, тоді як неявні сітки використовують властивість `grid-template-rows`.

---

Неявні сітки використовують властивості `grid-template-columns` або `grid-template-rows` для створення колонок, тоді як рядки і колонки створюються автоматично в явних сітках.

#### --answer--

Явні сітки використовують властивості `grid-template-columns` або `grid-template-rows` для створення колонок, тоді як рядки і колонки створюються автоматично в неявних сітках.

### --question--

#### --text--

Яка одиниця виміру представляє дріб простору всередині контейнера сітки?

#### --distractors--

`fractional`

---

`frac`

---

`f`

#### --answer--

`fr`

### --question--

#### --text--

Що таке лінії сітки?

#### --distractors--

Скорочення для рядків і колонок.

---

Обриси елемента сітки.

---

Лінії, вздовж яких створюються колонки і рядки сітки.

#### --answer--

Лінії, на яких починаються і закінчуються кожен елемент сітки.

### --question--

#### --text--

Що робить властивість `grid-column`?

#### --distractors--

Додає новий елемент сітки як дочірній елемент до елемента, до якого застосована.

---

Вирівнює текст у елементі сітки по вертикалі.

---

Встановлює дві колонки для контейнера сітки.

#### --answer--

Вказує, на якій лінії сітки елемент сітки повинен починатися і закінчуватися.

### --question--

#### --text--

Як створити чотири колонки однакової ширини?

#### --distractors--

`grid-template-columns: repeat(4);`

---

`grid-template-columns: repeat(1, 4);`

---

`grid-template-columns: repeat(1fr, 4);`

#### --answer--

`grid-template-columns: repeat(4, 1fr);`

### --question--

#### --text--

Що робить властивість `grid-template-areas`?

#### --distractors--

Використовується для вказівки, де елемент починається на лінії в контейнері сітки.

---

Використовується для створення розривів між треками в контейнері.

---

Використовується для повторення секцій у списку треків.

#### --answer--

Використовується для надання імені елементам, які ви збираєтеся розміщувати на сітці.

### --question--

#### --text--

Що робить властивість `grid-auto-flow`?

#### --distractors--

Керує порядком відображення елементів сітки.

---

Регулює відстань між елементами сітки.

---

Автоматично підлаштовує елемент під сітку.

#### --answer--

Керує тим, як елементи, розміщені автоматично, вставляються в сітку.

### --question--

#### --text--

Який із наведених способів є правильним для використання властивості `grid-template-areas`?

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: apply(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set-areas;
  gap: 20px; 
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas:
    "header header"
    "sidebar main"
    "footer footer"; 
  gap: 20px; 
}
```

### --question--

#### --text--

Який із наведених способів є правильним для роботи з властивістю `grid-auto-flow`?

#### --distractors--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: none;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: allow;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: set;
  grid-auto-columns: 1fr;
}
```

#### --answer--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: column;
  grid-auto-columns: 1fr;
}
```

### --question--

#### --text--

Яка з наведених властивостей НЕ є дійсною властивістю сітки?

#### --distractors--

`gap`

---

`grid-column`

---

`grid-template-columns`

#### --answer--

`grid-set`

### --question--

#### --text--

Яку з цих властивостей можна використати для центрування елементів всередині елемента сітки?

#### --distractors--

`allow-items`

---

`set-items`

---

`center-items`

#### --answer--

`align-items`

### --question--

#### --text--

Яке з наведених значень є правильним для використання з властивістю `grid-auto-columns`?

#### --distractors--

`grid-auto-columns: unset-grid;`

---

`grid-auto-columns: revert-grid;`

---

`grid-auto-columns: set-content(20%);`

#### --answer--

`grid-auto-columns: 1fr;`

### --question--

#### --text--

Що таке треки сітки?

#### --distractors--

Скорочення для рядків і колонок.

---

Лінії, вздовж яких можна анімувати рух елементів сітки.

---

Лінії, на яких починаються і закінчуються кожен елемент сітки.

#### --answer--

Пробіли між двома суміжними лініями сітки.

### --question--

#### --text--

Який із наведених способів є правильним для використання функції `minmax()`?

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(apply);
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax();
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(set);
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(150px, auto);
}
```

## --quiz--

### --question--

#### --text--

Як розмістити елемент сітки в макеті, визначеному `grid-template-areas`?

#### --distractors--

Безпосередньо визначити розмір і розташування елемента в сітці за допомогою `grid-template-rows` і `grid-template-columns`.

---

Використати властивість `grid-area` і вказати початкові та кінцеві позиції рядка і колонки.

---

Встановити одночасно `grid-area` і явні піксельні координати.

#### --answer--

Призначити іменовану область властивості `grid-area` елемента.

### --question--

#### --text--

Що контролює властивість `grid-auto-rows`?

#### --distractors--

Висоту явно визначених рядків.

---

Максимальну ширину колонок сітки.

---

Відстань між рядками.

#### --answer--

Розмір неявно створених рядків.

### --question--

#### --text--

Яку властивість ви використали б, щоб елемент сітки займав кілька рядків?

#### --distractors--

`grid-row-span`

---

`row-span`

---

`span-rows`

#### --answer--

`grid-row`

### --question--

#### --text--

Що визначає явну сітку?

#### --distractors--

Треки, створені автоматично для підлаштування вмісту.

---

Треки, визначені одиницею `fr`.

---

Треки, додані за допомогою `grid-auto-flow`.

#### --answer--

Треки, явно встановлені властивостями `grid-template-columns` або `grid-template-rows`.

### --question--

#### --text--

Яке значення для `grid-auto-flow` змусить нові елементи спочатку заповнювати колонки?

#### --distractors--

`row`

---

`vertical`

---

`row dense`

#### --answer--

`column`

### --question--

#### --text--

Яка мета `grid-template-areas`?

#### --distractors--

Автоматично створювати неявні треки.

---

Замінити одиницю `fr`.

---

Встановити значення `z-index`.

#### --answer--

Візуально спроєктувати елементи на іменовані області сітки.

### --question--

#### --text--

Як зробити, щоб елемент сітки починався на другій лінії колонки і закінчувався на четвертій?

#### --distractors--

`grid-column: 2 / span 4;`

---

`grid-column: start 2 / end 4;`

---

`grid-column: from 2 to 4;`

#### --answer--

`grid-column: 2 / 4;`

### --question--

#### --text--

Який ефект має `grid-template-columns: 1fr 2fr 1fr`?

#### --distractors--

Створює три колонки однакової ширини.

---

Робить середню колонку втричі ширшою за інші.

---

Змушує всі колонки бути точно `1fr` шириною.

#### --answer--

Створює три колонки, де середня вдвічі ширша за бокові.

### --question--

#### --text--

Як створити сітку з 3 однаковими колонками і `20px` розривом між ними?

#### --distractors--

```css
.container {
  display: grid;
  grid-template: repeat(3, 1fr) / 20px;
} 
```

---

```css
.container {
  display: grid;
  grid: 1fr 1fr 1fr / gap 20px;
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 20px 1fr 1fr 1fr;
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
}
```

### --question--

#### --text--

Що створює `repeat(3, minmax(100px, 1fr))`?

#### --distractors--

Три колонки, які не можуть зменшуватися менше за `100px`.

---

Три фіксовані колонки `100px`.

---

Три рядки з максимальною висотою `1fr`.

#### --answer--

Три колонки, які пропорційно ростуть, але не зменшуються менше за `100px`.

### --question--

#### --text--

Яке твердження про неявні сітки є правильним?

#### --distractors--

Неявні сітки ігнорують властивість `gap`.

---

Неявні треки мають бути визначені властивістю `grid-template-areas`.

---

Неявні треки можна створювати лише за допомогою властивості `grid-auto-flow`.

#### --answer--

Неявні треки створюються, коли вміст не поміщається в явні треки.

### --question--

#### --text--

Що робить властивість `place-items` у CSS сітці?

#### --distractors--

Автоматично встановлює розмір елементів сітки залежно від доступного простору.

---

Керує визначеннями колонок і рядків шаблону сітки.

---

Регулює порядок елементів сітки в контейнері.

#### --answer--

Це скорочений запис для вирівнювання елементів сітки по обох осях — блочній і рядковій.

### --question--

#### --text--

Що робить цей CSS?

```css
.container {
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
}
```

#### --distractors--

Створює фіксовані колонки `150px`, які виходять за межі контейнера.

---

Створює колонки точно `1fr` шириною незалежно від вмісту.

---

Створює максимум одну колонку на `150px` доступної ширини.

#### --answer--

Створює гнучкі колонки, які мають мінімум `150px` і стискаються, коли простору мало.

### --question--

#### --text--

Як створити асиметричні макети сітки?

#### --distractors--

Використовуючи лише одиниці `fr`.

---

Змішуючи різні одиниці довжини в `grid-template-columns`.

---

Встановлюючи `grid-asymmetric: true`.

#### --answer--

Визначаючи різні розміри для кожного треку.

### --question--

#### --text--

Що робить `grid-column-start: 2` з елементом сітки?

#### --distractors--

Змушує його займати 2 колонки.

---

Компенсує його на 2 пікселі.

---

Розміщує його, починаючи з другої вертикальної лінії сітки.

#### --answer--

Змушує його починатися на другій лінії колонки.

### --question--

#### --text--

Яку властивість ви використали б для керування поведінкою переповнення в треках сітки?

#### --distractors--

`grid-overflow`

---

`track-sizing`

---

`fit-content`

#### --answer--

`minmax()`

### --question--

#### --text--

Яким буде результат для такого коду?

```css
.container {
  display: grid;
  grid-template-columns: 100px 1fr 2fr;
  grid-template-rows: auto 150px;
  gap: 10px;
}
```

#### --distractors--

Контейнер матиме три колонки однакової ширини і два рядки висотою `150px` кожен.

---

Контейнер матиме три колонки, усі шириною `100px`, і два рядки висотою `150px`.

---

Контейнер матиме два рядки, кожен висотою `1fr`.

#### --answer--

Контейнер матиме три колонки: 100px, `1fr` і `2fr` шириною та два рядки: один авто і один висотою `150px`.

### --question--

#### --text--

Як зробити, щоб елемент сітки займав усі доступні рядки?

#### --distractors--

`grid-row: full;`

---

`grid-row: auto / -1;`

---

`grid-row: 1 / span infinite;`

#### --answer--

`grid-row: 1 / -1;`

### --question--

#### --text--

Яка властивість керує вирівнюванням елементів сітки вздовж блочної осі?

#### --distractors--

`justify-items`

---

`place-items`

---

`align-content`

#### --answer--

`align-items`

### --question--

#### --text--

Як забезпечити, щоб елемент сітки залишався в першій колонці незалежно від змін сітки?

#### --distractors--

`grid-column: fixed;`

---

`grid-column: first;`

---

`grid-lock: column;`

#### --answer--

`grid-column: 1;`
