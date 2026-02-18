---
id: 67329fbcfaf5ff5cdaa38a42
title: 什麼是 var 關鍵字，為什麼不再建議使用它？
challengeType: 19
dashedName: what-is-the-var-keyword-and-why-is-it-no-longer-suggested-to-use-it
---

# --interactive--

JavaScript 中的 `var` 關鍵字是宣告變數的原始方法之一。它自語言誕生以來就存在，並且多年來一直是建立變數的主要方法。然而，隨著 JavaScript 的演進以及開發者對語言的經驗增加，使用 `var` 的某些缺點變得明顯，導致在 2015 年引入了 `let` 和 `const`。

當你使用 `var` 宣告變數時，它會成為函式範圍或全域範圍。這表示如果你在函式內使用 `var` 宣告變數，該變數只能在該函式內存取。然而，如果你在任何函式外宣告它，它會成為整個程式碼中都能存取的全域變數。這種行為有時會導致意外結果，並使你的程式碼更難理解。

`var` 的問題在於它允許你多次重新宣告相同的變數而不會發出錯誤。這可能導致意外的覆寫並使偵錯更加困難。

:::interactive_editor

```js
var num = 5;
console.log(num); // 5

// This is allowed and doesn't throw an error
var num = 10;
console.log(num); // 10
```

:::

`var` 最大的問題是它缺乏區塊作用域。在像 `if` 述語或 `for` 迴圈這樣的區塊內用 `var` 宣告的變數，仍然可以在該區塊外被存取。 

:::interactive_editor

```js
if (true) {
  var num = 5;
}
console.log(num); // 5
```

:::

此行為可能導致意外的變數外洩，並使你的程式碼更容易出錯。

由於這些問題，現代 JavaScript 開發已大幅轉向使用 `let` 和 `const`，而非 `var`。這些關鍵字提供區塊作用域，與許多其他程式語言中的作用域運作方式更為一致。

它們也不允許在相同的範圍內重新宣告，有助於防止意外的改寫。

雖然 `var` 仍然是 JavaScript 的一部分並且在所有瀏覽器中都能運作，但在現代 JavaScript 開發中通常建議使用 `let` 和 `const`。它們提供明確的作用域規則，有助於避免常見的陷阱，並使你的程式碼行為更可預測。

# --questions--

## --text--

在任何函式外使用 `var` 宣告的變數的作用域是什麼？

## --answers--

區塊範圍。

### --feedback--

思考在函式外宣告的 `var` 變數可以在哪裡被存取。

---

函式（程式）的作用域

### --feedback--

思考在函式外宣告的 `var` 變數可以在哪裡被存取。

---

全域的範圍。

---

模組範圍。

### --feedback--

思考在函式外宣告的 `var` 變數可以在哪裡被存取。

## --video-solution--

3

## --text--

以下 `code` 的輸出結果會是什麼？

```js
var x = 10;

if (true) {
  var x = 20;
  console.log(x);
}

console.log(x);
```

## --answers--

```js
10
10
```

### --feedback--

請記住 `var` 是函式範圍或全域範圍，並且允許在相同範圍內重新宣告。

---

```js
20
20
```

---

```js
10
20
```

### --feedback--

請記住 `var` 是函式範圍或全域範圍，並且允許在相同範圍內重新宣告。

---

```js
20
10
```

### --feedback--

請記住 `var` 是函式範圍或全域範圍，並且允許在相同範圍內重新宣告。

## --video-solution--

2

## --text--

以下哪一項不是避免在現代 JavaScript 中使用 `var` 的原因？

## --answers--

`var` 允許在相同範圍內重新宣告變數。

### --feedback--

請考慮關於 `var` 的行為或支援，哪個述語是錯誤的。

---

現代瀏覽器不支援 `var`。

---

`var` 變數是函式（程式）範圍的，而非區塊範圍的。

### --feedback--

請考慮關於 `var` 的行為或支援，哪個述語是錯誤的。

---

`var` 變數會被提升。

### --feedback--

請考慮關於 `var` 的行為或支援，哪個述語是錯誤的。

## --video-solution--

2
