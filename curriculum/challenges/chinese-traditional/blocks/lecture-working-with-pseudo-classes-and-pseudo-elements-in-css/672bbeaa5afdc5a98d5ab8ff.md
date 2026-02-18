---
id: 672bbeaa5afdc5a98d5ab8ff
title: 位置偽類的範例有哪些？
challengeType: 19
dashedName: what-are-examples-of-location-pseudo-classes
---

# --interactive--

位置偽類用於為目前文件中被標的的連結和元素設定樣式。它們提供一種根據連結是否已造訪或元素是否目前處於焦點來套用樣式的方法。

位置偽類的範例有：

- `:link`
- `:visited`
- `:any-link`
- `:local-link`
- `:target`

讓我們更深入地了解這些偽類別中的每一個。

`:link` 偽類別允許你標的網頁上所有未造訪的連結。你可以使用它在使用者點擊之前，為連結設定不同的樣式。<dfn>例如</dfn>，你可能想要將所有未造訪的連結設為藍色或你網站的主要顏色：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:link {
  color: magenta;
}
```

:::

在這種情況下，任何使用者尚未點擊的聯結將顯示為洋紅色。一旦使用者點擊該聯結，` :link` 樣式將不再適用，` :visited` 偽類別會接手。` :visited` 偽類別會在使用者點擊聯結後生效，因此你可以用它來標的使用者已經點擊過的聯結。 

以下是將已訪問聯結狀態更改為顏色 `purple` 的範例：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:visited {
  color: purple;
}
```

:::

`:visited` 偽類別幫助使用者區分他們已造訪過的聯結和未造訪過的聯結。

`:any-link` 偽類是 `:link` 和 `:visited` 偽類的組合。因此，它會匹配任何具有 `href` 屬性的錨點元素，無論是否已造訪。

以下是將 `:any-link` 偽類的聯結顏色更改為 `crimson` 的範例：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:any-link {
  color: crimson;
}
```

:::

`:local-link` 偽類別標的指向相同文件的連結。當你想區分內部連結與外部連結時，它會很有用。目前，沒有瀏覽器支援 `:local-link` 偽類別。

`:target` 偽類別會選取符合目前 URL 片段識別字的元素，例如 `#section1`。它對於具有頁內導覽的頁面非常有用。

這是一個表述頁內導覽的 HTML 範例。CSS 使用 `:target` 偽類別來為符合使用者導覽位置的區段套用樣式：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<nav id="table-of-contents">
  <ul>
    <li><a href="#section1">Introduction</a></li>
    <li><a href="#section2">Features</a></li>
  </ul>
</nav>

<section id="section1">
  <h2>Introduction</h2>
  <p>This is the introduction section.</p>
</section>

<section id="section2">
  <h2>Features</h2>
  <p>This section describes the features.</p>
</section>
```

```css
section:target {
  background-color: green;
  border: 2px solid green;
  padding: 10px;
}
```

:::

當使用者點擊其中一個導覽聯結時，該區段的背景顏色將變為綠色。

# --questions--

## --text--

哪一個偽類別允許你為符合目前 URL 片段識別字（例如 `#section1`）的元素設定樣式？

## --answers--

`:hover`

### --feedback--

思考你如何在透過頁內 `link` 導覽時凸顯標示特定區段。

---

`:focus`

### --feedback--

思考你如何在透過頁內 `link` 導覽時凸顯標示特定區段。

---

`:target`

---

`:checked`

### --feedback--

思考你如何在透過頁內 `link` 導覽時凸顯標示特定區段。

## --video-solution--

3

## --text--

位置偽類在什麼時候特別有用？

## --answers--

當根據元素的兄弟關係來設定樣式時。

### --feedback--

思考你如何根據使用者互動來為 `link` 和標的元素設計樣式。

---

當根據聯結是否已造訪或元素目前是否處於焦點狀態來套用樣式時。

---

當根據其父元素的屬性來設定元素樣式時。

### --feedback--

思考你如何根據使用者互動來為 `link` 和標的元素設計樣式。

---

當動態調整網頁的版面配置時。

### --feedback--

思考你如何根據使用者互動來為 `link` 和標的元素設計樣式。

## --video-solution--

2

## --text--

哪一個偽類別是設計用來標的指向相同文件的連結，但目前沒有任何瀏覽器支援？

## --answers--

`:any-link`

### --feedback--

考慮用於區分內部聯結與外部聯結的偽類，儘管它尚未被支援。

---

`:local-link`

---

`:visited`

### --feedback--

考慮用於區分內部聯結與外部聯結的偽類，儘管它尚未被支援。

---

`:target`

### --feedback--

考慮用於區分內部聯結與外部聯結的偽類，儘管它尚未被支援。

## --video-solution--

2
