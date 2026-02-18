---
id: 66ed8fc9f45ce3ece4053eae
title: CSS 動畫測驗
challengeType: 8
dashedName: quiz-css-animations
---

# --description--

要通過測驗，你必須在以下 20 題中正確回答至少 18 題。

# --quizzes--

## --quiz--

### --question--

#### --text--

CSS 中 `transform` 屬性的用途是什麼？

#### --distractors--

要更改元素的可見性。

---

為文字套用視覺效果。

---

設定元素的尺寸。

#### --answer--

要修改元素的位置、大小和形狀。

### --question--

#### --text--

CSS 的 `animation-direction` 屬性如何影響動畫？

#### --distractors--

它指定動畫是否應該重複。

---

它設定動畫的持續時間。

---

它定義動畫的速度。

#### --answer--

它定義動畫應該如何播放。

### --question--

#### --text--

哪個 CSS 屬性會讓動畫執行 3 次？

#### --distractors--

`animation-repeat: 3`

---

`animation-loop: 3`

---

`animation-delay: 3`

#### --answer--

`animation-iteration-count: 3`

### --question--

#### --text--

哪一個 CSS timing 函式（程式）讓動畫從開始到結束以一致的速度執行？

#### --distractors--

`ease`

---

`ease-in`

---

`ease-in-out`

#### --answer--

`linear`

### --question--

#### --text--

`@keyframes` 在 CSS 中定義什麼？

#### --distractors--

CSS 漸層的顏色。

---

CSS 旋轉的角度。

---

元素的尺寸。

#### --answer--

CSS 動畫的階段。

### --question--

#### --text--

CSS 中 `translateX()` 函式（程式）的用途是什麼？

#### --distractors--

它會改變元素的不透明度。

---

它會旋轉該元素。

---

它會垂直重新定位該元素。

#### --answer--

它會水平重新定位該元素。

### --question--

#### --text--

以下哪一項不是 CSS 動畫的潛在問題？

#### --distractors--

它們可能會對某些使用者造成不適或實體上的傷害。

---

使用者可能會覺得它們分心。

---

過度使用可能導致效率、性能不佳。

#### --answer--

它們可以提升使用者體驗。

### --question--

#### --text--

`@keyframes` at-rule 定義在哪裡？

#### --distractors--

在 HTML `file` 的 `body` 元素內。

---

在 HTML `file` 的 `head` 元素內。

---

在 CSS 類別定義式內。

#### --answer--

在最頂層，任何 CSS 選擇器之外。

### --question--

#### --text--

哪個 CSS 屬性允許你暫停和恢復動畫？

#### --distractors--

`animation-timing-function`

---

`animation-delay`

---

`animation-direction`

#### --answer--

`animation-play-state`

### --question--

#### --text--

在 CSS 中，應該為 `animation-name` 屬性指定什麼值？

#### --distractors--

動畫持續時間（秒）。

---

動畫使用的計時函式（程式）。

---

動畫開始前的延遲時間（秒）。

#### --answer--

由 `@keyframes` 定義的動畫名稱。

### --question--

#### --text--

`@keyframe` 這個 at-rule 對動畫元素有什麼作用？

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

它將元素順時針旋轉 90 度。

---

它將元素的顏色變為藍色。

---

它將元素縮放到初始大小的 50％，然後再縮放到初始大小的 100％。

#### --answer--

它將元素從起始點水平移動從 -50px 到 100px。

### --question--

#### --text--

哪個 CSS 屬性定義動畫隨時間的進展方式？

#### --distractors--

`animation-delay`

---

`animation-fill-mode`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

哪個 CSS 屬性用來指定動畫應該在 5 秒內完成？

#### --distractors--

```css
animation-name: 5s;
```

---

```css
animation-delay: 5s;
```

---

```css
animation-timing-function: 5s;
```

#### --answer--

```css
animation-duration: 5s;
```

### --question--

#### --text--

