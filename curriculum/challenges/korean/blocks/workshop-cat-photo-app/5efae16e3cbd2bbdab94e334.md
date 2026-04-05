---
id: 5efae16e3cbd2bbdab94e334
title: Step 33
challengeType: 0
dashedName: step-33
---

# --description--

마지막 `img` 요소 뒤에 텍스트 `figcaption`를 가진 `Cats hate other cats.` 요소를 추가하세요

# --hints--

`figcaption` 요소에는 여는 태그가 있어야 합니다. 여는 태그의 구문은 다음과 같습니다: `<elementName>`.

```js
assert.lengthOf(document.querySelectorAll('figcaption'), 2);
```

`figcaption` 요소에는 닫는 태그가 있어야 합니다. 닫는 태그는 `/` 문자 바로 뒤에 `<`가 있습니다.

```js
assert.lengthOf(code.match(/<\/figcaption\>/g), 2);
```

두 번째 `figure` 요소의 닫는 태그 바로 위에 `section` 요소가 있어야 합니다.

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

마지막 `img` 요소는 `figure` 요소 안에 중첩되어야 합니다.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.equal(
    catsImg?.getAttribute('src')?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

`figure` 요소에는 여는 태그가 있어야 합니다. 여는 태그의 구문은 다음과 같습니다: `<elementName>`.

```js
assert.lengthOf(document.querySelectorAll('figure'), 2);
```

`figure` 요소에는 닫는 태그가 있어야 합니다. 닫는 태그는 `/` 문자 바로 뒤에 `<`가 있습니다.

```js
assert.lengthOf(code.match(/<\/figure\>/g), 2);
```

`figcaption` 요소는 `figure` 요소 안에 중첩되어야 합니다.

```js
assert.lengthOf(document.querySelectorAll('figure > figcaption'), 2);
```

`figcaption` 요소 안에 중첩된 `figure` 요소는 `img` 요소 아래에 있어야 합니다. `img` 요소와 `figcaption` 요소의 순서가 잘못되었습니다.

```js
assert.equal(
  document.querySelectorAll('figcaption')[1]?.previousElementSibling.nodeName,
    'IMG'
);
```

`figcaption` 요소에는 텍스트 `Cats hate other cats.`가 있어야 합니다. 단어가 빠졌거나 오타가 있습니다.

```js
assert.match(
  document
    .querySelectorAll('figcaption')[1]
    ?.innerText?.trim().replace(/\s+/g, ' ').toLowerCase(),
    /^Cats hate other cats\.?$/i
);
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <section>
        <h2>Cat Photos</h2>
        <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
        <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
        <a href="https://freecatphotoapp.com"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
      </section>
      <section>
        <h2>Cat Lists</h2>
        <h3>Things cats love:</h3>
        <ul>
          <li>catnip</li>
          <li>laser pointers</li>
          <li>lasagna</li>
        </ul>
        <figure>
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg" alt="A slice of lasagna on a plate.">
          <figcaption>Cats <em>love</em> lasagna.</figcaption>  
        </figure>
        <h3>Top 3 things cats hate:</h3>
        <ol>
          <li>flea treatment</li>
          <li>thunder</li>
          <li>other cats</li>
        </ol>
        <figure>
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" alt="Two tabby kittens sleeping together on a couch.">
--fcc-editable-region--
          
--fcc-editable-region--
        </figure>
      </section>
    </main>
  </body>
</html>
```
