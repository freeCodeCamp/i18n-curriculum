---
id: 587d7dbf367417b2b2512bbc
title: 用 Partials 將樣式分成小塊
challengeType: 0
forumTopicId: 301459
dashedName: split-your-styles-into-smaller-chunks-with-partials
---

# --description--

<dfn>Partials</dfn> in Sass are separate files that hold segments of CSS code. These are imported and used in other Sass files. This is a great way to group similar code into a module to keep it organized.

partials 的名稱以下劃線（`_`）字符開頭，這樣 Sass 就知道它是 CSS 的一小部分，而不會將其轉換爲 CSS 文件。 此外，Sass 文件以 `.scss` 文件擴展名結尾。 要將 partial 中的代碼放入另一個 Sass 文件中，使用 `@import` 指令。

例如，如果所有 mixins 都保存在名爲 “\_mixins.scss” 的 partial 中，並且在 “main.scss” 文件中需要它們，下面是使用方法：

```scss
@import 'mixins'
```

請注意，`import` 語句中不需要下劃線——Sass 知道它是 partial。 將 partial 導入文件後，可以使用所有變量、mixins 和其它代碼。

# --instructions--

編寫 `@import` 語句，將名爲 `_variables.scss` 的 partial 導入 main.scss 文件。

# --hints--

代碼應使用 `@import` 指令，並且不應在文件名中包含下劃線。

```js
assert(code.match(/@import\s+?('|")variables\1/gi));
```

# --seed--

## --seed-contents--

```html
<!-- The main.scss file -->
```

# --solutions--

```html
@import 'variables'
```