在以下 CSS `@keyframe` at-rule 中，`50%` 表述什麼？

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  50% {
    transform: translateX(25px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

動畫的起點。

---

動畫的結束點。

---

動畫的速度。

#### --answer--

動畫的中途點。

### --question--

#### --text--

當套用屬性 `transform: translateX(200px);` 時會發生什麼？

#### --distractors--

該元素將向左移動 200px。

---

該元素將向下移動 200px。

---

該元素將順時針旋轉 200 度。

#### --answer--

該元素將向右移動 200px。

### --question--

#### --text--

如果將 `animation-iteration-count` 設定為 `infinite`，動畫將如何表現？

#### --distractors--

它會執行一次然後停止。

---

它會在第一次迭代後暫停。

---

它會在三次迭代後停止。

#### --answer--

它將無限重複。

### --question--

#### --text--

哪一個 `@keyframes` 選擇器指定動畫的起始點？

#### --distractors--

`50%`

---

`25%`

---

`100%`

#### --answer--

`0%`

### --question--

#### --text--

使用 `animation` 簡寫 CSS 屬性可以指定哪些屬性？

#### --distractors--

只有動畫的名稱。

---

動畫的名稱和持續時間。

---

動畫的名稱、持續時間和延遲。

#### --answer--

所有動畫屬性。

### --question--

#### --text--

哪一個 CSS 屬性用來套用由 `@keyframes` at-rule 定義的動畫？

#### --distractors--

`animation-duration`

---

`apply`

---

`translate`

#### --answer--

`animation`

### --question--

#### --text--

哪個 CSS 屬性允許你設定動畫開始前的時間？

#### --distractors--

`animation-fill-mode`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-delay`

## --quiz--

### --question--

#### --text--

CSS 的 `animation-delay` 屬性有什麼作用？

#### --distractors--

設定動畫持續的時間。

---

指定時間函式（函式、函數）。

---

定義動畫方向。

#### --answer--

延遲動畫的開始。

### --question--

#### --text--

哪一個動畫屬性指定元素在動畫前後應該如何被樣式化？

#### --distractors--

`animation-delay`

---

`animation-direction`

---

`animation-iteration-count`

#### --answer--

`animation-fill-mode`

### --question--

#### --text--

為什麼應該適度使用 CSS 動畫？

#### --distractors--

過多的 CSS 動畫可能導致樣式破損以及不同瀏覽器間樣式不一致。 

---

過多的 CSS 動畫可能導致搜尋引擎結果中的等級降低或不存在。

---

過多的 CSS 動畫會自動導致伺服器當機，並增加安全風險的可能性。 

#### --answer--

過多的 CSS 動畫可能導致效率不佳，並且可能對具有特定存取需求的使用者造成干擾或問題。

### --question--

#### --text--

哪一個動畫屬性決定動畫應該向前播放、向後播放或交替播放？

#### --distractors--

`animation-fill-mode`

---

`animation-delay`

---

`animation-timing-function`

#### --answer--

`animation-direction`

### --question--

#### --text--

哪個 CSS 媒體查詢會偵測使用者是否要求最小動畫或動態效果？

#### --distractors--

`reduce-motion`

---

`min-motion-preference`

---

`motion-preferences`

#### --answer--

`prefers-reduced-motion`

### --question--

#### --text--

哪個屬性設定 `animation` 重複的次數？

#### --distractors--

`animation-duration`

---

`animation-count`

---

`animation-delay`

#### --answer--

`animation-iteration-count`

### --question--

#### --text--

哪一個 CSS 規則用來定義動畫在其持續時間內各個階段的樣式？

#### --distractors--

`@style`

---

`@transition`

---

`@transform`

#### --answer--

`@keyframes`

### --question--

#### --text--

在 `reduced‑motion` 媒體查詢中，哪個宣告會停用過渡效果？

#### --distractors--

`animation: none;`

---

`transition: remove;`

---

`animation-play-state: paused;`

#### --answer--

`transition: none;`

### --question--

#### --text--

`animation-play-state` 屬性允許你做什麼？

#### --distractors--

設定動畫重複的次數。

---

指定動畫完成所需的時間。

---

決定動畫播放的方向。

#### --answer--

暫停並恢復動畫。

### --question--

#### --text--

在處理動畫時，下列哪一項是良好做法？

#### --distractors--

盡可能使用多種閃爍顏色和快速動作來吸引注意力。

---

避免在不同裝置或螢幕尺寸上測試動畫。

---

讓動畫持續盡可能長的時間，以確保使用者注意到它們。

#### --answer--

避免內容每秒閃爍超過 3 次，以防觸發癲癇發作或引起不適。

### --question--

#### --text--

為什麼在 CSS 規則中使用 `!important` 宣告？

#### --distractors--

為防止其他媒體查詢載入。

---

限制樣式只套用到第一個子元素。

---

為了更輕鬆地偵錯 CSS。

#### --answer--

為確保這些規則優先於其他樣式。

### --question--

#### --text--

`animation-iteration-count: 1 !important;` 在 CSS 中確保什麼？

#### --distractors--

動畫已暫停。

---

那些動畫會無限執行。

---

該動畫每個週期反向播放。

#### --answer--

任何迴圈動畫只播放一次。

### --question--

#### --text--

哪個 CSS 屬性用來指定動畫完成所需的時間？

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-duration`

### --question--

#### --text--

哪一個屬性不是 `animation` 簡寫的零件？

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-direction`

#### --answer--

`animation-transform`

### --question--

#### --text--

`@keyframes` 規則定義了什麼？

#### --distractors--

動畫的時間函式（function）。

---

元素的預設狀態。

---

動畫的媒體查詢。

#### --answer--

動畫中不同時間點的樣式序列。

### --question--

#### --text--

`@keyframe` 這個 at-rule 對動畫元素有什麼作用？

```css
@keyframes fade-in {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
```

#### --distractors--

它將元素從 0％ 放大到 100％。

---

它將元素從左移動到右。

---

它將文字顏色變更為黑色。

#### --answer--

它透過逐漸降低透明度使元素淡入。

### --question--

#### --text--

在 keyframes 規則中，`100%` 表現什麼？

#### --distractors--

動畫的開始。

---

中點。

---

緩動函式（程式）。

#### --answer--

動畫結束。

### --question--

#### --text--

哪一個屬性控制 `animation` 在其持續時間內的速度？

#### --distractors--

`animation-duration`

---

`animation-delay`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

開發人員在實作動畫以維護存取性時應該考慮什麼？

#### --distractors--

完全依賴 JavaScript 來處理所有動畫。

---

為你的設計添加頻繁且強烈的動畫以產生衝擊力。

---

只包含**快速且令人驚訝**的效果。

#### --answer--

使用細微且有意圖的效果，尊重偏好，並提供使用者控制。

### --question--

#### --text--

以下哪一項是從左側滑入元素的正確語法？

#### --distractors--

```css
@keyframes slide-in {
  0 { 
    transform: translate(-100%); 
  }
  100 { 
    transform: translate(0); 
  }
}
```

---

```css
@keyframes slide-in {
  from { 
    translateX(-100%); 
  }
  to { 
    translateX(0); 
  }
}
```

---

```css
@keyframes slide-in {
  start { 
    transform: moveX(-100%); 
  }
  end { 
    transform: moveX(0); 
  }
}
```

#### --answer--

```css
@keyframes slide-in {
  0% { 
    transform: translateX(-100%); 
  }
  100% { 
    transform: translateX(0); 
  }
}
```
