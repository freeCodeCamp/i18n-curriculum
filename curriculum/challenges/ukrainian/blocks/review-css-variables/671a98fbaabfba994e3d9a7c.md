---
id: 671a98fbaabfba994e3d9a7c
title: Повторення CSS-змінних
challengeType: 31
dashedName: review-css-variables
---

# --interactive--

## Кастомні властивості CSS (CSS-змінні)

- **Визначення**: Кастомні властивості CSS, також відомі як CSS-змінні, — це сутності, які визначають автори CSS і які містять конкретні значення для повторного використання по всьому документу. Вони є потужною функцією, що дозволяє створювати більш ефективні, підтримувані та гнучкі стилі. Кастомні властивості особливо корисні для створення дизайнів із можливістю темізації. Ви можете визначити множину властивостей для різних тем:

```css
:root {
  --bg-color: white;
  --text-color: black;
}

.dark-theme {
  --bg-color: #333;
  --text-color: white;
}

body {
  background-color: var(--bg-color);
  color: var(--text-color);
}
```

## Правило `@property`

- **Визначення**: Правило `@property` — це потужна функція CSS, яка дозволяє розробникам визначати кастомні властивості з більшим контролем над їхньою поведінкою, включно з тим, як вони анімуються, та їхніми ініціальними значеннями.

```css
@property --property-name {
  syntax: '<type>';
  inherits: true | false;
  initial-value: <value>;
}
```

- **`--property-name`**: Це ім’я кастомної властивості, яку ви визначаєте. Як і всі кастомні властивості, вона має починатися з двох дефісів.
**`syntax`**: Це визначає тип властивості, який може бути таким, як `<color>`, `<length>`, `<number>`, `<percentage>` або більш складні типи.
- **`inherits`**: Це вказує, чи має властивість наслідувати своє значення від батьківського елемента.
- **`initial-value`**: Це встановлює значення властивості за замовчуванням.
- **Приклад градієнта з використанням правила `@property`**: Цей приклад створює градієнт, який плавно анімується при наведенні на елемент.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">

<div class="gradient-box"></div>
```

```css
@property --gradient-angle {
  syntax: "<angle>";
  inherits: false;
  initial-value: 0deg;
}

.gradient-box {
  width: 100px;
  height: 100px;
  background: linear-gradient(var(--gradient-angle), red, blue);
  transition: --gradient-angle 0.5s;
}

.gradient-box:hover {
  --gradient-angle: 90deg;
}
```

:::

- **Запасні варіанти**: Коли ви використовуєте кастомну властивість, ви можете надати запасне значення за допомогою функції `var()`, так само як і зі стандартними кастомними властивостями:

```css
.button {
  background-color: var(--main-color, #3498db);
}
```

# --assignment--

Повторіть теми та концепції CSS-змінних.
