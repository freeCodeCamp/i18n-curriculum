---
id: 6391d1a4f7ac71efd0621380
title: 创建一个食谱页面项目
challengeType: 14
dashedName: top-build-a-recipe-project
---

# --description--

这个网站将包含一个主索引页，这个页面有一些食谱的链接。 当你创建完成时，网站看起来不会很漂亮。

**用户需求:**

1. 你的食谱页面应该包含 `DOCTYPE` 标签。
1. 你的食谱页面应该包含一个 `html` 元素，其中有 `head` 和 `body` 作为子元素。
1. 在 `head` 元素中，你应该有一个 `title` 元素，文本为 `The Odin Recipes`。
1. 你应该看到一个 `h1` 元素，它有文本 `Creamy Chocolate Fudge`。
1. You should see a related image with an `alt` attribute.
1. 图片下应该有一个 `h2` 元素，文本为 `Description`。
1. 在 `Description` 下方应该有几段描述食谱的文字。
1. There should be an `h2` element with the text `Ingredients`.
1. 在 `Ingredients` 标题下方，应该有一个无序列表，其中包含该食谱所需的成分。
1. 在原料列表下，添加另一个叫作 `Steps` 的标题。
1. 你应该看到一个有序列表，其中包含完成食谱所需的几个步骤。
1. Under the steps there should be an `h2` element with the text `More Recipes`.
1. 你应该看到在一个无序列表内有几个带有锚元素的列表项，其中有几个指向其他食谱的链接。
1. These anchor elements should have an `href` attribute with the value set to `#`.

# --hints--

你应该有一个 `DOCTYPE` 标签。

```js
assert(code.match(/<!DOCTYPE\s+?html\s*?>/gi));
```

You should have an `html` element with `head` and `body` element.

```js
const html = document.querySelectorAll('html')[0];
const head = document.querySelectorAll('html > head')[0];
const body = document.querySelectorAll('html > body')[0];

assert(html && head && body);
```

在包含文本 `The Odin Recipes` 的 `head` 元素中，你应该有一个 `title` 元素。

```js
assert(document.querySelectorAll('HEAD > TITLE')[0].innerText == 'The Odin Recipes');
```

You should have an `h1` element within your `body` element that contains the text `Creamy Chocolate Fudge`.

```js
assert(document.querySelectorAll('BODY > H1')[0].innerText == 'Creamy Chocolate Fudge');
```

You should have an image with an `alt` attribute.

```js
const img = document.querySelectorAll('IMG')[0];

assert(img && img.alt !='' && img.src != '')
```

你应该有一个 `h2` 元素，文本为 `Description`。

```js
const h2 = document.querySelectorAll('H2')[0];

assert(h2.innerText == 'Description');
```

你应该至少有两个 `p` 元素描述该食谱。

```js
const paragraphs = document.querySelectorAll('P');

assert(paragraphs.length > 1);
```

你应该有一个 `h2` 元素，文本为 `Ingredients`。

```js
const h2 = document.querySelectorAll('H2')[1];

assert(h2.innerText == 'Ingredients');
```

你应该有一个无序列表 `<ul>`，其中包含一些成分作为列表项 `<li>`。

```js
const unorderedList = document.querySelectorAll('UL')[0];
const listItems = document.querySelectorAll('UL > LI');

assert(unorderedList && listItems && listItems.length > 1);
```

你应该有一个 `h2` 元素，文本为 `Steps`。

```js
const h2 = document.querySelectorAll('H2')[2];

assert(h2.innerText == 'Steps');
```

You should have an `<ol>` with the steps as the list items `<li>`.

```js
const orderedList = document.querySelectorAll('OL')[0];
const listItems = document.querySelectorAll('OL > LI');

assert(orderedList && listItems && listItems.length > 1);
```

你应该有一个 `h2` 元素，文本为 `More Recipes`。

```js
const h2 = document.querySelectorAll('H2')[3];

assert(h2.innerText == 'More Recipes');
```

你应该有一个无序列表 `<ul>` 元素，列表项目 `<li>` 包含指向其他食谱的 `<a>` 标签。

```js
const unorderedList = document.querySelectorAll('UL')[1];
const listItems = unorderedList.querySelectorAll('LI');

const allAreListItems = unorderedList.children.length == listItems.length;

const containsAnchors =  [...listItems].every(function(listItem) {
  return listItem.querySelector("a") !== null;
});

assert(unorderedList && allAreListItems && containsAnchors && listItems.length > 1);
```

Your anchor tags linking to the recipes should have an `href` attribute with the value set to `#`.

```js
const anchorTags = document.querySelectorAll("a");

const allAnchorsHaveHrefHash = [...anchorTags].every(function(anchorTag) {
  return anchorTag.hasAttribute("href") && anchorTag.getAttribute("href") === "#";
});

assert(allAnchorsHaveHrefHash && anchorTags.length > 0); 
```

# --seed--

## --seed-contents--

```html

```

```css

```

# --solutions--

```html
<!DOCTYPE html>
<html>
  <head>
    <title>The Odin Recipes</title>
  </head>
  <body>
    <h1>Creamy Chocolate Fudge</h1>
    <img src="https://cdn.freecodecamp.org/curriculum/odin-project/build-a-recipe-page/build-a-recipe-page-01.jpg" alt="A delicious chocolate fudge dessert">
    <h2>Description</h2>
    <p>This recipe is for a rich and creamy chocolate fudge that is sure to satisfy your sweet tooth. It's perfect for a special occasion or as a tasty treat for any time of the year.</p>
    <p>This recipe is easy to follow and only requires a few simple ingredients. With just a few steps, you'll be able to create a delicious dessert that everyone will love.</p>
    <h2>Ingredients</h2>
    <ul>
      <li>1 cup sugar</li>
      <li>1/2 cup unsalted butter</li>
      <li>1/4 cup milk</li>
      <li>1/4 cup cocoa powder</li>
      <li>1/4 cup chocolate chips</li>
      <li>1/4 tsp salt</li>
      <li>1 tsp vanilla extract</li>
    </ul>
    <h2>Steps</h2>
    <ol>
      <li>In a medium saucepan, melt the butter over medium heat.</li>
      <li>Add the sugar, milk, cocoa powder, and salt to the saucepan and stir until well combined.</li>
      <li>Bring the mixture to a boil, stirring constantly, and then reduce the heat to low and simmer for 5 minutes.</li>
      <li>Remove the saucepan from the heat and stir in the chocolate chips and vanilla extract until the chocolate is melted and the mixture is smooth.</li>
      <li>Pour the fudge into a greased 8-inch square pan and let it cool completely before cutting into squares.</li>
    </ol>
    <h2>More Recipes</h2>
    <ul>
      <li><a href="#">Peanut Butter Cookies</a></li>
      <li><a href="#">Lemon Bars</a></li>
      <li><a href="#">Chocolate Chip Pancakes</a></li>
    </ul>
  </body>
</html>
```

```css

```
