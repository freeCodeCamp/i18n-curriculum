---
id: 5dfa30b9eacea3f48c6300ad
title: 17단계
challengeType: 0
dashedName: step-17
---

# --description--

이전 단계에서는 텍스트를 링크로 만들기 위해 앵커 요소를 사용했습니다. 다른 유형의 콘텐츠도 앵커 태그로 감싸서 링크로 만들 수 있습니다.

다음은 이미지를 링크로 만드는 예시입니다:

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

필요한 요소 태그로 이미지를 감싸서 링크로 만드세요. 앵커의 `https://freecatphotoapp.com` 속성 값으로 `href`를 사용하세요.

# --hints--

`img` 요소가 `src` 값으로 `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`를 가져야 합니다. 실수로 삭제했을 수 있습니다.

```js
assert.equal(
  document.querySelector('img')?.getAttribute('src'),
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

앵커(`a`) 요소는 여는 태그가 있어야 합니다. 여는 태그 구문은 다음과 같습니다: `<elementName>`.

```js
assert.isAtLeast(document.querySelectorAll('a').length, 3);
```

이미지 뒤에 닫는(`a`) 태그가 없습니다.

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

앵커(`a`) 요소는 닫는 태그가 있어야 합니다. 닫는 태그는 `/` 문자 바로 뒤에 `<`가 있습니다.

```js
assert.isAtLeast(code.match(/<\/a>/g)?.length, 3);
```

닫는 앵커(`a`) 태그는 하나만 추가해야 합니다. 추가된 태그가 있다면 삭제하세요.

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

앵커(`a`) 요소에 `href` 속성이 없습니다. 여는 태그 이름 뒤에 공백이 있거나 모든 속성 이름 앞에 공백이 있는지 확인하세요.

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

앵커(`a`) 요소는 `https://freecatphotoapp.com`로 링크해야 합니다. URL을 빼먹었거나 오타가 있을 수 있습니다.

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

`img` 요소는 앵커(`a`) 요소 안에 중첩되어야 합니다. 전체 `img` 요소가 앵커(`a`) 요소의 여는 태그와 닫는 태그 사이에 있어야 합니다.

```js
assert.equal(document.querySelector('img')?.parentNode.nodeName, 'A');
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <h2>Cat Photos</h2>
      <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
      <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
--fcc-editable-region--
      <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
--fcc-editable-region--
    </main>
  </body>
</html>
```
