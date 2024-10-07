---
id: 587d7dab367417b2b2512b6d
title: 应用函数式编程将字符串转换为URL片段
challengeType: 1
forumTopicId: 301227
dashedName: apply-functional-programming-to-convert-strings-to-url-slugs
---

# --description--

The last several challenges covered a number of useful array and string methods that follow functional programming principles. We've also learned about `reduce`, which is a powerful method used to reduce problems to simpler forms. From computing averages to sorting, any array operation can be achieved by applying it. Recall that `map` and `filter` are special cases of `reduce`.

让我们把学到的知识结合起来解决一个实际问题。

许多内容管理站点（CMS）为了让添加书签更简单，会将帖子的标题添加到 URL 上。 举个例子，如果你写了一篇标题为 `Stop Using Reduce` 的帖子，URL很可能会包含标题字符串的某种形式 (如：`.../stop-using-reduce`)。 你可能已经在 freeCodeCamp 网站上注意到了这一点。

# --instructions--

填写 `urlSlug` 函数，将字符串 `title` 转换成带有连字符号的 URL。 您可以使用本节中介绍的任何方法，但不要用 `replace` 方法。 以下是本次挑战的要求：

输入包含空格和标题大小写单词的字符串

输出字符串，单词之间的空格用连字符 (`-`) 替换

输出应该是小写字母

输出不应有任何空格

# --hints--

不能使用 `replace` 方法。

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?replace/g));
```

`urlSlug("Winter Is Coming")` 应返回 `winter-is-coming`。

```js
assert(urlSlug('Winter Is Coming') === 'winter-is-coming');
```

`urlSlug(" Winter Is  Coming")` 应返回 `winter-is-coming`。

```js
assert(urlSlug(' Winter Is  Coming') === 'winter-is-coming');
```

`urlSlug("A Mind Needs Books Like A Sword Needs A Whetstone")` 应返回 `a-mind-needs-books-like-a-sword-needs-a-whetstone`。

```js
assert(
  urlSlug('A Mind Needs Books Like A Sword Needs A Whetstone') ===
    'a-mind-needs-books-like-a-sword-needs-a-whetstone'
);
```

`urlSlug("Hold The Door")` 应返回 `hold-the-door`。

```js
assert(urlSlug('Hold The Door') === 'hold-the-door');
```

# --seed--

## --seed-contents--

```js
// Only change code below this line
function urlSlug(title) {


}
// Only change code above this line
urlSlug("A Mind Needs Books Like A Sword Needs A Whetstone");
```

# --solutions--

```js
function urlSlug(title) {
  return title.trim().split(/\s+/).join("-").toLowerCase();
}
```
