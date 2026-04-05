---
id: 5dfa371beacea3f48c6300af
title: 21단계
challengeType: 0
dashedName: step-21
---

# --description--

하위 등급 제목 요소를 페이지에 추가하면 새로운 하위 섹션을 시작하는 것으로 간주됩니다.

두 번째 `h2` 요소의 마지막 `section` 요소 뒤에 이 텍스트가 있는 `h3` 요소를 추가하세요:

`Things cats love:`

# --hints--

두 번째 `section` 요소가 없거나 여는 태그와 닫는 태그가 모두 없는 것 같습니다.

```js
assert(
  document.querySelectorAll('main > section')[1] &&
    code.match(/\<\/section>/g).length == 2
);
```

두 번째 `h3` 요소의 닫는 태그 바로 위에 `section` 요소가 있어야 합니다.

```js
assert(
  document.querySelectorAll('main > section')[1].lastElementChild.nodeName ===
    'H3'
);
```

`h3` 요소에는 닫는 태그가 있어야 합니다. 닫는 태그는 `/` 문자 바로 뒤에 `<`가 있습니다.

```js
assert.lengthOf(code.match(/<\/h3>/g), 1);
```

두 번째 `h3` 요소의 닫는 태그 바로 위에 있는 `section` 요소에는 `Things cats love:` 텍스트가 있어야 합니다. 텍스트 끝에 콜론이 포함되어 있는지 확인하세요.

```js
assert(
  document
    .querySelectorAll('main > section')[1]
    .lastElementChild.innerText.toLowerCase()
    .replace(/\s+/g, ' ') === 'things cats love:'
);
```

마지막 `h2` 요소에 중첩된 마지막 `Cat Lists` 요소 위에 `h3` 요소가 `section` 텍스트와 함께 있어야 합니다. `h2` 요소를 실수로 삭제했을 수 있습니다.

```js
const secondSectionLastElemNode = document.querySelectorAll('main > section')[1]
  .lastElementChild;
assert(
  secondSectionLastElemNode.nodeName === 'H3' &&
    secondSectionLastElemNode.previousElementSibling.innerText
      .toLowerCase()
      .replace(/\s+/g, ' ') === 'cat lists'
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
--fcc-editable-region--
      <section>
        <h2>Cat Lists</h2>
        
      </section>
--fcc-editable-region--
    </main>
  </body>
</html>
```
