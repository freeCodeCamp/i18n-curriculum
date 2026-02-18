---
id: 672bbe9171a5cca90f2edeea
title: 元素使用者動作偽類的範例有哪些？
challengeType: 19
dashedName: what-are-examples-of-element-user-action-pseudo-classes
---

# --interactive--

使用者回授是網頁設計中關鍵的元素。例如，當使用者與網站上的元素互動時，像是暫留在按鈕上或點擊聯結，讓使用者收到視覺提示非常重要。這種回授有助於使用者了解互動元素的狀態，例如指示聯結是否已被造訪。

CSS 中的使用者動作偽類是特殊關鍵字，允許你提供這種類型的回授，而不需要 JavaScript 或其他程式設計語言。

這些偽類別包括 `:hover`、`:active`、`:focus` 和 `:visited` 等。它們可讓你根據使用者互動改變元素的外觀，提升整體使用者體驗。

讓我們深入了解一些我們擁有的使用者動作偽類別，並看看它們如何運作。

`:active` 偽類別會在元素被使用者作用時套用樣式。 例如，當使用者點擊按鈕或聯結時，它會提供即時的視覺回授，讓使用者知道他們的操作已被識別。

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a href="#">Example link</a>
```

```css
a:active {
  color: crimson;
}
```

:::

當使用者使用滑鼠或其他指標裝置暫留在元素上時，會觸發 `:hover` 偽類別。開發者經常使用它為按鈕、連結或任何應該回應使用者注意的元素創建視覺回授。這裡有一個使用者在點擊前會暫留的按鈕：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button class="btn">Hover Over Me</button>
```

```css
.btn:hover {
  background-color: darkgreen;
  color: white;
  cursor: pointer;
}
```

:::

`:focus` 偽類在元素獲得焦點時套用樣式，通常透過鍵盤導覽或使用者點擊表單輸入時觸發。這不僅是回授，也是無障礙設計中關鍵的一環。它確保嚴重依賴鍵盤的使用者能輕鬆辨識他們正在互動的元素。 

以下是一個輸入欄、欄位的範例，當點擊或透過鍵盤導覽時會獲得焦點：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <input type="text" />
</form>
```

```css
input:focus {
  outline: 2px solid darkgreen;
  border-radius: 4px;
}
```

:::

`:visited` 偽類別標的使用者已造訪的聯結。這對於幫助使用者區分他們已經造訪過的頁面和尚未造訪的頁面非常有用。以下是一個範例，示範當聯結被造訪時，將錨點文字顏色改為青色：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a href="https://www.example.com" target="_blank">Visit Example.com</a>
```

```css
a:visited {
  color: cyan;
}
```

:::

CSS 中的 `:checked` 偽類允許你在選取（勾選）時為表單元素如核取方塊和圓鈕設定樣式。即使瀏覽器為這些元素提供預設樣式，這個偽類仍然有助於訂製它們的外觀以提升使用者體驗。

這裡有一個範例，包含一個用於同意網站條款的核取方塊。 

**注意**：此範例中的部分 CSS 使用了尚未涵蓋的屬性。這只是為了讓你了解如何創建訂製的核取方塊。你將在未來的課程和工作坊中學習這些內容的運作方式。 

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <label>
  Agree <input class="checkbox" type="checkbox" />
  </label>
</form>
```

```css
.checkbox {
  appearance: none;
  width: 18px;
  height: 18px;
  border: 2px solid #ccc;
  border-radius: 4px;
  display: inline-block;
  position: relative;
  cursor: pointer;
  transition: all 0.25s ease;
  vertical-align: middle; 
}

.checkbox:hover {
  border-color: #888;
}

.checkbox:checked {
  background-color: #4caf50;
  border-color: #4caf50;
}

.checkbox:checked::after {
  content: "";
  position: absolute;
  left: 4px;
  top: 0px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 2px 2px 0;
  transform: rotate(45deg);
}

.checkbox:focus {
  outline: 2px solid #90caf9;
  outline-offset: 2px;
}

```

:::

在此範例中，我們使用設定為 `none` 的 `appearance` 屬性來移除瀏覽器對核取方塊輸入所套用的預設樣式。當使用者勾選該方塊時，背景顏色將會是 `green`。

其他動作偽類的範例有：

- `:focus-within`：當元素本身或其任何子孫元素獲得焦點時，套用樣式。
- `:enabled`：用於標的目前已啟用的表單按鈕或其他元素。
- `:disabled`：用於標的已停用的表單按鈕或其他元素。
- `:target`：用於將樣式套用到作為 URL 片段標的（URL 中 `#` 符號後的零件）的元素。

# --questions--

## --text--

使用者動作偽類允許你做什麼？

## --answers--

它們啟用動畫和過渡效果。

### --feedback--

思考如何純粹用 CSS 與使用者互動。

---

它們允許你動態修改 DOM 結構。

### --feedback--

思考如何純粹用 CSS 與使用者互動。

---

它們讓你在不依賴 JavaScript 的情況下，向使用者提供回授。

---

它們讓你為列表中的最後一個元素設計樣式。

### --feedback--

思考如何純粹用 CSS 與使用者互動。

## --video-solution--

3

## --text--

`CSS` 中的 `:checked` 偽類做什麼？

## --answers--

當元素被停用時，它會被選取。

### --feedback--

思考表單如何控制代碼使用者的選擇。

---

當元素被暫留時，它會被選取。

### --feedback--

思考表單如何控制代碼使用者的選擇。

---

它會為已勾選的核取方塊或圓鈕元素套用樣式。

---

當元素獲得焦點時，它會套用樣式。

### --feedback--

思考表單如何控制代碼使用者的選擇。

## --video-solution--

3

## --text--

`:focus` 偽類別的作用是什麼？

## --answers--

當元素被滑鼠暫留時，它會被選取。

### --feedback--

思考使用者如何使用鍵盤瀏覽表單。

---

當元素獲得焦點時，通常透過鍵盤導航或點擊，會套用樣式。

---

它會在表單提交後選取一個元素。

### --feedback--

思考使用者如何使用鍵盤瀏覽表單。

---

當元素被停用時，會套用樣式。

### --feedback--

思考使用者如何使用鍵盤瀏覽表單。

## --video-solution--

2
