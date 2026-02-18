---
id: 671a98fbaabfba994e3d9a7c
title: CSS 變數回顧
challengeType: 31
dashedName: review-css-variables
---

# --interactive--

## CSS 訂製屬性（CSS 變數）

- **定義**：CSS 訂製屬性，也稱為 CSS 變數，是由 CSS 作者定義的實體，包含特定的值以便在整個文件中重複使用。它們是一項強大的功能，允許更高效、可維護且靈活的樣式表。訂製屬性在創建可主題化設計時特別有用。你可以為不同主題定義一組屬性：

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

## `@property` 規則

- **定義**：`@property` 規則是一個強大的 CSS 功能，允許開發者訂製屬性，並對其行為擁有更高的控制元件，包括它們如何動畫以及初始值。

```css
@property --property-name {
  syntax: '<type>';
  inherits: true | false;
  initial-value: <value>;
}
```

- **`--property-name`**：這是你正在定義的訂製屬性名稱。像所有訂製屬性一樣，它必須以兩個破折號開頭。  
**`syntax`**：這定義了屬性的型別，可以是像 `<color>`、`<length>`、`<number>`、`<percentage>` 或更複雜的型別。
- **`inherits`**：這指定該屬性是否應該從其父元素繼承值。
- **`initial-value`**：這會設定該屬性的預設值。
- **使用 `@property` 規則的漸層範例**：此範例創建一個在元素被暫留時平滑動畫的漸層。

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

- **備援值**：當使用訂製屬性時，你可以使用 `var()` 函式（程式）提供備援值，就像使用標準訂製屬性一樣：

```css
.button {
  background-color: var(--main-color, #3498db);
}
```

# --assignment--

檢視 CSS 變數的主題和概念。
