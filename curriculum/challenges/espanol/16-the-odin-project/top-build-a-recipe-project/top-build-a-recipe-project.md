---
id: 6391d1a4f7ac71efd0621380
title: Construir un proyecto de página de recetas
challengeType: 25
dashedName: top-build-a-recipe-project
---

# --description--

El sitio web constará de una página de índice principal que tendrá enlaces a algunas recetas. La página web no será muy bonita para cuando haya terminado.

**Instrucciones:**

1. La página de tu receta debe contener una etiqueta `DOCTYPE`.
1. Tu página de receta debe incluir un elemento `html` con un elemento `head` y `body` como hijos.
1. Debes tener un elemento `title` dentro del elemento `head` con el texto <codeThe Odin Recipes</code>.
1. Debes ver un elemento `h1` que tiene el texto `Creamy Chocolate Fudge`.
1. Debes ver una imagen relacionada con un atributo `alt`.
1. Debes tener un elemento `h2` con el texto `Description` debajo de la imagen.
1. Debes ver algunos párrafos debajo de,`Description` que describan la receta.
1. Debes tener un elemento `h2` con el texto `Ingredients`.
1. Debajo del título `Ingredients` debe haber una lista desordenada con los ingredientes necesarios para la receta.
1. Debajo de la lista de ingredientes añade otro título llamado `Steps`.
1. Debes ver una lista ordenada con algunos de los pasos necesarios para completar la receta.
1. Debajo de los pasos, debe haber un elemento `h2` con el texto `More Recipes`.
1. Debes ver algunos enlaces a otras recetas, dentro de una lista desordenada que con elementos anchor dentro de los elementos de lista.
1. Estos elementos ancla deberían tener un atributo `href` con el valor `#`.

# --hints--

Debes tener una etiqueta `DOCTYPE`.

```js
assert(code.match(/<!DOCTYPE\s+?html\s*?>/gi));
```

Debes tener un elemento `html` con elementos `head` y `body`.

```js
const html = document.querySelectorAll('html')[0];
const head = document.querySelectorAll('html > head')[0];
const body = document.querySelectorAll('html > body')[0];

assert(html && head && body);
```

Debes tener un elemento `title` dentro del elemento `head` con el texto `The Odin Recipes`.

```js
assert(document.querySelectorAll('HEAD > TITLE')[0]?.innerText == 'The Odin Recipes');
```

You should have an `h1` element within your `body` element that contains the text `Creamy Chocolate Fudge`.

```js
assert(document.querySelectorAll('BODY > H1')[0]?.innerText == 'Creamy Chocolate Fudge');
```

Debes tener una imagen con un atributo `alt`.

```js
const img = document.querySelectorAll('IMG')[0];

assert(img && img.alt !='' && img.src != '')
```

Debes tener un elemento `h2` con el texto `Description`.

```js
const h2 = document.querySelectorAll('H2')[0];

assert(h2?.innerText == 'Description');
```

Debes tener al menos dos elementos `p` describiendo la receta.

```js
const paragraphs = document.querySelectorAll('P');

assert(paragraphs?.length > 1);
```

Debes tener un elemento `h2` con el texto `Ingredients`.

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

Debes tener un elemento `h2` con el texto `Steps`.

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

Debes tener un elemento `h2` con el texto `More Recipes`.

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
