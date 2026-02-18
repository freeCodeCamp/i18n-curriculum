---
id: 695cc8f280fef0cc3bed02ca
title: 什麼是 Path 模組以及它如何運作？
challengeType: 19
dashedName: what-is-the-path-module-and-how-does-it-work
---

# --description--

Node.js 的 `path` 模組讓你操作檔案和目錄路徑。它提供多種有用的行為，用於處理和轉換目錄，包括在不同平台和作業系統之間連接、標準化和解析目錄。

要使用 `path` 模組，你可以這樣匯入它：

```js
const path = require("path");
```

讓我們來看看 `path` 模組提供的一些方法以及它們的運作方式。

首先，你應該知道 Node.js 的全域變數 `__filename` 和 `__dirname`，也就是所謂的「common JS」變數。你不需要 `path` 模組來存取它們，這就是為什麼它們被稱為全域變數。

`__filename` 是目前檔案的絕對路徑，`__dirname` 是包含目前檔案的目錄的絕對路徑。

例如，我目前正在處理一個 `script.js` 檔案。以下是這兩個方法傳回的結果：

```js
console.log(__filename);
// /Users/user/Desktop/fCC/script-code/node/node-path/script.js

console.log(__dirname);
// /Users/user/Desktop/fCC/script-code/node/node-path
```

你也應該了解相對路徑和絕對路徑。

相對路徑是根據你目前的工作目錄指向一個檔案或目錄。 例如，`./assets/src/text-files`。

另一方面，絕對路徑會從系統根目錄給出檔案或資料夾的完整位址，例如 `/Users/johndoe/projects/app/assets/src/text-files`。

`basename()` 方法顯示檔案的最後零件，也就是檔名：

```js
console.log(path.basename(__filename)); // script.js
```

`dirname()` 傳回路徑的目錄名稱：

```js
console.log(path.dirname(__dirname)); // node-path
```

`extname()` 傳回目前檔案的副檔名：

```js
console.log(path.extname(__filename)); // .js
```

你也可以指定不同的檔案來傳回擴充套件。

```js
console.log(path.extname('text-files/text1.txt')); // .txt
```

`join()` 方法會將你傳入的所有路徑段連接成一個乾淨且標準化的路徑。 

如果你想合併不同資料夾中相關的檔案，以便一起處理，這可能會很有用：

```js
const joinedPath = path.join("src", "assets", "text-files");
console.log(joinedPath); // src/assets/text-files
```

Windows 使用反斜線來分隔目錄，所以結果將會是 `src\assets\text-files`。

此外，`join()` 方法會自動修正錯誤的斜線並移除多餘的斜線：

```js
const wrongPath = path.join("/src//", "assets", "text-files");
console.log(wrongPath); // /src/assets/text-files
```

`resolve()` 方法將一連串的路徑片段轉換成絕對路徑。它從你目前的工作目錄開始，並產生一個指向裝置上精確位置的完整路徑：

```js
const absolutePath = path.resolve("assets", "src", "text-files");
console.log(absolutePath);
// /Users/user/Desktop/fCC/script-code/node/node-path/assets/src/text-files
```

`join()` 和 `resolve()` 的差別在於 `join()` 會創建相對路徑，而 `resolve()` 則會傳回絕對路徑。

最後，還有 `parse()` 和 `format()` 方法。

`parse()` 接受一個目錄或檔案，並傳回一個包含其零件解析結果的物件，例如系統根目錄、其目錄、擴充套件和檔名：

```js
const parsedFile = path.parse(__filename);

console.log(parsedFile);
/*
{
 root: '/',
 dir: '/Users/user/Desktop/fCC/script-code/node/node-path',
 base: 'script.js',
 ext: '.js',
 name: 'script'
}
*/
```

另一方面，`format()` 從包含目錄、名稱和擴充套件的物件建置路徑：

```js
const formattedDirectory = path.format({
  dir: "/users/johndoe/docs",
  name: "file",
  ext: ".txt",
});

console.log(formattedDirectory); // /users/johndoe/docs/file.txt
```

# --questions--

## --text--

在 Node.js 中，`path.dirname()` 和 `path.extname()` 有什麼差別？

## --answers--

`dirname()` 會移除副檔名，而 `extname()` 會移除目錄名稱。

### --feedback--

專注於哪一個處理目錄，哪一個處理副檔名。

---

`dirname()` 傳回完整的檔案路徑，而 `extname()` 傳回目錄名稱。

### --feedback--

專注於哪一個處理目錄，哪一個處理副檔名。

---

`dirname()` 傳回路徑的目錄名稱，而 `extname()` 傳回檔案的副檔名。

---

`dirname()` 和 `extname()` 都會傳回相同的值，但格式不同。

### --feedback--

專注於哪一個處理目錄，哪一個處理副檔名。

## --video-solution--

3

## --text--

哪一個 `path` 方法會從包含目錄、名稱和擴充套件屬性的物件建置完整的檔案路徑？

## --answers--

`path.parse()`

### --feedback--

想想 `parse()` 的相反是什麼。

---

`path.format()`

---

`path.resolve()`

### --feedback--

想想 `parse()` 的相反是什麼。

---

`path.join()`

### --feedback--

想想 `parse()` 的相反是什麼。

## --video-solution--

2

## --text--

Node.js 全域變數 `__filename` 和 `__dirname` 提供存取什麼？

## --answers--

目前 `file` 的絕對路徑及其所包含的 `directory`。

---

目前模組的名稱及其相依性。

### --feedback--

思考哪些變數會自動提供完整的檔案和資料夾路徑，而不需要使用 `path` 模組。

---

Node.js 安裝目錄的相對路徑。

### --feedback--

思考哪些變數會自動提供完整的檔案和資料夾路徑，而不需要使用 `path` 模組。

---

正在執行的網頁伺服器的 URL 及其主機名稱。

### --feedback--

思考哪些變數會自動提供完整的檔案和資料夾路徑，而不需要使用 `path` 模組。

## --video-solution--

1
