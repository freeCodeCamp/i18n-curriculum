---
id: 672bccc8ea33bad87abb3c56
title: content-box 和 border-box 之間的差異是什麼？
challengeType: 19
dashedName: what-is-the-difference-between-content-box-and-border-box
---

# --interactive--

`box-sizing` 屬性可以設定為 `content-box` 或 `border-box`，以控制元素的寬度和高度如何計算。

此屬性可以設定在通用選擇器（`*`）上，以套用到文件中的所有元素：

```css
* {
  box-sizing: border-box;
}
```

`box-sizing` 屬性的值預設為 `content-box`，但如果你需要，可以選擇 `border-box`。我們將先探討 `content-box`，然後再進入 `border-box`。

要了解這些模型如何運作，你需要熟悉 CSS 盒模型中的四個核心概念。讓我們快速回顧它們。

- 內容區域是元素內容所佔據的空間。
- 內距是內容區域與邊框之間的空間。
- 邊框是包圍內容區域和內距的輪廓。
- 外邊距是位於邊框外側的空間，用來將該元素與其他元素分開。

在 `content-box` 模型中，你為元素設定的寬度和高度決定內容區域的尺寸，但不包含內距、邊框或外距。當你需要精確控制內容區域時，請使用 `content-box`。當你設定 `width` 和 `height` 時，你只是在設定內容本身的大小。

要找出元素的總寬度，你需要將左側和右側的內距，以及左側和右側的邊框相加。同樣地，元素的總高度可以透過將內容高度、上方和下方的內距，以及上方和下方的邊框相加來計算。

例如，這裡我們有一個針對所有 `div` 元素的 CSS 型別選擇器。 

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div></div>
```

```css
div {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
}
```

:::

在這種情況下，如果使用 `content-box`，內容區域將是 300px × 200px。總呈現大小包含內距和邊框——例如，總寬度 = 300px（內容）＋ 40px（內距）＋ 8px（邊框）＝ 348px；總高度的計算方式相同。

太好了！現在讓我們來探索 `border-box`。它的不同之處在於你設定的寬度和高度包含元素的內容、內距和邊框（但不包含外距）。當你希望元素的總尺寸保持固定，即使內距或邊框改變時，請使用 `border-box` — 這在響應式佈局中經常很有幫助。

使用 `border-box` 時，內距和邊框包含在元素指定的大小內。你設定的 `width` 和 `height` 會成為元素的總尺寸：內容＋內距＋邊框；外距則仍然排除在外。

在以下範例中，有兩個 `div` 元素具有相同的尺寸，但 `box-sizing` 值不同。請注意，這會導致在瀏覽器中顯示出不同的總尺寸：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div class="box" id="red-div"></div>
<div class="box" id="blue-div"></div>
```


```css
.box {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
  margin: 10px;
}

#red-div {
  box-sizing: content-box;
  background-color: red;
}

#blue-div {
  box-sizing: border-box;
  background-color: blue;
}
```

:::

你可以看到它們兩者都有相同的 `width`、`height`、`padding`、`border` 和 `margin`。唯一的差異在於顏色和 `box-sizing` 屬性的值。這個小差異對最終尺寸有非常重要的影響。 

在 `content-box` 和 `border-box` 之間的選擇，實際上取決於你的專案的具體需求。雖然 `border-box` 因其簡單性和彈性而越來越受歡迎，但理解這兩種模型對於實作有效的 CSS 版面配置非常重要。

# --questions--

## --text--

以下哪一項是大多數瀏覽器中 `box-sizing` 屬性的預設值？

## --answers--

`content-box`

---

`border-box`

### --feedback--

思考元素大小的預設行為。

---

`padding-box`

### --feedback--

思考元素大小的預設行為。

---

`margin-box`

### --feedback--

思考元素大小的預設行為。

## --video-solution--

1

## --text--

使用 `border-box` 建立響應式佈局的主要優點是什麼？

## --answers--

這使計算變得更複雜。

### --feedback--

思考 `border-box` 模型如何在指定的 `width` 和 `height` 內處理 `padding` 和 `border`。

---

它允許對元素尺寸進行更精確的控制。

### --feedback--

思考 `border-box` 模型如何在指定的 `width` 和 `height` 內處理 `padding` 和 `border`。

---

它確保元素無論 `padding` 或 `border` 的變化，都能維護其指定的尺寸。

---

它改善了瀏覽器相容性。

### --feedback--

思考 `border-box` 模型如何在指定的 `width` 和 `height` 內處理 `padding` 和 `border`。

## --video-solution--

3

## --text--

在 `content-box` 模型中，元素指定的 `width` 表述什麼？

## --answers--

元素的總 `width`，包括 `padding`、`border` 和 `margin`。

### --feedback--

思考 `content-box` 模型中內容區域與整體元素尺寸之間的關係。

---

內容區域的 `width`。

---

`border` 的 `width`。

### --feedback--

思考 `content-box` 模型中內容區域與整體元素尺寸之間的關係。

---

`padding` 的 `width`。

### --feedback--

思考 `content-box` 模型中內容區域與整體元素尺寸之間的關係。

## --video-solution--

2
