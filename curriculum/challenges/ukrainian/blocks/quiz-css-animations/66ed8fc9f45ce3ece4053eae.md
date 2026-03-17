---
id: 66ed8fc9f45ce3ece4053eae
title: Тест з CSS анімацій
challengeType: 8
dashedName: quiz-css-animations
---

# --description--

Щоб пройти тест, потрібно правильно відповісти щонайменше на 18 із 20 питань нижче.

# --quizzes--

## --quiz--

### --question--

#### --text--

Яка мета властивості `transform` у CSS?

#### --distractors--

Змінити видимість елемента.

---

Застосувати візуальний ефект до тексту.

---

Встановити розміри елемента.

#### --answer--

Змінити положення, розмір і форму елемента.

### --question--

#### --text--

Як властивість CSS `animation-direction` впливає на анімацію?

#### --distractors--

Визначає, чи має анімація повторюватися.

---

Встановлює тривалість анімації.

---

Визначає швидкість анімації.

#### --answer--

Визначає, як має відтворюватися анімація.

### --question--

#### --text--

Яка CSS властивість змушує анімацію виконатися 3 рази?

#### --distractors--

`animation-repeat: 3`

---

`animation-loop: 3`

---

`animation-delay: 3`

#### --answer--

`animation-iteration-count: 3`

### --question--

#### --text--

Яка функція часу CSS забезпечує рівномірну швидкість анімації від початку до кінця?

#### --distractors--

`ease`

---

`ease-in`

---

`ease-in-out`

#### --answer--

`linear`

### --question--

#### --text--

Що визначає директива `@keyframes` у CSS?

#### --distractors--

Кольори CSS градієнта.

---

Кути повороту CSS.

---

Розміри елемента.

#### --answer--

Етапи CSS анімації.

### --question--

#### --text--

Яка мета функції `translateX()` у CSS?

#### --distractors--

Змінює прозорість елемента.

---

Повертає елемент.

---

Вертикально переміщує елемент.

#### --answer--

Горизонтально переміщує елемент.

### --question--

#### --text--

Що з наведеного НЕ є потенційною проблемою CSS анімацій?

#### --distractors--

Вони можуть викликати дискомфорт або фізичну шкоду деяким користувачам.

---

Користувачі можуть вважати їх відволікаючими.

---

Надмірне використання може призвести до поганої продуктивності.

#### --answer--

Вони можуть покращити користувацький досвід.

### --question--

#### --text--

Де визначена директива `@keyframes`?

#### --distractors--

У межах елемента `body` HTML-файлу.

---

У межах елемента `head` HTML-файлу.

---

У визначенні CSS класу.

#### --answer--

На верхньому рівні, поза межами будь-яких CSS селекторів.

### --question--

#### --text--

Яка CSS властивість дозволяє призупинити та відновити анімацію?

#### --distractors--

`animation-timing-function`

---

`animation-delay`

---

`animation-direction`

#### --answer--

`animation-play-state`

### --question--

#### --text--

Яке значення слід призначити властивості `animation-name` у CSS?

#### --distractors--

Тривалість анімації в секундах.

---

Функція часу, що використовується для анімації.

---

Затримка перед початком анімації в секундах.

#### --answer--

Назва анімації, визначена директивою `@keyframes`.

### --question--

#### --text--

Що робить директива `@keyframe` з анімованим елементом?

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

Повертає елемент на 90 градусів за годинниковою стрілкою.

---

Змінює колір елемента на синій.

---

Масштабує елемент до 50% від початкового розміру, а потім до 100%.

#### --answer--

Переміщує елемент горизонтально з -50px до 100px відносно початкової точки.

### --question--

#### --text--

Яка CSS властивість визначає, як анімація прогресує з часом?

#### --distractors--

`animation-delay`

---

`animation-fill-mode`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

Яка CSS властивість використовується, щоб вказати, що анімація має тривати 5 секунд?

#### --distractors--

```css
animation-name: 5s;
```

---

```css
animation-delay: 5s;
```

---

```css
animation-timing-function: 5s;
```

