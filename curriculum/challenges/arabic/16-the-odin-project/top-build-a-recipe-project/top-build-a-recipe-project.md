---
id: 6391d1a4f7ac71efd0621380
title: بناء مشروع لصفحة الوصفة
challengeType: 14
dashedName: top-build-a-recipe-project
---

# --description--

وسيتألف الموقع الشبكي من صفحة فهرسية رئيسية ستكون لها رباطات ببضع الوصفات. لن يبدو الموقع جميلا جدا عند تنتهي منه.

**المطلبيات:**

1. يجب أن تحتوي صفحة الوصفة الخاصة بك على علامة `DOCTYPE`.
1. يجب أن تحتوي صفحة الوصفة الخاصة بك على عنصر `html` مع `head` و `body` كأطفال.
1. يجب أن يكون لديك عنصر `title` داخل عنصر `head` مع النص `The Odin Recipes`.
1. يجب أن ترى عنصر `h1` يحتوي على النص `Creamy Chocolate Fudge`.
1. You should see a related image with an `alt` attribute.
1. يجب أن يكون هناك عنصر `h2` مع النص `Description` تحت الصورة.
1. يجب أن ترى بضع فقرات تحت `Description` تصف الوصفة.
1. There should be an `h2` element with the text `Ingredients`.
1. تحت عنوان `Ingredients` يجب أن تكون هناك unordered list مع المكونات اللازمة للوصفة.
1. تحت قائمة المكونات أضف عنوان (heading) آخر يسمى `Steps`.
1. يجب أن ترى ordered list مع بعض الخطوات المطلوبة لإكمال الوصفة.
1. Under the steps there should be an `h2` element with the text `More Recipes`.
1. يجب أن ترى بعض الروابط لوصفات أخرى داخل unordered list تحتوي على بعض عناصر القائمة (list items) مع عناصر anchor داخلها.
1. These anchor elements should have an `href` attribute with the value set to `#`.

# --hints--

يجب أن يكون لديك علامة `DOCTYPE`.

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

يجب أن يكون لديك عنصر `title` داخل عنصر `head` الذي يحتوي النص `The Odin Recipes`.

```js
assert(document.querySelectorAll('HEAD > TITLE')[0].innerText == 'The Odin Recipes');
```

يجب أن يكون لديك عنصر `h1` داخل عنصر `body` الذي يحتوي النص `Creamy Chocolate Fudge`.

```js
assert(document.querySelectorAll('BODY > H1')[0].innerText == 'Creamy Chocolate Fudge');
```

You should have an image with an `alt` attribute.

```js
const img = document.querySelectorAll('IMG')[0];

assert(img && img.alt !='' && img.src != '')
```

يجب أن يكون هناك عنصر `h2` مع النص `Description`.

```js
const h2 = document.querySelectorAll('H2')[0];

assert(h2.innerText == 'Description');
```

يجب أن يكون لديك على الأقل عنصران `p` يصفان الوصفة.

```js
const paragraphs = document.querySelectorAll('P');

assert(paragraphs.length > 1);
```

يجب أن يكون هناك عنصر `h2` مع النص `Ingredients`.

```js
const h2 = document.querySelectorAll('H2')[1];

assert(h2.innerText == 'Ingredients');
```

يجب أن يكون لديك قائمة غير مرتبة `<ul>` مع بعض المكونات كعناصر القائمة `<li>`.

```js
const unorderedList = document.querySelectorAll('UL')[0];
const listItems = document.querySelectorAll('UL > LI');

assert(unorderedList && listItems && listItems.length > 1);
```

يجب أن يكون هناك عنصر `h2` مع النص `Steps`.

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

يجب أن يكون هناك عنصر `h2` مع النص `More Recipes`.

```js
const h2 = document.querySelectorAll('H2')[3];

assert(h2.innerText == 'More Recipes');
```

يجب أن يكون لديك عنصر قائمة غير مرتبة `<ul>` مع عناصر القائمة `<li>` تحتوي على علامات `<a>` تؤدي إلى وصفات أخرى.

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
