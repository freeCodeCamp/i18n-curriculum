---
id: 66f1aeb60b11aec5abe83c2e
title: CSS 函式庫與框架測驗
challengeType: 8
dashedName: quiz-css-libraries-and-frameworks
---

# --description--

要通過測驗，你必須正確回答以下 10 題中的至少 9 題。

# --quizzes--

## --quiz--

### --question--

#### --text--

什麼是 CSS 框架？

#### --distractors--

一個用來修正 CSS 錯誤的工具。

---

一個用於檢查 CSS `files` 的工具。

---

CSS 檔案的格式化工具。

#### --answer--

一個用於 CSS 樣式的函式庫、程式庫。

### --question--

#### --text--

以下哪一項是流行的以實用工具為先的 CSS 框架？

#### --distractors--

模板 CSS

---

載入 CSS

---

最小化 CSS

#### --answer--

Tailwind CSS

### --question--

#### --text--

CSS 框架的缺點是什麼？

#### --distractors--

組件太少。

---

沒有訂製選項。

---

改進的瀏覽器支援。

#### --answer--

可能會使 CSS 檔案膨脹。

### --question--

#### --text--

SCSS 代表什麼？

#### --distractors--

超級串接樣式表。

---

結構化 CSS。

---

簡單的 CSS。

#### --answer--

Sassy CSS。

### --question--

#### --text--

以下哪一項是 Sass 的特性？

#### --distractors--

註解

---

CSS 程式碼檢查。

---

行內 CSS。

#### --answer--

混入物

### --question--

#### --text--

以下哪一項是使用 Tailwind CSS 中工具類別的正確方式？

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

CSS 框架的兩種型別是什麼？

#### --distractors--

平板優先 CSS 框架和基於組件的 CSS 框架。

---

以實用為先的 CSS 框架和延遲載入 CSS 框架。

---

極簡 CSS 框架和實用優先 CSS 框架。

#### --answer--

以實用為先的 CSS 框架和基於組件的 CSS 框架。

### --question--

#### --text--

SCSS 的副檔名是什麼？

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

以下哪一種方式是在 SCSS 中定義 `variable` 的正確方法？

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

以下哪一種是定義 mixin 的正確方式？

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

