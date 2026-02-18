---
id: 66ed8fa2f45ce3ece4053eab
title: CSS 基礎測驗
challengeType: 8
dashedName: quiz-basic-css
---

# --description--

要通過測驗，你必須在以下 20 題中正確回答至少 18 題。

# --quizzes--

## --quiz--

### --question--

#### --text--

CSS 代表什麼？

#### --distractors--

階層式樣式腳本

---

串接樣式腳本

---

蓖麻鼠尾草風格

#### --answer--

階層式樣式表

### --question--

#### --text--

以下哪一項是正確的 CSS 規則？

#### --distractors--

`p=red`

---

`p (color: red)`

---

`{p color: red;}`

#### --answer--

`p {color: red;}`

### --question--

#### --text--

`<meta name="viewport">` 有什麼作用？

#### --distractors--

它將外部樣式表聯結到網頁以實現響應式設計。

---

它指定搜尋引擎用來索引網頁的詮釋資料。

---

它指定網頁上使用的字元編碼。

#### --answer--

它控制網頁在不同螢幕尺寸上的形狀和大小。

### --question--

#### --text--

哪一種語法是正確用於行內 CSS？

#### --distractors--

`<p color =  blue></p>`

---

`<p><style = blue></p>`

---

`p {color: blue;}`

#### --answer--

`<p style="color: blue;"></p>`

### --question--

#### --text--

使用內部 CSS 時，`style` 元素放置在 HTML 的哪裡？

#### --distractors--

在 `meta` 元素中。

---

在 `script` 元素中。

---

在 `body` 元素中。

#### --answer--

在 `head` 元素中。

### --question--

#### --text--

在 CSS 中設定寬度和高度時，哪一條規則是正確的？

#### --distractors--

`height-width: 50px;`

---

`width-and-height: 50px;`

---

`flex-width: 50px; flex-height: 50px;`

#### --answer--

`width: 50px; height: 50px;`

### --question--

#### --text--

哪一個選擇器能正確地只在 `div` 內標的 `h1` 元素？

#### --distractors--

`div, h1 {}`

---

`div ~ h1 {}`

---

`div + h1 {}`

#### --answer--

`div h1 {}`

### --question--

#### --text--

哪一個選擇器是正確用來標的 `footer` 的直接子元素？

#### --distractors--

`footer ~ ul {}`

---

`footer + ul {}`

---

`footer ul {}`

#### --answer--

`footer > ul {}`

### --question--

#### --text--

哪一個選擇器是正確的，用來標的 `img` 的下一個兄弟元素？

#### --distractors--

`img h1 {}`

---

`img > h1 {}`

---

`img ~ h1 {}`

#### --answer--

`img + h1 {}`

### --question--

#### --text--

哪一個選擇器是正確用來標的所有在 `img` 元素之前的兄弟元素？

#### --distractors--

`img > caption {}`

---

`img caption {}`

---

`img + caption {}`

#### --answer--

`img ~ caption {}`

### --question--

#### --text--

關於區塊層級元素，哪個述語是正確的？

#### --distractors--

區塊層級元素預設水平堆疊。

---

`width` 和 `height` 屬性通常不適用於區塊層級元素，除非你將它們的 `display` 屬性設為 `inline-block`。

---

區塊層級元素內不能包含行內元素。

#### --answer--

區塊層級元素會從新行開始，並佔據其容器的整個寬度。

### --question--

#### --text--

使用 `inline-block` 值時，哪個述語為真？

#### --distractors--

元素垂直堆疊，始終佔滿其容器的整個寬度。

---

元素水平對齊但無法套用垂直內距或外距。

---

元素會遵守寬度和高度設定，但不能包含其他元素。

#### --answer--

元素保留行內流程，但允許設定寬度和高度。

### --question--

#### --text--

給定以下選擇器，哪一個具有最高的特異性？

#### --distractors--

`div`

---

`h1`

---

`p`

#### --answer--

