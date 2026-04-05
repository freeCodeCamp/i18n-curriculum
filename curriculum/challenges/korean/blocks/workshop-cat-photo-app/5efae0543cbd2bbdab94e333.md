---
id: 5efae0543cbd2bbdab94e333
title: 32단계
challengeType: 0
dashedName: step-32
---

# --description--

추가한 이미지의 접근성을 향상하려면, 다음 텍스트가 포함된 `alt` 속성을 추가하세요:

`Two tabby kittens sleeping together on a couch.`

# --hints--

`figure` 요소에는 여는 태그가 있어야 합니다. 여는 태그의 구문은 다음과 같습니다: `<elementName>`.

```js
assert.lengthOf(document.querySelectorAll('figure'), 2);
```

`figure` 요소에는 닫는 태그가 있어야 합니다. 닫는 태그는 `/` 문자 바로 뒤에 `<`가 있습니다.

```js
assert.lengthOf(code.match(/<\/figure>/g), 2);
```

마지막 `figure` 요소의 닫는 태그 바로 위에 `section` 요소가 있어야 합니다.

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

Cats `img` 요소는 `figure` 요소 안에 중첩되어야 합니다.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.exists(catsImg);
```

세 번째 이미지에는 `src` 속성이 `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg`로 설정되어야 합니다.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.strictEqual(
  catsImg?.src?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

Cats `img` 요소에는 값이 `alt`인 `Two tabby kittens sleeping together on a couch.` 속성이 있어야 합니다.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.match(
  catsImg
    ?.getAttribute('alt')
    ?.replace(/\s+/g, ' '),
    /^Two tabby kittens sleeping together on a couch..?$/i
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
--fcc-editable-region--
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg">
--fcc-editable-region--
        </figure>
      </section>
    </main>
  </body>
</html>
```