#### --answer--

```css
animation-duration: 5s;
```

### --question--

#### --text--

Що означає `50%` у наступній директиві CSS `@keyframe`?

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  50% {
    transform: translateX(25px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

Початкова точка анімації.

---

Кінцева точка анімації.

---

Швидкість анімації.

#### --answer--

Середина анімації.

### --question--

#### --text--

Що станеться, якщо застосувати властивість `transform: translateX(200px);`?

#### --distractors--

Елемент переміститься на 200px вліво.

---

Елемент переміститься на 200px вниз.

---

Елемент повернеться на 200 градусів за годинниковою стрілкою.

#### --answer--

Елемент переміститься на 200px вправо.

### --question--

#### --text--

Як поводитиметься анімація, якщо `animation-iteration-count` встановлено в `infinite`?

#### --distractors--

Відтвориться один раз і зупиниться.

---

Призупиниться після першої ітерації.

---

Зупиниться після трьох ітерацій.

#### --answer--

Повторюватиметься безкінечно.

### --question--

#### --text--

Який селектор `@keyframes` визначає початкову точку анімації?

#### --distractors--

`50%`

---

`25%`

---

`100%`

#### --answer--

`0%`

### --question--

#### --text--

Які властивості можна вказати за допомогою скороченої CSS властивості `animation`?

#### --distractors--

Тільки назву анімації.

---

Назву та тривалість анімації.

---

Назву, тривалість і затримку анімації.

#### --answer--

Усі властивості анімації.

### --question--

#### --text--

Яка CSS властивість використовується для застосування анімації, визначеної директивою `@keyframes`?

#### --distractors--

`animation-duration`

---

`apply`

---

`translate`

#### --answer--

`animation`

### --question--

#### --text--

Яка CSS властивість дозволяє встановити час перед початком анімації?

#### --distractors--

`animation-fill-mode`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-delay`

## --quiz--

### --question--

#### --text--

Що робить властивість CSS `animation-delay`?

#### --distractors--

Встановлює тривалість анімації.

---

Визначає функцію часу.

---

Визначає напрямок анімації.

#### --answer--

Затримує початок анімації.

### --question--

#### --text--

Яка властивість анімації визначає, як елемент має стилізуватися до і після анімації?

#### --distractors--

`animation-delay`

---

`animation-direction`

---

`animation-iteration-count`

#### --answer--

`animation-fill-mode`

### --question--

#### --text--

Чому слід використовувати CSS анімації помірковано?

#### --distractors--

Занадто багато CSS анімацій може призвести до порушення стилів і непослідовності між браузерами.

---

Занадто багато CSS анімацій може знизити або взагалі позбавити рейтингів у пошукових системах.

---

Занадто багато CSS анімацій автоматично викликає збій сервера і підвищує ризики безпеки.

#### --answer--

Занадто багато CSS анімацій може погіршити продуктивність і бути відволікаючими або проблемними для користувачів з певними потребами доступності.

### --question--

#### --text--

Яка властивість анімації визначає, чи анімація відтворюється вперед, назад або по черзі?

#### --distractors--

`animation-fill-mode`

---

`animation-delay`

---

`animation-timing-function`

#### --answer--

`animation-direction`

### --question--

#### --text--

Який CSS медіазапит визначає, чи користувач запросив мінімальні анімації або ефекти руху?

#### --distractors--

`reduce-motion`

---

`min-motion-preference`

---

`motion-preferences`

#### --answer--

`prefers-reduced-motion`

### --question--

#### --text--

Яка властивість встановлює, скільки разів повторюється `animation`?

#### --distractors--

`animation-duration`

---

`animation-count`

---

`animation-delay`

#### --answer--

`animation-iteration-count`

### --question--

#### --text--

Яке CSS правило використовується для визначення етапів і стилів анімації у різні моменти її тривалості?

#### --distractors--

`@style`

---

`@transition`

---

`@transform`

#### --answer--

`@keyframes`

### --question--

#### --text--

У межах медіазапиту `reduced‑motion`, яке оголошення вимикає переходи?

#### --distractors--

`animation: none;`

---

`transition: remove;`

---

`animation-play-state: paused;`

#### --answer--

`transition: none;`

### --question--

#### --text--

Що дозволяє робити властивість `animation-play-state`?

#### --distractors--

Встановлювати, скільки разів повторюється анімація.

---

Вказувати, скільки часу триває анімація.

---

Визначати напрямок відтворення анімації.

#### --answer--

Призупиняти та відновлювати анімацію.

### --question--

#### --text--

Яка з наведених практик є правильною при роботі з анімаціями?

#### --distractors--

Використовувати якомога більше миготливих кольорів і швидких рухів для привернення уваги.

---

Уникати тестування анімацій на різних пристроях або розмірах екранів.

---

Робити анімації максимально довгими, щоб користувачі їх помітили.

#### --answer--

Уникати вмісту, що миготить більше трьох разів на секунду, щоб запобігти судомам або дискомфорту.

### --question--

#### --text--

Чому в CSS правилах використовується оголошення `!important`?

#### --distractors--

Щоб запобігти завантаженню інших медіазапитів.

---

Щоб обмежити стилі до першого дочірнього елемента.

---

Щоб легше налагоджувати CSS.

#### --answer--

Щоб гарантувати пріоритетність цих правил над іншими стилями.

### --question--

#### --text--

Що гарантує `animation-iteration-count: 1 !important;` у CSS?

#### --distractors--

Що анімації призупинені.

---

Що анімації відтворюються безкінечно.

---

Що анімації змінюють напрямок кожного циклу.

#### --answer--

Що будь-які циклічні анімації відтворюються лише один раз.

### --question--

#### --text--

Яка CSS властивість використовується, щоб вказати, скільки часу має тривати анімація?

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-duration`

### --question--

#### --text--

Яка властивість НЕ входить до скороченої властивості `animation`?

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-direction`

#### --answer--

`animation-transform`

### --question--

#### --text--

Що визначає правило `@keyframes`?

#### --distractors--

Функцію часу анімації.

---

Початковий стан елемента.

---

Медіазапити для анімацій.

#### --answer--

Послідовність стилів у різні моменти анімації.

### --question--

#### --text--

Що робить директива `@keyframe` з анімованим елементом?

```css
@keyframes fade-in {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
```

#### --distractors--

Масштабує елемент від 0% до 100%.

---

Переміщує елемент зліва направо.

---

Змінює колір тексту на чорний.

#### --answer--

Забезпечує поступове появлення елемента за рахунок зменшення прозорості.

### --question--

#### --text--

У правилі keyframes, що означає `100%`?

#### --distractors--

Початок анімації.

---

Середина анімації.

---

Функція згладжування.

#### --answer--

Кінець анімації.

### --question--

#### --text--

Яка властивість контролює темп `animation` протягом її тривалості?

#### --distractors--

`animation-duration`

---

`animation-delay`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

Що мають враховувати розробники при реалізації анімацій для збереження доступності?

#### --distractors--

Повністю покладатися на JavaScript для всіх анімацій.

---

Додавати часті та інтенсивні анімації для ефекту.

---

Використовувати лише жирні, швидкі та несподівані ефекти.

#### --answer--

Використовувати тонкі, продумані ефекти, поважати уподобання користувачів і надавати їм контроль.

### --question--

#### --text--

Який із наведених синтаксисів є правильним для плавного появлення елемента зліва?

#### --distractors--

```css
@keyframes slide-in {
  0 { 
    transform: translate(-100%); 
  }
  100 { 
    transform: translate(0); 
  }
}
```

---

```css
@keyframes slide-in {
  from { 
    translateX(-100%); 
  }
  to { 
    translateX(0); 
  }
}
```

---

```css
@keyframes slide-in {
  start { 
    transform: moveX(-100%); 
  }
  end { 
    transform: moveX(0); 
  }
}
```

#### --answer--

```css
@keyframes slide-in {
  0% { 
    transform: translateX(-100%); 
  }
  100% { 
    transform: translateX(0); 
  }
}
```