`#id`

### --question--

#### --text--

給定以下選擇器，哪一個具有最低的特異性？

#### --distractors--

`#id`

---

`.class`

---

`div h1`

#### --answer--

`h1`

### --question--

#### --text--

`*` 選擇器的作用是什麼？

#### --distractors--

標的頁面上的某些元素。

---

標的頁面上具有子元素的元素。

---

標的所有頁面上的 `p` 元素。

#### --answer--

標的頁面上的所有元素。

### --question--

#### --text--

`!important` 在 CSS 中的作用是什麼？

#### --distractors--

它使 CSS 規則僅適用於行內樣式，並忽略在外部或內部樣式表中定義的樣式。

---

它會停用套用到同一元素的所有其他 CSS 屬性，有效地使它成為唯一影響該元素樣式的規則。

---

它適用於某個選擇器或元素群組。

#### --answer--

它會改寫該選擇器套用到該屬性的任何其他值。

### --question--

#### --text--

CSS Cascade 演算法如何運作？

#### --distractors--

它根據宣告順序決定元素的樣式，無論其他因素為何。

---

它僅根據書寫順序套用樣式，忽略特異性。

---

它套用優先考慮特異性的樣式，忽略來源和相關性。

#### --answer--

它根據特異性和宣告的順序決定元素的樣式。

### --question--

#### --text--

哪個規則會對所有邊緣套用 `32px` 的外距？

#### --distractors--

`margin-top: 32px;`

---

`margin: 32px 0;`

---

`margin: 0 32px;`

#### --answer--

`margin: 32px;`

### --question--

#### --text--

哪個規則將 `24px` 的內邊距套用到上下？

#### --distractors--

`padding: 24px;`

---

`padding-top-bottom: 24px;`

---

`padding: 0 24px;`

#### --answer--

`padding: 24px 0;`

### --question--

#### --text--

對於 `padding: 10px 20px 30px 40px`，值的正確順序是什麼？

#### --distractors--

右、上、左、下。

---

上、左、下、右。

---

上、下、右、左。

#### --answer--

上、右、下、左。

## --quiz--

### --question--

#### --text--

CSS 規則的主要零件是什麼？

#### --distractors--

元素和屬性

---

樣式和樣式表

---

腳本和值

#### --answer--

選擇器和宣告區塊

### --question--

#### --text--

以下哪一項是 CSS 規則的正確語法？

#### --distractors--

```css
body [
  font-family: Arial;
]
```

---

```css
font-family {
  body: Arial;
}
```

---

```css
body {
  font-family; Arial:
}
```

#### --answer--

```css
body {
  font-family: Arial;
}
```

### --question--

#### --text--

什麼是瀏覽器的預設樣式？

#### --distractors--

具有相同樣式屬性的 HTML 元素，無論瀏覽器為何。

---

它們是你必須用於特定 HTML 元素的強制樣式。

---

它們是各種瀏覽器的色彩主題。

#### --answer--

瀏覽器自動套用的 CSS 規則。

### --question--

#### --text--

`width` 屬性的預設值是什麼？

#### --distractors--

`none`

---

`0`

---

`100%`

#### --answer--

`auto`

### --question--

#### --text--

`min-height` 屬性指定什麼？

#### --distractors--

元素的起始高度。

---

元素的高度。

---

元素的最大高度。

#### --answer--

元素的最小高度。

### --question--

#### --text--

以下關於通用選擇器 `*`，哪一項是正確的？

#### --distractors--

它具有最高的特異性，因為它可以為頁面上的所有元素設定樣式。

---

它對特異性值的所有零件貢獻 1。 

---

它無法跨不同瀏覽器重設樣式。

#### --answer--

它具有所有選擇器中最低的特異性值。

### --question--

#### --text--

哪一個選擇器正確標的有序 `li` 元素？

#### --distractors--

`li {}`

---

`ul li {}`

---

`ol + li {}`

#### --answer--

