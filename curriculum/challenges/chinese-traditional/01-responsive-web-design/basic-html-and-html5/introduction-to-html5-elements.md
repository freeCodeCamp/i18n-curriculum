---
id: bad87fee1348bd9aecf08801
title: HTML5 元素介紹
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cBkZGpt7'
forumTopicId: 301097
dashedName: introduction-to-html5-elements
---

# --description--

HTML5 introduces more descriptive HTML tags. These include `main`, `header`, `footer`, `nav`, `video`, `article`, `section` and others.

這些元素讓 HTML 更易讀，同時有助於搜索引擎優化和無障礙訪問。 `main` 元素讓搜索引擎和開發者能很快地找到網頁的主要內容。

舉個例子，下面的 `main` 元素嵌套了兩個子元素：

```html
<main> 
  <h1>Hello World</h1>
  <p>Hello Paragraph</p>
</main>
```

**提示：** 在後面的應用無障礙課程中我們會接觸到更多新的 HTML5 元素，以及明白它們的用處。

# --instructions--

創建一個新的 `p` 元素，內容爲：`Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.`

然後，請添加一個 `main` 元素，將現有的兩個 `p` 元素嵌套在這個 `main` 元素裏。

# --hints--

頁面中應該有兩個 `p` 元素。

```js
assert.lengthOf(document.querySelectorAll('p'),2);
```

每個 `p` 元素都應有結束標籤。

```js
assert.match(code,/<\/p>/g);
assert.strictEqual(code.match(/<\/p>/g).length,code.match(/<p/g).length);
```

你的 `p` 元素應包含 `kitty ipsum` 文本的前面幾個詞。

```js
assert.match(document.querySelectorAll('p')[1].textContent,/Purr\s+jump\s+eat/gi);
```

應該存在 `main` 元素。

```js
assert.lengthOf(document.querySelectorAll('main'),1);
```

`main` 元素應有兩個段落元素作爲它的子元素。

```js
const main = document.querySelector('main');
const children = main.querySelectorAll("p"); 
assert.lengthOf(children,2);
```

`main` 的開始標籤應位於第一個段落之前。

```js
assert.match(code,(/<main>\s*?<p>/g));
```

`main` 的結束標籤應位於第二個段落之後。

```js
assert.match(code,(/<\/p>\s*?<\/main>/g));
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>

<p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```
