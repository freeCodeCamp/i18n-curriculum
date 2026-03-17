---
id: 66ed8fd0f45ce3ece4053eaf
title: Тест на селектори атрибутів CSS
challengeType: 8
dashedName: quiz-css-attribute-selectors
---

# --description--

Щоб пройти тест, ви повинні правильно відповісти щонайменше на 9 із 10 питань нижче.

# --quizzes--

## --quiz--

### --question--

#### --text--

Для чого використовують селектори атрибутів CSS?

#### --distractors--

Щоб застосувати стилі до елементів на основі їхнього імені тегу.

---

Щоб застосувати стилі до елементів на основі їхнього імені класу.

---

Щоб застосувати стилі до елементів на основі їхнього батьківського елемента.

#### --answer--

Щоб застосувати стилі до елементів на основі їхніх атрибутів.

### --question--

#### --text--

Що з наведеного НЕ буде вибране цим селектором CSS?

```css
[title~="flower"] {
  border: 5px solid yellow;
}
```

#### --distractors--

```html
<img src="img1.jpg" title="clematis flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="FLOWERS of flower" width="150" height="113">
```

#### --answer--

```html
<img src="img2.jpg" title="flowers" width="150" height="113">
```

### --question--

#### --text--

Який селектор CSS відповідає всім `p` елементам з атрибутом `lang`, встановленим у `"fr"`?

#### --distractors--

```css
p[lang-="fr"] { color: blue; }
```

---

```css
p[lang~="fr"] { color: blue; }
```

---

```css
p[lang=="fr"] { color: blue; }
```

#### --answer--

```css
p[lang="fr"] { color: blue; }
```

### --question--

#### --text--

Який селектор CSS відповідає всім `a` елементам з атрибутом `href`?

#### --distractors--

```css
a(href) { color: green; }
```

---

```css
a { color: green; }
```

---

```css
a[href~=""] { color: green; }
```

#### --answer--

```css
a[href] { color: blue; }
```

### --question--

#### --text--

Який селектор CSS відповідає всім впорядкованим спискам з римськими цифрами у верхньому регістрі?

#### --distractors--

```css
ol[type="a"] { border-color: black; }
```

---

```css
ol[type="A"] { border-color: black; }
```

---

```css
ol[type="i"] { border-color: black; }
```

#### --answer--

```css
ol[type="I"] { border-color: black; }
```

### --question--

#### --text--

Для чого зазвичай використовується атрибут `data-lang`?

#### --distractors--

Щоб вказати мову документа.

---

Щоб визначити кодування символів документа.

---

Щоб встановити мову елемента на основі його батьківського елемента.

#### --answer--

Щоб застосувати стилі до елементів на основі цього кастомного атрибута даних.

### --question--

#### --text--

Який селектор CSS слід використовувати, щоб стилізувати `img` елементи лише якщо їхній атрибут `alt` дорівнює `"code"`?

#### --distractors--

```css
img[alt~="code"] { border: 1px solid red; }
```

---

```css
img[alt=="code"] { border: 1px solid red; }
```

---

```css
img[alt*="code"] { border: 1px solid red; }
```

#### --answer--

```css
img[alt="code"] { border: 1px solid red; }
```

### --question--

#### --text--

Який селектор CSS відповідає впорядкованим спискам з числовим типом нумерації?

#### --distractors--

```css
ol[type="i"] { color: purple; }
```

---

```css
ol[type="I"] { color: purple; }
```

---

```css
ol[type="a"] { color: purple; }
```

#### --answer--

```css
ol[type="1"] { color: purple; }
```

### --question--

#### --text--

Який із наведених селекторів CSS ви б використали, щоб стилізувати `a` елементи з атрибутами `href` та `title` одночасно?

#### --distractors--

```css
a[href] a[title] { text-decoration: underline dotted; }
```

---

```css
a[href]a[title] { text-decoration: underline dotted; }
```

---

```css
a[href].[title] { text-decoration: underline dotted; }
```

#### --answer--

```css
a[href][title] { text-decoration: underline dotted; }
```

### --question--

#### --text--

Який селектор CSS ви б використали, якщо розробляєте сайт для ресторану і хочете стилізувати всі елементи з класом `menu-item`, які мають атрибут `data-special`?

#### --distractors--

```css
menu-item[data-special] { background-color: blue; }
```

---

```css
#menu-item[data-special] { background-color: blue; }
```

---

```css
[data-special="menu-item"] { background-color: blue; }
```

#### --answer--

```css
.menu-item[data-special] { background-color: blue; }
```
