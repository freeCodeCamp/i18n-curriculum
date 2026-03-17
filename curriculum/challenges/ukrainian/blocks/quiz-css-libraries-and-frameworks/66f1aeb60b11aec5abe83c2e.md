---
id: 66f1aeb60b11aec5abe83c2e
title: Тест з бібліотек і фреймворків CSS
challengeType: 8
dashedName: quiz-css-libraries-and-frameworks
---

# --description--

Щоб пройти тест, потрібно правильно відповісти щонайменше на 9 із 10 наведених нижче питань.

# --quizzes--

## --quiz--

### --question--

#### --text--

Що таке фреймворк CSS?

#### --distractors--

Інструмент для виправлення помилок CSS.

---

Інструмент для лінтингу CSS-файлів.

---

Форматувальник CSS-файлів.

#### --answer--

Бібліотека стилів CSS.

### --question--

#### --text--

Який із наведених є популярним utility-first фреймворком CSS?

#### --distractors--

Template CSS

---

Loading CSS

---

Minimal CSS

#### --answer--

Tailwind CSS

### --question--

#### --text--

Який недолік мають фреймворки CSS?

#### --distractors--

Замало компонентів.

---

Відсутність можливостей кастомізації.

---

Покращена підтримка браузерів.

#### --answer--

Можуть збільшувати розмір CSS-файлів.

### --question--

#### --text--

Що означає SCSS?

#### --distractors--

Super Cascading Style Sheets.

---

Structured CSS.

---

Simple CSS.

#### --answer--

Sassy CSS.

### --question--

#### --text--

Яка з наведених функцій є особливістю Sass?

#### --distractors--

Коментарі

---

Лінтинг CSS.

---

Рядковий CSS.

#### --answer--

Міксини

### --question--

#### --text--

Який правильний спосіб використання utility-класів у Tailwind CSS?

#### --distractors--

```html
<button class="color-blue text-color font-size allow-hover round-btn">
  Button
</button>
```

---

```html
<button class="blue text font-size hover round-btn margin-full">
  Button
</button>
```

---

```html
<button class="set-blue set-text set-font set-hover round-btn padding-full">
  Button
</button>
```

#### --answer--

```html
<button class="bg-blue-500 text-white font-bold py-2 px-4 rounded-full hover:bg-blue-700">
  Button
</button>
```

### --question--

#### --text--

Які два типи фреймворків CSS існують?

#### --distractors--

Tablet first CSS frameworks and Component-based CSS frameworks.

---

Utility-first CSS frameworks and Lazy loading CSS frameworks.

---

Minimal CSS frameworks and Utility-first CSS frameworks.

#### --answer--

Utility-first CSS frameworks and Component-based CSS frameworks.

### --question--

#### --text--

Яке розширення файлу для SCSS?

#### --distractors--

`.sass`

---

`.scsss`

---

`.css`

#### --answer--

`.scss`

### --question--

#### --text--

Який правильний спосіб оголосити змінну в SCSS?

#### --distractors--

```css
#primary-color: #3498eb;

header {
  background-color: #primary-color;
}
```

---

```css
>primary-color: #3498eb;

header {
  background-color: >primary-color;
}
```

---

```css
?primary-color: #3498eb;

header {
  background-color: ?primary-color;
}
```

#### --answer--

```css
$primary-color: #3498eb;

header {
  background-color: $primary-color;
}
```

### --question--

#### --text--

Який правильний спосіб оголосити міксин?

#### --distractors--

```css
--mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

---

```css
>mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

---

```css
mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

#### --answer--

```css
@mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```