`ol li {}`

### --question--

#### --text--

哪一個選擇器會標的 `div` 元素中的段落元素？

#### --distractors--

`p div {}`

---

`div, p {}`

---

`p, div {}`

#### --answer--

`div p {}`

### --question--

#### --text--

`margin` 套用樣式屬性的範圍在哪裡？

#### --distractors--

元素內的空間。

---

內容與邊框之間。

---

在元素的邊框上。

#### --answer--

元素外部的空間。

### --question--

#### --text--

`padding` 屬性在哪裡套用樣式？

#### --distractors--

在元素 `border` 和周圍元素之間。

---

元素外部的空間。

---

在元素的邊框上。

#### --answer--

元素內的空間。

### --question--

#### --text--

關於區塊層次元素，哪一個述語是錯誤的？

#### --distractors--

它們可以拉伸以適應其容器的寬度。

---

常見的區塊層次元素包括 `div`、`paragraph` 和 `section`。

---

區塊層級元素會從新行開始，並佔據其容器的整個寬度。

#### --answer--

它們無法佔用可用的全寬，因為它們被阻止這麼做。

### --question--

#### --text--

使用 `inline-block` 值時，哪個述語是錯誤的？

#### --distractors--

`inline-block` 元素的行為類似行內元素。

---

它們可以有 `width` 和 `height` 屬性。

---

元素保留行內流程，但允許設定 `width` 和 `height`。

#### --answer--

它們不會與行內或區塊層級元素共享屬性。

### --question--

#### --text--

關於 `!important` 關鍵字，哪一項是正確的？

#### --distractors--

它們用於為重要的 CSS 屬性添加註解。

---

它們確保 CSS 屬性具有正確的語法。

---

它們讓 CSS 規則更容易維護。

#### --answer--

它們改寫其他選擇器的特異性。

### --question--

#### --text--

在 `class` 選擇器名稱前面的是什麼字元？

#### --distractors--

`#`

---

`$`

---

`*`

#### --answer--

`.`

### --question--

#### --text--

關於行內層級元素，哪一項是錯誤的？

#### --distractors--

它們只佔用所需的空間。

---

它們不會從新行開始。

---

常見的行內元素包括 `span` 和 `img`。

#### --answer--

它們總是從新的一行開始。

### --question--

#### --text--

內部 CSS 樣式在哪裡被存取？

#### --distractors--

它們是對專案很重要的樣式，因此不會對外共享。

---

由於它們構成專案的核心樣式，因此會存檔在 `styles.css` 檔案中，以便其他網頁可以存取它們。

---

當只有一個網頁需要樣式時，它們會儲存在 `body` 元素內。

#### --answer--

它們寫在 `head` 元素內的 `style` 區段中。

### --question--

#### --text--

使用縮寫語法時，套用 `padding` 屬性的順序是什麼？ 

#### --distractors--

`top`、`bottom`、`left`、`right`

---

`left`、`right`、`top`、`bottom`

---

`right`、`top`、`left`、`bottom`

#### --answer--

`top`、`right`、`bottom`、`left`

### --question--

#### --text--

使用縮寫語法時，套用 `margin` 屬性的順序為何？ 

#### --distractors--

`left`、`right`、`top`、`bottom`

---

`right`、`top`、`left`、`bottom`

---

`top`、`bottom`、`left`、`right`

#### --answer--

`top`、`right`、`bottom`、`left`

### --question--

#### --text--

行內 CSS 樣式用於什麼？

#### --distractors--

它們僅用於為行內元素設計樣式。

---

它們僅在所有元素都出現在瀏覽器視窗的同一行時用於設定樣式。

---

它們用於決議關注點分離的問題。

#### --answer--

它們用於直接在元素內部設定樣式，而非使用內部或外部的 CSS。

### --question--

#### --text--

ID 選擇器前面有什麼符號？

#### --distractors--

`.`

---

`*`

---

`$`

#### --answer--

`#`

