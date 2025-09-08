---
id: 671a98fbaabfba994e3d9a7c
title: CSS 變量複習
challengeType: 31
dashedName: review-css-variables
---

# --description--

## CSS 自定義屬性（CSS 變量）

- **定義**：CSS 自定義屬性，也稱爲 CSS 變量，是由 CSS 作者定義的包含要在整個文檔中重用的特定值的實體。 它們是一個強大的特性，可以實現更高效、可維護和靈活的樣式表。 自定義屬性在創建主題設計時特別有用。 你可以爲不同主題定義一組屬性：

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

- **定義**：`@property` 規則是一個強大的 CSS 特性，它允許開發人員定義自定義屬性，從而更好地控制它們的行爲，包括它們的動畫方式和初始值。

```css
@property --property-name {
  syntax: '<type>';
  inherits: true | false;
  initial-value: <value>;
}
```

- **`--property-name`**：是你定義的自定義屬性的名稱。 像所有自定義屬性一樣，它必須以兩個連字符開始。 `--property-name` 可以是 `<color>`、`<length>`、`<number>`、`<percentage>` 或更復雜的類型。
- **`syntax`**：定義屬性的類型。
- **`inherits`**：指定屬性是否應該從父元素繼承它的值。
- **`initial-value`**：設置屬性的默認值。
- **使用 `@property` 規則的漸變的示例**：這個示例創建了一個漸變，當元素被懸停在上面時平滑地應用動畫。

```html
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

- **回退**：在使用自定義屬性時，可以調用 `var()` 函數提供一個回退值，就像使用標準自定義屬性一樣：

```css
.button {
  background-color: var(--main-color, #3498db);
}
```

# --assignment--

複習 CSS 變量主題和概念。
