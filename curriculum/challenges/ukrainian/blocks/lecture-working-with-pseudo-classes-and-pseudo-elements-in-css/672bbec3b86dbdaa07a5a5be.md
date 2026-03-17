---
id: 672bbec3b86dbdaa07a5a5be
title: Які приклади функціональних псевдокласів?
challengeType: 19
dashedName: what-are-examples-of-functional-pseudo-classes
---

# --interactive--

Функціональні псевдокласи дозволяють вибирати елементи на основі складніших умов або відносин. На відміну від звичайних псевдокласів, які цільові елементи на основі стану, наприклад, `:hover`, `:focus`, функціональні псевдокласи приймають аргументи в круглих дужках, звідси й назва «функціональні псевдокласи».

Прикладами функціональних псевдокласів є:

- `:is()`
- `:where()`
- `:has()`
- `:not()`

Давайте детальніше розглянемо кожен із цих функціональних псевдокласів на прикладах.

Псевдоклас `:is()` корисний, коли ви хочете стилізувати групу елементів, які мають деякі, але не всі, спільні характеристики. Наприклад, ви можете захотіти стилізувати різні типи кнопок на своєму сайті, включно з `button` елементами, посиланнями, стилізованими як кнопки, і `input` елементами з типами `submit` і `reset`. Ось приклад, який це представляє. Без функції `:is()` вам довелося б написати складний селектор, як цей:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
<a href="#" class="button">Link styled like a button</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />
```

```css
button,
a.button,
input[type='submit'],
input[type='reset'] {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

button:hover,
a.button:hover,
input[type='submit']:hover,
input[type='reset']:hover {
  background-color: blue;
  border-color: blue;
}
```

:::

За допомогою функції `:is()` ви можете написати більш компактний і зрозумілий селектор, як цей:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
<a href="#" class="button">Link styled like a button</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />
```

```css
:is(button, a.button, input[type='submit'], input[type='reset']) {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

:is(button, a.button, input[type='submit'], input[type='reset']):hover {
  background-color: blue;
  border-color: blue;
}
```

:::

Псевдоклас `:where()` працює подібно до `:is()`, але не збільшує специфічність ваших селекторів. Це робить його ідеальним для застосування стилів без впливу на специфічність інших правил.

Наприклад, ви можете використати функцію `:where()`, щоб застосувати нульові `margin` і `padding` до заголовків. Це гарантує, що скидання не завадить більш специфічним стилям, які ви можете застосувати пізніше. Ось приклад для цього:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Page Title</h1>
<h2>Subtitle</h2>
<h3>A point</h3>

<p>Example paragraph.</p>
<p>Example paragraph.</p>
<p>Example paragraph.</p>
```

```css
:where(h1, h2, h3) {
  margin: 0;
  padding: 0;
}
```

:::

Стилізувати батьківський елемент на основі станів його дочірніх елементів раніше було складно, доки не з’явився псевдоклас `:has()`. Він дозволяє застосовувати стилі до батьківського елемента на основі наявності або стану його дочірніх елементів.

Наприклад, CSS нижче застосовується лише до будь-якого `article` елемента, який містить `h2`:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<article>
  <h2>Subheading</h2>
  <p>Lorem ipsum dolor sit amet.</p>
</article>

<article>
  <h3>A point</h3>
  <p>Lorem ipsum dolor sit amet.</p>
  <p>Lorem ipsum dolor sit amet.</p>
</article>
```

```css
article:has(h2) {
  border: 2px solid hotpink;
}
```

:::

Псевдоклас `:not()` ідеально підходить для ситуацій, коли ви хочете застосувати стилі до групи елементів, виключаючи один або кілька конкретних винятків. У CSS нижче будь-яка кнопка, яка не є основною кнопкою, матиме сірий фон:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button class="primary">Primary Button</button>
<button class="secondary">Secondary Button</button>
<button class="danger">Another Secondary Button</button>
```

```css
button {
  padding: 10px 20px;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
  border: none;
  color: white;
}

button.primary {
  background-color: deepskyblue;
}

button:not(.primary) {
  background-color: grey;
}
```

:::

# --questions--

## --text--

Який псевдоклас працює як `:is()`, але не додає специфічності вашим селекторам?

## --answers--

`:not()`

### --feedback--

Цей псевдоклас чудово підходить для застосування широких, неінвазивних стилів.

---

`:has()`

### --feedback--

Цей псевдоклас чудово підходить для застосування широких, неінвазивних стилів.

---

`:where()`

---

`:empty`

### --feedback--

Цей псевдоклас чудово підходить для застосування широких, неінвазивних стилів.

## --video-solution--

3

## --text--

Який із цих не є функціональним псевдокласом?

## --answers--

`:is()`

### --feedback--

Функціональні псевдокласи використовують круглі дужки і приймають аргументи всередині них.

---

`:first-child`

---

`:has()`

### --feedback--

Функціональні псевдокласи використовують круглі дужки і приймають аргументи всередині них.

---

`:where()`

### --feedback--

Функціональні псевдокласи використовують круглі дужки і приймають аргументи всередині них.

## --video-solution--

2

## --text--

Який псевдоклас ідеально підходить для ситуації, коли ви хочете застосувати стилі до групи елементів без однієї або двох винятків?

## --answers--

`:has()`

### --feedback--

Подумайте, як ви можете виключити конкретні елементи зі стилізації.

---

`:is()`

### --feedback--

Подумайте, як ви можете виключити конкретні елементи зі стилізації.

---

`:not()`

---

`:where()`

### --feedback--

Подумайте, як ви можете виключити конкретні елементи зі стилізації.

## --video-solution--

3
