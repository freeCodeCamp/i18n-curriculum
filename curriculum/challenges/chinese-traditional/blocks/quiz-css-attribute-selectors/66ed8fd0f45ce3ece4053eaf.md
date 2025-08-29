---
id: 66ed8fd0f45ce3ece4053eaf
title: CSS 屬性選擇器測驗
challengeType: 8
dashedName: quiz-css-attribute-selectors
---

# --description--

要通過測驗，你必須正確回答以下 10 道題中的至少 9 題。

# --quizzes--

## --quiz--

### --question--

#### --text--

CSS 屬性選擇器用於做什麼？

#### --distractors--

根據標籤名稱爲元素應用樣式。

---

根據元類名爲元素應用樣式。

---

根據父元素爲元素應用樣式。

#### --answer--

根據屬性爲元素應用樣式。

### --question--

#### --text--

此 CSS 選擇器不會選擇以下哪項？

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

哪個 CSS 選擇器可匹配所有 `lang` 屬性設置爲 `"fr"` 的 `p` 元素？

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

哪個 CSS 選擇器可匹配所有帶有 `href` 屬性的 `a` 元素？

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

哪個 CSS 選擇器可匹配所有大寫羅馬數字的有序列表？

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

`data-lang` 屬性通常用於什麼用途？

#### --distractors--

指定文件的語言。

---

定義文件的字符編碼。

---

根據父元素設置元素的語言。

#### --answer--

根據此自定義數據屬性爲元素應用樣式。

### --question--

#### --text--

只有當 `img` 元素的 `alt` 屬性等於 `"code"` 時，你纔可以使用的對其進行樣式設置的 CSS 選擇器是哪個？

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

哪個 CSS 選擇器能匹配數字編號類型的有序列表？

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

以下哪個 CSS 選擇器可以爲同時具有 `href` 和 `title` 屬性的 `a` 元素設計樣式？

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

如果你正在爲一家餐廳開發網站，希望爲所有帶有 `data-special` 屬性的 `menu-item` 類元素設計樣式，你會使用哪個 CSS 選擇器？

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

