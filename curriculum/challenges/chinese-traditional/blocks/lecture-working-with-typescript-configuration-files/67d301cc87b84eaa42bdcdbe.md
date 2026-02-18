---
id: 67d301cc87b84eaa42bdcdbe
title: 什麼是 `tsconfig` 檔案，以及為什麼將它包含在你的 TypeScript 專案中很重要？
challengeType: 19
dashedName: what-is-a-tsconfig-file-and-why-is-it-important-to-include-in-your-typescript-projects
---

# --description--

TypeScript 的編譯器設定可以組態以符合你的專案需求。該設定存放在你的專案根目錄中的 `tsconfig.json` 檔案中。事實上，若沒有它，編譯器不會執行，除非你直接傳遞命令旗標。但這個檔案到底做什麼？那麼，讓我們來看看一個範例檔案：

```json
{
  "compilerOptions": {
    "rootDir": "./src",
    "outDir": "./prod",
    "lib": ["ES2023"],
    "target": "ES2023",
    "module": "ES2022",
    "moduleResolution": "Node",
    "esModuleInterop": true,
    "skipLibCheck": true,
    "strict": true
  },
  "exclude": ["test/"]
}
```

這看起來很多！所以我們來拆解一下。`compilerOptions` 屬性將包含你組態的「核心」－這裡是你控制 TypeScript 編譯器行為的地方。看看那個巢狀物件……

`rootDir` 和 `outDir` 告訴 TypeScript 哪個目錄包含你的原始碼檔案，以及哪個目錄應該包含轉譯後的 JavaScript 程式碼。

`lib` 屬性決定編譯器使用哪些型別定義，並允許你包含對特定 ES 版本、DOM 等的支援。

`module` 和 `moduleResolution` 有效地協同運作，以管理你的軟體包如何使用模組－無論是 CommonJS 還是 ECMAScript。

`esModuleInterop` 允許 CommonJS 與 ES 模組之間更順暢的互通性，透過自動為匯入建立命名空間物件，使你能更輕鬆地在 TypeScript 專案中使用來自不同系統的模組，而 `skipLibCheck` 選項則會跳過驗證程式碼中未被匯入取用的 `.d.ts` 檔案。

最後我們來到 `strict` 模式。有人可能會認為如果沒有啟用這個旗標，TypeScript 並不是真正有幫助，因為它會切換許多其他檢查，例如要求你正確控制可為 null 的型別，或在 TypeScript 無法推斷型別並退回到 any 時發出警告。

在我們結束之前，關於頂層的 `exclude` 屬性有一個快速說明－當你定義了原始碼目錄時，你可能會有該目錄外的 TypeScript 程式碼，而你不希望這些程式碼被編譯成為你的生產程式碼的一部分。舉例來說，你的測試程式碼。`exclude` 陣列告訴編譯器在編譯期間忽略這些 TypeScript 檔案，但仍允許像 Intellisense 這樣的工具揭露潛在問題。

還有大量其他的編譯器選項你可以探索－超過 50 個！我鼓勵你探索文件並嘗試，以找到適合你專案需求的組態。

# --questions--

## --text--

`tsconfig.json` 檔案中的哪個屬性會影響編譯器的行為？

## --answers--

`rootDir`

### --feedback--

此屬性是一個包含編譯器選項的物件。

---

`compilerOptions`

---

`exclude`

### --feedback--

此屬性是一個包含編譯器選項的物件。

---

`lib`

### --feedback--

此屬性是一個包含編譯器選項的物件。

## --video-solution--

2

## --text--

`tsconfig.json` 檔案中的 `strict` 選項做什麼？

## --answers--

它只檢查可為 null 的型別。

### --feedback--

此選項啟用各種檢查，包括可為 null 的型別處理。

---

它強制使用 CommonJS 模組。

### --feedback--

此選項啟用各種檢查，包括可為 null 的型別處理。

---

它會切換多個型別檢查選項。

---

它會將測試檔案排除在編譯之外。

### --feedback--

此選項啟用各種檢查，包括可為 null 的型別處理。

## --video-solution--

3

## --text--

`tsconfig.json` 檔案中 `exclude` 陣列的用途是什麼？

## --answers--

指定要編譯的檔案。

### --feedback--

你可以使用這個來排除測試程式碼的編譯。

---

列出要包含的其他函式庫。

### --feedback--

你可以使用這個來排除測試程式碼的編譯。

---

在編譯期間忽略某些檔案。

---

定義已編譯檔案的輸出目錄。

### --feedback--

你可以使用這個來排除測試程式碼的編譯。

## --video-solution--

3
