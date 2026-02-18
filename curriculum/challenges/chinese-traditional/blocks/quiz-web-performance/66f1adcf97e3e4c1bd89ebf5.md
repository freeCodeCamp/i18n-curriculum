---
id: 66f1adcf97e3e4c1bd89ebf5
title: 網頁效率測驗
challengeType: 8
dashedName: quiz-web-performance
---

# --description--

要通過測驗，你必須在以下 20 題中正確回答至少 18 題。

# --quizzes--

## --quiz--

### --question--

#### --text--

在網頁開發中，實際效率與感知效率之間的主要差異是什麼？

#### --distractors--

真正的效率、性能著重於瀏覽器所發出的 HTTP 請求數量，而感知效率、性能則基於 CSS 的呈現速度。

---

真正的效率只關乎載入時間，而感知效率則與動畫和載入指示器等視覺元素有關。

---

真正的效率僅包含伺服端的處理程序時間，而感知效率則完全是客戶端的。

#### --answer--

真正的效率是內容載入的速度，而感知效率是使用者認為頁面載入的速度。

### --question--

#### --text--

哪一個指標最能顯示內容在網頁上出現的速度？

#### --distractors--

可互動時間（TTI）

---

頁面載入時間（PLT）

---

最後內容繪製（LCP）

#### --answer--

首次內容繪製（FCP）

### --question--

#### --text--

以下哪一項不是減少頁面載入時間的方法？

#### --distractors--

優化媒體資產。

---

利用瀏覽器快取。

---

縮小與壓縮檔案。

#### --answer--

僅使用 JPEG 檔案。

### --question--

#### --text--

什麼是「time to usable」？

#### --distractors--

這是從使用者請求頁面到他們可以與頁面上的表單互動之間的間隔時間。

---

這是所有影像和動畫變得可用且可使用所需的時間。 

---

這是所有 CSS 和 JavaScript 動畫載入到螢幕上的時間。

#### --answer--

這是從使用者請求頁面到他們能夠有意義地與之互動之間的間隔時間。

### --question--

#### --text--

First Contentful Paint（FCP）測量什麼？

#### --distractors--

頁面上所有 JavaScript 檔案的整體載入時間。

---

使用者可以與頁面上任何元素互動之前的延遲時間。

---

所有樣式表完全載入並套用所花費的時間。

#### --answer--

第一個文字或影像呈現所需的時間。

### --question--

#### --text--

以下哪一項不是常用的效率、性能測量工具？

#### --distractors--

Chrome 開發者工具

---

燈塔

---

WebPageTest

#### --answer--

WebMeasure

### --question--

#### --text--

Performance Web API 用於什麼？

#### --distractors--

它用於僅測量 CSS 動畫的效率。

---

它用於自動加速網頁的效率。

---

它提供了使用者效率、性能指標的詳細表格。

#### --answer--

它讓開發者直接從程式碼追蹤網頁載入和回應的高效程度。

### --question--

#### --text--

哪種策略能有效提升感知效率？

#### --distractors--

使用大型影像來提升整體視覺品質。

---

最後載入 CSS 樣式以優先呈現內容。

---

預先載入所有腳本以確保它們在需要時已準備好。

#### --answer--

在載入內容時顯示載入骨架。

### --question--

#### --text--

以下哪一項是指請求在瀏覽器與伺服器之間傳輸所花費的時間？

#### --distractors--

呈現

---

INP

---

CDN

#### --answer--

延遲

### --question--

#### --text--

優化 CSS 如何影響頁面效率、性能？

#### --distractors--

它可防止瀏覽器執行不必要的 JavaScript。

---

它減少影像的整體檔案大小。

---

它消除了對延遲載入影像的需求。

#### --answer--

它加速了 HTML 的解析。

### --question--

#### --text--

以下哪一項顯示主執行緒被大量 JavaScript 任務阻塞了多久？

#### --distractors--

原始碼順序

---

跳出率

---

WebPageTest

#### --answer--

總阻塞時間

### --question--

#### --text--

在測量 Interaction to Next Paint（INP）時，正在評估什麼？

#### --distractors--

頁面在使用者互動後，完全載入所有樣式和影像所需的時間。

---

使用者互動與瀏覽器能夠暫存下一個使用者輸入之間的延遲。

---

JavaScript 執行與瀏覽器重新整理頁面內容之間的間隔。

#### --answer--

使用者互動與瀏覽器透過呈現下一個 `frame` 回應之間的時間。

### --question--

#### --text--

以下哪一個 API 可為你提供高精度時間戳記（以毫秒為單位），用來測量你網站不同零件載入所需的時間？

#### --distractors--

`performance.delay()`

---

`performance.previous()`

---

`performance.next()`

#### --answer--

`performance.now()`

### --question--

#### --text--

以下哪一個 API 可讓你獲得從 DNS 查詢到 `DOMContentLoaded` 的每個頁面載入階段的詳細分析？

#### --distractors--

允許 Timing API

---

效率文字 API

---

執行 Timing API

#### --answer--

效率計時 API

### --question--

#### --text--

以下哪一項會監聽像是版面配置變動、長時間任務和使用者互動等效能事件？

#### --distractors--

```js
const observer = new PermitObserve((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

---

```js
const observer = new PerformObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

---

```js
const observer = new PermitObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

#### --answer--

```js
const observer = new PerformanceObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

### --question--

#### --text--

延遲載入影像如何提升頁面效率？

#### --distractors--

它確保所有影像立即載入，以提供更好的使用者體驗。

---

它減少影像檔案的大小以加快載入速度。

---

它會預先載入影像，以防止任何載入延遲。

#### --answer--

它會延遲載入非必要的影像，直到它們出現在視窗中。

### --question--

#### --text--

什麼是程式碼分割？

#### --distractors--

這涉及將你的 React 程式碼拆分成只執行關鍵任務的模組。

---

它涉及將你的 HTML 程式碼拆分成只執行非關鍵任務的模組。

---

它涉及將你的 CSS 程式碼拆分成執行關鍵和非關鍵任務的模組。

#### --answer--

它涉及將你的 JavaScript 程式碼拆分成執行關鍵和非關鍵任務的模組。

### --question--

#### --text--

以下哪一種是延遲載入影像的正確方式？

#### --distractors--

```html
<img src="placeholder.jpg" lazy="loading">
```

---

```html
<img src="placeholder.jpg" load="lazy">
```

---

```html
<img src="placeholder.jpg" lazy="load">
```

#### --answer--

```html
<img src="placeholder.jpg" loading="lazy">
```

### --question--

#### --text--

以下哪一項不是改善 INP 的方法？

#### --distractors--

透過拆分冗長的 JavaScript 任務來減少主執行緒的工作量。

---

優化事件處理常式。

---

延緩或延遲載入大型資產。

#### --answer--

僅使用 PNG 和 JPEG 影像。

### --question--

#### --text--

為什麼能源效率是網頁效率、性能中一個關鍵的面向？

#### --distractors--

它提升了網頁的整體視覺吸引力。

---

它將網頁上使用的 JavaScript 數量降到最低。

---

它減少了所需的 CSS 檔案數量，並使你的 CSS 執行更快。

#### --answer--

它減少硬體的載入，節省能源並提升永續性。

