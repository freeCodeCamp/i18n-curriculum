---
id: 5efada803cbd2bbdab94e332
title: 31단계
challengeType: 0
dashedName: step-31
---

# --description--

방금 추가한 `figure` 요소 안에 `img` 속성이 `src`로 설정된 `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg` 요소를 중첩하세요.

# --hints--

두 번째 `figure` 요소는 여는 태그가 있어야 합니다. 여는 태그의 구문은 다음과 같습니다: `<elementName>`.

```js
assert(document.querySelectorAll('figure').length >= 2);
```

두 번째 `figure` 요소는 닫는 태그가 있어야 합니다. 닫는 태그는 `/` 문자 바로 뒤에 `<`가 있습니다.

```js
assert(code.match(/<\/figure>/g).length >= 2);
```

두 번째 `figure` 요소의 닫는 태그 바로 위에 두 번째 `section` 요소가 있어야 합니다. 순서가 잘못되었습니다.

```js
assert.strictEqual(document.querySelectorAll('main > section')?.[1]?.lastElementChild?.nodeName, 'FIGURE');
```

`img` 요소 안에 세 번째 `figure` 요소가 중첩되어 있어야 합니다.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert(
  catsImg
);
```

세 번째 이미지에는 `src` 속성이 `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg`로 설정되어야 합니다.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.strictEqual(
  catsImg?.src?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

새 이미지의 `src`를 올바른 URL로 설정했지만, 속성 값은 항상 따옴표로 감싸는 것이 좋습니다.

```js
assert.notMatch(code, /\<img\s+.+\s+src\s*=\s*https:\/\/cdn\.freecodecamp\.org\/curriculum\/cat-photo-app\/cats\.jpg/);
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
--fcc-editable-region--
        <figure>
          
        </figure>
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```
