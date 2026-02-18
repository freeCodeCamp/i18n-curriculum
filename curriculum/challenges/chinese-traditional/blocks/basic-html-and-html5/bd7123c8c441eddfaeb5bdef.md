---
id: bd7123c8c441eddfaeb5bdef
title: 向 HTML 元素問好
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gpt2'
forumTopicId: 18276
dashedName: say-hello-to-html-elements
---

# --description--

歡迎來到 freeCodeCamp 的 HTML 程式碼挑戰。這些將一步步引導你進行網頁開發。

首先，你將開始使用 HTML 建置一個簡單的網頁。你可以在內嵌於此網頁中的程式碼編輯器裡編輯程式碼。

你在你的程式碼編輯器中看到寫著 `<h1>Hello</h1>` 的程式碼嗎？那是一個 HTML 元素。

大多數 HTML 元素都有一個開啟頁籤和一個關閉頁籤。

開啟標記看起來像這樣：

```html
<h1>
```

結束標籤看起來像這樣：

```html
</h1>
```

開啟標籤和關閉標籤之間唯一的差別是在關閉標籤的開啟括號後面有一個正斜線。

每個挑戰都有你可以隨時透過點擊「Run tests」按鈕來執行的測試。當你通過所有測試後，系統會提示你提交你的解決方案並前往下一個程式挑戰。

# --instructions--

要通過此挑戰的測試，請將你的 `h1` 元素的文字更改為 `Hello World`。

# --hints--

你的 `h1` 元素應該有文字 `Hello World`。

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello</h1>
```

# --solutions--

```html
<h1>Hello World</h1>
```
