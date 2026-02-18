---
id: 67329fbcfaf5ff5cdaa38a42
title: 什么是 `var` 关键字，为什么不再建议使用它？
challengeType: 19
dashedName: what-is-the-var-keyword-and-why-is-it-no-longer-suggested-to-use-it
---

# --interactive--

JavaScript 中的 `var` 关键字是声明变量的最初方式之一。它自语言诞生以来就存在，并且多年来一直是创建变量的主要方法。然而，随着 JavaScript 的发展和开发者对该语言经验的积累，使用 `var` 的某些缺点变得明显，促使在 2015 年引入了 `let` 和 `const`。

当你使用 `var` 声明一个变量时，它会变成函数作用域或全局作用域。这意味着如果你在函数内部使用 `var` 声明一个变量，它只能在该函数内访问。然而，如果你在任何函数外部声明它，它会变成一个全局变量，可以在整个脚本中访问。这种行为有时会导致意想不到的结果，并使你的代码更难理解。

`var` 的一个问题是它允许你多次重新声明同一个变量而不会抛出错误。这可能导致意外覆盖并使调试更加困难。

:::interactive_editor

```js
var num = 5;
console.log(num); // 5

// This is allowed and doesn't throw an error
var num = 10;
console.log(num); // 10
```

:::

`var` 最大的问题是它缺乏块级作用域。在 `if` 语句或 `for` 循环等块内用 `var` 声明的变量仍然可以在该块外访问。 

:::interactive_editor

```js
if (true) {
  var num = 5;
}
console.log(num); // 5
```

:::

这种行为可能导致意外的变量泄漏，并使你的代码更容易出现错误。

由于这些问题，现代 JavaScript 开发在很大程度上已经放弃了 `var`，转而使用 `let` 和 `const`。这些关键字提供了块级作用域，更加符合许多其他编程语言中作用域的工作方式。

它们也不允许在同一作用域内重新声明，从而帮助防止意外覆写。

虽然 `var` 仍然是 JavaScript 的一部分并且在所有浏览器中都有效，但在现代 JavaScript 开发中通常建议使用 `let` 和 `const`。它们提供了明确的作用域规则，有助于防止常见的陷阱，并使你的代码行为更可预测。

# --questions--

## --text--

在任何函数外使用 `var` 声明的变量的作用域是什么？

## --answers--

块级作用域。

### --feedback--

考虑在函数外声明的 `var` 变量可以被访问的位置。

---

函数作用域。

### --feedback--

考虑在函数外声明的 `var` 变量可以被访问的位置。

---

全局作用域。

---

模块作用域。

### --feedback--

考虑在函数外声明的 `var` 变量可以被访问的位置。

## --video-solution--

3

## --text--

下面代码的输出是什么？

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

请记住，`var` 是函数作用域或全局作用域的，并且它允许在同一作用域内重新声明。

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

请记住，`var` 是函数作用域或全局作用域的，并且它允许在同一作用域内重新声明。

---

```js
20
10
```

### --feedback--

请记住，`var` 是函数作用域或全局作用域的，并且它允许在同一作用域内重新声明。

## --video-solution--

2

## --text--

以下哪项不是避免在现代 JavaScript 中使用 `var` 的原因？

## --answers--

`var` 允许在同一作用域内重新声明变量。

### --feedback--

考虑关于 `var` 的行为或支持，哪个语句是错误的。

---

`var` 在现代浏览器中不被支持。

---

`var` 变量是函数作用域的，而不是块作用域的。

### --feedback--

考虑关于 `var` 的行为或支持，哪个语句是错误的。

---

`var` 变量会被提升。

### --feedback--

考虑关于 `var` 的行为或支持，哪个语句是错误的。

## --video-solution--

2
