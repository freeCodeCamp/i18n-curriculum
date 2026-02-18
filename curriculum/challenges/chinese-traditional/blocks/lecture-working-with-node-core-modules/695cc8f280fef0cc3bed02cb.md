---
id: 695cc8f280fef0cc3bed02cb
title: 什麼是 Process 模組以及它如何運作？
challengeType: 19
dashedName: what-is-the-process-module-and-how-does-it-work
---

# --description--

`process` 是最重要的 Node.js 核心模組之一。它讓你存取目前 Node.js `process` 的資訊，並在你的應用程式執行時控制它。

當你在終端機中執行像是 `node script.js` 的指令時，Node.js 會啟動一個處理程序，這是一個執行 `script.js` 檔案的 Node 程式的執行中實體。這個處理程序有它自己的記憶體、環境和執行背景關係。 

目前的處理程序透過 `process` 模組全域公開，所以你甚至不需要匯入它。只要你安裝了 Node.js，就可以在任何地方呼叫它。

`process` 模組公開屬性和方法，讓你取得有關目前執行背景關係的特定資訊。

`process.env` 讓你取得 Node 正在執行的當前環境的資訊。這總是傳回一個包含許多參數的龐大物件，所以這裡說明你如何直接存取一些最重要的資訊：

```js
// Gets all environment variables available to the current Node.js process
console.log(process.env);

// Gets the current Node.js environment mode (like 'development' or 'production')
console.log(process.env.NODE_ENV); // development

// Gets the path of the shell program running the Node.js process
console.log(process.env.SHELL); // /bin/bash

// Gets the system PATH variable where executables are searched for
console.log(process.env.PATH); // /usr/local/bin:/usr/bin:/bin

// Gets the present working directory from where the process was started
console.log(process.env.PWD); // /Users/johndoe/projects/myapp

// Gets the username of the user running the current process
console.log(process.env.USER); // johndoe
```

`process.argv` 讓你讀取命令列引數：

```js
console.log(process.argv);
/*
script.js --watch
Hello world
[
  '/Users/user/.nvm/versions/node/v22.17.0/bin/node',
  '/Users/user/Desktop/fCC/script-code/node/node-process/script.js',
  '--watch'
]
*/
```

`cwd()` 方法顯示目前的工作目錄：

```js
console.log(process.cwd());
```

處理程序事件是 Node.js 的核心特性，讓你的應用程式能回應其生命週期中的關鍵時刻，例如即將離開、遇到錯誤或接收到系統信號時。

例如，`exit` 事件會在 Node.js 處理程序結束前立即執行：

```js
process.on("exit", (code) => {
  console.log(`Process exiting with code: ${code}`);
});

// Process exiting with code: 0
```

當你的程式碼中未捕捉到錯誤時，會觸發 `uncaughtException` 事件，這可以幫助你防止當機：

```js
process.on("uncaughtException", (err) => {
  console.error("Uncaught error:", err.message);
});
```

最後，當 Node.js 發出處理程序警告時，會觸發 `warning` 事件：

```js
process.on("warning", (warning) => {
  console.warn("Warning name:", warning.name);
  console.warn("Warning message:", warning.message);
});
```

你接著可以使用 `emitWarning()` 方法來觸發訂製警告：

```js
// Example warning with the emitWarning() method
process.emitWarning('This is a custom warning message', 'CustomWarning');

/*
  Warning name: CustomWarning
  Warning message: This is a custom warning message
*/
```

# --questions--

## --text--

`process.emitWarning()` 方法做什麼？

## --answers--

當發生訂製警告時，它會停止該處理程序。

### --feedback--

思考 Node.js 如何透過事件來控制代碼訂製警告。

---

它會觸發一個訂製警告事件，該事件可以由警告監聽器控制代碼。

---

它會記錄錯誤並立即離開該處理程序。

### --feedback--

思考 Node.js 如何透過事件來控制代碼訂製警告。

---

它會在顯示警告後重新啟動 Node.js 處理程序。

### --feedback--

思考 Node.js 如何透過事件來控制代碼訂製警告。

## --video-solution--

2

## --text--

你如何使用 `process` 模組？

## --answers--

透過直接呼叫它，因為它是全域物件。

---

透過在 Node.js 組態檔案中啟用它。

### --feedback--

想想為什麼你可以在任何地方存取 `process` 而不需設定。

---

在呼叫它之前，先使用 npm 手動安裝它。

### --feedback--

想想為什麼你可以在任何地方存取 `process` 而不需設定。

---

在每次使用前，透過 require('process') 匯入它。

### --feedback--

想想為什麼你可以在任何地方存取 `process` 而不需設定。

## --video-solution--

1

## --text--

處理程序事件的用途是什麼？

## --answers--

為應用程式定義環境變數。

### --feedback--

思考 Node.js 在執行期間如何對生命週期變化做出反應。

---

為平行執行創建新的處理程序。

### --feedback--

思考 Node.js 在執行期間如何對生命週期變化做出反應。

---

監聽並回應重要的生命週期時刻，例如離開、錯誤或系統信號。

---

管理系統中的檔案路徑和擴充套件。

### --feedback--

思考 Node.js 在執行期間如何對生命週期變化做出反應。

## --video-solution--

3
