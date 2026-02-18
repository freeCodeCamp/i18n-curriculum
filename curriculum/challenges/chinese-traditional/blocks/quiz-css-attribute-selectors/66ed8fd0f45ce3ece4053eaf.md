---
id: 66ed8fd0f45ce3ece4053eaf
title: CSS 屬性選擇器測驗
challengeType: 8
dashedName: quiz-css-attribute-selectors
---

# --description--

要通過測驗，你必須正確回答以下 10 題中的至少 9 題。

# --quizzes--

## --quiz--

### --question--

#### --text--

CSS 屬性選擇器的用途是什麼？

#### --distractors--

根據元素的頁籤名稱套用樣式。

---

根據元素的類別名稱套用樣式。

---

根據其父元素為元素套用樣式。

#### --answer--

根據元素的屬性套用樣式。

### --question--

#### --text--

以下哪一項不會被此 CSS 選擇器選取？

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

哪一個 CSS 選擇器符合所有 `lang` 屬性設為 `"fr"` 的 `p` 元素？

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

哪一個 CSS 選擇器符合所有具有 `href` 屬性的 `a` 元素？

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

哪一個 CSS 選擇器符合所有使用大寫羅馬數字的有序列表？

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

`data-lang` 屬性通常用於什麼？

#### --distractors--

指定文件的語言。

---

定義文件的字元編碼。

---

根據其父元素設定元素的語言。

#### --answer--

根據這個訂製資料屬性套用樣式到元素。

### --question--

#### --text--

你應該使用哪個 CSS 選擇器來為 `img` 元素添加樣式，僅當它們的 `alt` 屬性相等於 `"code"`？

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

哪一個 CSS 選擇器符合具有數字編號型別的有序列表？

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

你會使用下列哪一個 CSS 選擇器來為同時具有 `href` 和 `title` 屬性的 `a` 元素設定樣式？

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

如果你正在為餐廳開發網站，並且想要為所有具有 `data-special` 屬性且擁有 `menu-item` 類別的元素設計樣式，你會使用哪個 CSS 選擇器？

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

