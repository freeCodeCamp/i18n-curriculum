---
id: 672bbeb6eefd7ca9c003ea00
title: "Які приклади псевдокласів, що базуються на структурі дерева?"
challengeType: 19
dashedName: what-are-examples-of-tree-structural-pseudo-classes
---

# --interactive--

Псевдокласи, що базуються на структурі дерева, дозволяють вам вибирати та стилізувати елементи залежно від їхнього розташування у дереві документа. Дерево документа — це ієрархічна структура елементів у HTML-документі.

Ось список псевдокласів, що базуються на структурі дерева:

- `:root`
- `:empty`
- `:nth-child(n)`
- `:nth-last-child(n)`
- `:first-child`
- `:last-child`
- `:only-child`
- `:nth-of-type`
- `:first-of-type`
- `:last-of-type`
- `:only-of-type`

Давайте детальніше розглянемо кожен із цих псевдокласів із прикладами.

Псевдоклас `:root` зазвичай відповідає кореневому `html` елементу. Він допомагає вам вибрати найвищий рівень у документі, щоб застосувати загальний стиль до всього документа.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Welcome to My Website</h1>
<p>This is a sample paragraph to demonstrate the :root pseudo-class.</p>
```

```css
:root {
  background: black;
  color: aliceblue;
}
```

:::

Псевдоклас `:root` також часто використовується для встановлення CSS-змінних:

```css
:root {
  --main-font: 'Arial, sans-serif';
  --primary-color: blue; 
  --secondary-color: green; 
}
```

За допомогою CSS-змінних ви можете зберігати значення та повторно використовувати їх у своєму стилі. Ви дізнаєтеся більше про це пізніше.

Порожні елементи, тобто елементи без дочірніх, крім порожнього простору, також входять до дерева документа. Саме тому існує псевдоклас `:empty` для вибору порожніх елементів. Наприклад, у цьому HTML-коді є два порожні елементи списку. За допомогою псевдокласу `:empty` ви можете стилізувати порожні елементи списку інакше:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  background: black;
}
```

:::

Найпрактичніше, мабуть, не відображати порожні елементи списку взагалі:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  display: none;
}
```

:::

`:nth-child(n)` дозволяє вибирати елементи залежно від їхньої позиції в межах батьківського елемента, а `:nth-last-child(n)` дає змогу вибирати елементи, рахуючи з кінця. `n` може бути конкретним числом або ключовим словом, як `odd` чи `even`. Це надзвичайно корисно для стилізації клітинок таблиці залежно від позиції: парні та непарні.

Ось HTML-приклад таблиці з цінами на фрукти. CSS використовує псевдоклас `:nth-child` для вибору клітинок таблиці залежно від парних і непарних позицій:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<table>
  <tr>
    <th>Item</th>
    <th>Price</th>
  </tr>
  <tr>
    <td>Apple</td>
    <td>$1.00</td>
  </tr>
  <tr>
    <td>Banana</td>
    <td>$0.50</td>
  </tr>
  <tr>
    <td>Orange</td>
    <td>$0.80</td>
  </tr>
</table>
```

```css
th,
td {
  border: 1px solid lightgray;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: orangered;
}

tr:nth-child(odd) {
  background-color: lightgreen;
}
```

:::

Псевдокласи `:first-child`, `:last-child` і `:only-child` діють на елементи всередині батьківського контейнера або всього документа.

- `:first-child` вибирає перший елемент у межах батьківського елемента або документа.
- `:last-child` вибирає останній елемент у межах батьківського елемента або документа.
- `:only-child` вибирає єдиний елемент у межах батьківського елемента або документа.

Використання псевдокласів `:first-child` і `:last-child` вибере одночасно `Item 1` і `Item 3` у цьому прикладі:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```

```css
li:first-child {
  background-color: orangered;
}

li:last-child {
  background-color: lightgreen;
}
```

:::

Якщо на сторінці є кілька невпорядкованих списків, потрібно бути точнішим у виборі:

Щоб показати, як працює псевдоклас `:only-child`, ось HTML-приклад із двома окремими `div` елементами. Використання псевдокласу `:only-child` гарантує, що буде вибрано лише `div` елемент із одним дочірнім елементом:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<div class="container">
  <div>This is the only item in this container.</div>
</div>

<div class="container">
  <div>This is one of two items in this container.</div>
  <div>Here is the second item.</div>
</div>
```

```css
.container div:only-child {
  border: 2px solid crimson;
  padding: 10px;
  background-color: lightblue;
}
```

:::

Псевдокласи `:first-of-type` і `:last-of-type` вибирають перший і останній випадок певного типу елемента в межах батьківського елемента. Вони корисні для застосування унікальних стилів до першого або останнього екземпляра цього типу серед братських елементів.

