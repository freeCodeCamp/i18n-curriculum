---
id: 6391d1a4f7ac71efd0621380
title: 創建一個食譜頁面項目
challengeType: 14
dashedName: top-build-a-recipe-project
---

# --description--

這個網站將包含一個主索引頁，這個頁面有一些食譜的鏈接。 當你創建完成時，網站看起來不會很漂亮。

**用戶需求:**

1. 你的食譜頁面應該包含 `DOCTYPE` 標籤。
1. 你的食譜頁面應該包含一個 `html` 元素，其中有 `head` 和 `body` 作爲子元素。
1. 在 `head` 元素中，你應該有一個 `title` 元素，文本爲 `The Odin Recipes`。
1. 你應該看到一個 `h1` 元素，它有文本 `Creamy Chocolate Fudge`。
1. You should see a related image with an `alt` attribute.
1. 圖片下應該有一個 `h2` 元素，文本爲 `Description`。
1. 在 `Description` 下方應該有幾段描述食譜的文字。
1. There should be an `h2` element with the text `Ingredients`.
1. 在 `Ingredients` 標題下方，應該有一個無序列表，其中包含該食譜所需的成分。
1. 在原料列表下，添加另一個叫作 `Steps` 的標題。
1. 你應該看到一個有序列表，其中包含完成食譜所需的幾個步驟。
1. Under the steps there should be an `h2` element with the text `More Recipes`.
1. 你應該看到在一個無序列表內有幾個帶有錨元素的列表項，其中有幾個指向其他食譜的鏈接。
1. These anchor elements should have an `href` attribute with the value set to `#`.

# --hints--

你應該有一個 `DOCTYPE` 標籤。

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

在包含文本 `The Odin Recipes` 的 `head` 元素中，你應該有一個 `title` 元素。

```js
assert(document.querySelectorAll('HEAD > TITLE')[0]?.innerText == 'The Odin Recipes');
```

You should have an `h1` element within your `body` element that contains the text `Creamy Chocolate Fudge`.

```js
assert(document.querySelectorAll('BODY > H1')[0]?.innerText == 'Creamy Chocolate Fudge');
```

You should have an image with an `alt` attribute.

```js
const img = document.querySelectorAll('IMG')[0];

assert(img && img.alt !='' && img.src != '')
```

你應該有一個 `h2` 元素，文本爲 `Description`。

```js
const h2 = document.querySelectorAll('H2')[0];

assert(h2?.innerText == 'Description');
```

你應該至少有兩個 `p` 元素描述該食譜。

```js
const paragraphs = document.querySelectorAll('P');

assert(paragraphs?.length > 1);
```

你應該有一個 `h2` 元素，文本爲 `Ingredients`。

```js
const h2 = document.querySelectorAll('H2')[1];

assert(h2?.innerText == 'Ingredients');
```

You should have an `ul` element nested with `li` elements that contain the ingredients.

```js
const headers = document.querySelectorAll("h2");

headers.forEach(header => {
    if (header.textContent.trim() === "Ingredients") {
        const next = header.nextElementSibling;

        if(next.tagName === "UL") {
            const listItems = next.querySelectorAll("LI");

            assert(listItems.length > 1);
        } else {
            assert(false);
        }
    }
});
```

你應該有一個 `h2` 元素，文本爲 `Steps`。

```js
const h2 = document.querySelectorAll('H2')[2];

assert(h2?.innerText == 'Steps');
```

You should have an `ol` element that contains `li` elements with the steps of the recipe.

```js
const orderedList = document.querySelectorAll('OL')[0];
const listItems = document.querySelectorAll('OL > LI');

assert(orderedList && listItems && listItems.length > 1);
```

你應該有一個 `h2` 元素，文本爲 `More Recipes`。

```js
const h2 = document.querySelectorAll('H2')[3];

assert(h2?.innerText == 'More Recipes');
```

You should have an `ul` element nested with `li` elements that contain `a` elements that link to other recipes.

```js
const headers = document.querySelectorAll("h2");

headers.forEach(header => {
    if (header.textContent.trim() === "More Recipes") {
        const next = header.nextElementSibling;

        if(next.tagName === "UL") {
            const listItems = next.querySelectorAll("LI");

            assert(listItems.length > 1);

            listItems.forEach(listItem => {
                const anchor = listItem.querySelector("A");

                assert(anchor);
            });
        } else {
            assert(false);
        }
    }
});
```

Your anchor elements linking to the recipes should have an `href` attribute with the value set to `#`.

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