У наведеному нижче прикладі `:first-of-type` і `:last-of-type` застосовуються до першого та останнього елемента всередині `section` елемента:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<section>
  <h2>Introduction</h2>
  <p>This is the first paragraph in the first section</p>
  <p>This is the second paragraph in the first section</p>
</section>
<section>
  <h2>Details</h2>
  <p>This is the first paragraph in the second section.</p>
  <p>This is the second paragraph in the second section.</p>
</section>
```

```css
section p:first-of-type {
  background-color: lightgreen;
}

section p:last-of-type {
  background-color:lightblue;
}
```

:::

`:nth-of-type(n)` дозволяє вибрати конкретний елемент у межах батьківського елемента залежно від його позиції серед братських елементів того самого типу. Наприклад, у наведеному HTML `:nth-of-type(2)` вибирає другий елемент у контейнері:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>First paragraph</p>
  <p>Second paragraph</p>
  <p>Third paragraph</p>
</div>
```

```css
p:nth-of-type(2) {
  color: red;
  font-weight: bold;
}
```

:::

`:only-of-type` вибирає елемент, якщо він єдиний свого типу в межах батьківського елемента. Це може бути корисно для виділення одиничних елементів або для того, щоб вони стилізувалися інакше, коли не є частиною групи.

У наведеному прикладі є два `div` елементи, один із яких має лише один елемент. CSS застосовується лише до першого контейнера:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>The only paragraph</p>
</div>

<div class="container">
  <p>The first paragraph</p>
  <p>The second paragraph</p>
</div>
```

```css
p:only-of-type {
  border: 4px solid green;
}
```

:::

# --questions--

## --text--

У чому різниця між псевдокласами `:first-of-type` і `:last-of-type`?

## --answers--

`:first-of-type` вибирає перший елемент певного типу в межах батьківського елемента, тоді як `:last-of-type` вибирає останній елемент іншого типу.

### --feedback--

Подумайте, як ці псевдокласи допомагають стилізувати перші та останні екземпляри певного тегу, наприклад `p` або `h1`.

---

`:first-of-type` і `:last-of-type` обидва вибирають перший випадок елемента, але в різних розділах документа.

### --feedback--

Подумайте, як ці псевдокласи допомагають стилізувати перші та останні екземпляри певного тегу, наприклад `p` або `h1`.

---

`:first-of-type` вибирає перший випадок певного типу елемента в межах батьківського елемента, тоді як `:last-of-type` вибирає останній випадок того самого типу в межах батьківського елемента.

---

`:last-of-type` застосовує стилі до перших і останніх елементів у документі, тоді як `:last-of-type` застосовує стилі до всіх елементів певного типу.

### --feedback--

Подумайте, як ці псевдокласи допомагають стилізувати перші та останні екземпляри певного тегу, наприклад `p` або `h1`.

## --video-solution--

3

## --text--

У чому різниця між псевдокласами `:first-child` і `:last-child`?

## --answers--

`:first-child` вибирає перший елемент у межах свого батьківського елемента, тоді як `:last-child` вибирає останній елемент у межах іншого батьківського елемента.

### --feedback--

Подумайте, як ці два псевдокласи допомагають стилізувати перші та останні елементи в межах одного батьківського контейнера.

---

`:first-child` вибирає перший елемент у межах свого батьківського елемента, тоді як `:last-child` вибирає останній елемент у межах того самого батьківського елемента.

---

`:first-child` вибирає перший елемент певного типу в межах батьківського елемента, тоді як `:last-child` вибирає останній елемент іншого типу в межах того самого батьківського елемента.

### --feedback--

Подумайте, як ці два псевдокласи допомагають стилізувати перші та останні елементи в межах одного батьківського контейнера.

---

`:first-child` вибирає перші та останні елементи в межах батьківського елемента, тоді як `:last-child` вибирає всі інші елементи.

### --feedback--

Подумайте, як ці два псевдокласи допомагають стилізувати перші та останні елементи в межах одного батьківського контейнера.

## --video-solution--

2

## --text--

Який псевдоклас дозволяє вибирати елементи, які не мають дочірніх елементів, включно з тими, що містять лише порожній простір?

## --answers--

`:empty`

---

`:first-child`

### --feedback--

Подумайте, як можна стилізувати елементи, які не мають вмісту.

---

`:last-child`

### --feedback--

Подумайте, як можна стилізувати елементи, які не мають вмісту.

---

`:only-of-type`

### --feedback--

Подумайте, як можна стилізувати елементи, які не мають вмісту.

## --video-solution--

1
