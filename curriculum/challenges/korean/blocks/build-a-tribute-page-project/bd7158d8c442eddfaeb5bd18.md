---
id: bd7158d8c442eddfaeb5bd18
title: 헌정 페이지 만들기
challengeType: 14
saveSubmissionToDB: true
forumTopicId: 301147
dashedName: build-a-tribute-page
---

# --description--

**목표:** <a href="https://tribute-page.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://tribute-page.freecodecamp.rocks</a>와 기능적으로 유사한 앱을 만드세요. **이 데모 프로젝트를 복사하지 마세요**.

**사용자 스토리:**

1. 헌정 페이지에는 `main` 요소가 있어야 하며, 이 요소에는 모든 다른 요소를 포함하는 `id`가 `main`로 있어야 합니다.
1. `id`가 `title`인 요소가 있어야 하며, 이 요소는 헌정 페이지 주제를 설명하는 문자열(예: "Dr. Norman Borlaug")을 포함해야 합니다.
1. `figure` 또는 `div` 요소 중 하나가 `id`가 `img-div`인 요소를 포함해야 합니다.
1. `#img-div` 요소 안에는 `img` 요소가 있어야 하며, 이 요소에는 대응하는 `id="image"`가 있어야 합니다.
1. `#img-div` 요소 안에는 `id="img-caption"`에 표시된 이미지를 설명하는 텍스트 내용을 포함하는 `#img-div`가 있어야 합니다.
1. 헌정 페이지 주제를 설명하는 텍스트 내용을 포함하는 대응하는 `id="tribute-info"`가 있는 요소가 있어야 합니다.
1. 헌정 페이지 주제에 대한 추가 정보를 제공하는 외부 사이트로 링크하는 `a` 요소가 대응하는 `id="tribute-link"`와 함께 있어야 합니다. 힌트: 링크가 새 탭에서 열리도록 하려면 `target` 속성을 `_blank`로 설정해야 합니다.
1. `#image`는 부모 요소 너비에 상대적으로 크기를 조절하되 원래 크기를 넘지 않도록 `max-width`와 `height` 속성을 사용해야 합니다.
1. `img` 요소는 부모 요소 내에서 가운데 정렬되어야 합니다.

사용자 스토리를 모두 충족하고 아래 모든 테스트를 통과해야 이 프로젝트를 완료할 수 있습니다. 자신만의 스타일로 만들어 보세요. 즐거운 코딩 되세요!

**참고:** CSS를 적용하려면 HTML에 `<link rel="stylesheet" href="styles.css">`를 추가해 스타일시트를 링크하세요.

# --hints--

`main` 요소가 `id`가 `main`인 속성을 가져야 합니다.

```js
const el = document.getElementById('main');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'MAIN');
```

`#img-div`, `#image`, `#img-caption`, `#tribute-info`, `#tribute-link`는 모두 `#main`의 자손 요소여야 합니다.

```js
const el1 = document.querySelector('#main #img-div');
const el2 = document.querySelector('#main #image');
const el3 = document.querySelector('#main #img-caption');
const el4 = document.querySelector('#main #tribute-info');
const el5 = document.querySelector('#main #tribute-link');
assert.isNotNull(el1);
assert.isNotNull(el2);
assert.isNotNull(el3);
assert.isNotNull(el4);
assert.isNotNull(el5);
```

`id`가 `title`인 요소가 있어야 합니다.

```js
const el = document.getElementById('title');
assert.isNotNull(el);
```

`#title`는 비어 있으면 안 됩니다.

```js
const el = document.getElementById('title');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText.trim());
```

`figure` 또는 `div` 요소가 `id`가 `img-div`인 속성을 가져야 합니다.

```js
const el = document.getElementById('img-div');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGURE');
```

`img` 요소가 `id`가 `image`인 속성을 가져야 합니다.

```js
const el = document.getElementById('image');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'IMG');
```

`#image`는 `#img-div`의 자손 요소여야 합니다.

```js
const el = document.querySelector('#img-div #image');
assert.isNotNull(el);
```

`figcaption` 또는 `div` 요소가 `id`가 `img-caption`인 속성을 가져야 합니다.

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGCAPTION');
```

`#img-caption`는 `#img-div`의 자손 요소여야 합니다.

```js
const el = document.querySelector('#img-div #img-caption');
assert.isNotNull(el);
```

`#img-caption`는 비어 있으면 안 됩니다.

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

`id`가 `tribute-info`인 요소가 있어야 합니다.

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
```

`#tribute-info`는 비어 있으면 안 됩니다.

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

`a` 요소가 `id`가 `tribute-link`인 속성을 가져야 합니다.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'A');
```

`#tribute-link`는 `href` 속성과 값을 가져야 합니다.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.isNotNull(el.href);
assert.isNotEmpty(el.href);
```

`#tribute-link`는 `target` 속성을 `_blank`로 설정해야 합니다.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.target, '_blank');
```

`img` 요소가 `display`가 `block`인 속성을 가져야 합니다.

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('display');
assert.strictEqual(style, 'block');
```

`#image`는 `max-width`가 `100%`인 속성을 가져야 합니다.

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('max-width');
assert.strictEqual(style, '100%');
```

`#image`는 `height`가 `auto`인 속성을 가져야 합니다.

```js
// taken from the testable-projects repo
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const oldDisplayValue = imgStyle.getPropertyValue('display');
const oldDisplayPriority = imgStyle.getPropertyPriority('display');
img?.style.setProperty('display', 'none', 'important');
const heightValue = imgStyle?.getPropertyValue('height');
img?.style.setProperty('display', oldDisplayValue, oldDisplayPriority);
assert.strictEqual(heightValue, 'auto');
```

`#image`는 부모 요소 내에서 가운데 정렬되어야 합니다.

```js
// taken from the testable-projects repo
const img = document.getElementById('image'),
  imgParent = img?.parentElement,
  imgLeft = img?.getBoundingClientRect().left,
  imgRight = img?.getBoundingClientRect().right,
  parentLeft = imgParent?.getBoundingClientRect().left,
  parentRight = imgParent?.getBoundingClientRect().right,
  leftMargin = imgLeft - parentLeft,
  rightMargin = parentRight - imgRight;
assert.isBelow(leftMargin - rightMargin, 6);
assert.isBelow(rightMargin - leftMargin, 6);
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
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <link
      href="https://fonts.googleapis.com/css?family=Pacifico"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Lobster"
      rel="stylesheet"
    />
    <link href="styles.css" rel="stylesheet" />
    <title>Tribute Page</title>
  </head>
  <body>
    <h1>Tribute Page</h1>
    <p>The below card was designed as a tribute page for freeCodeCamp.</p>
    <main id="main">
      <div id="img-div">
        <img
          id="image"
          class="border"
          src="https://upload.wikimedia.org/wikipedia/en/5/53/Pok%C3%A9mon_Togepi_art.png"
          alt="An image of Togepi"
        />
        <figcaption id="img-caption">Togepi, happy as always.</figcaption>
      </div>
      <h2 id="title">Togepi</h2>
      <hr />
      <div id="tribute-info">
        <p>
          Togepi was first discovered in the Johto region, when Ash Ketchum
          discovered a mysterious egg. However, when the egg hatched, Togepi saw
          Ash's friend Misty first and imprinted on her. Like many other
          creatures, this imprinting process created a bond and Togepi views
          Misty as his mother.
        </p>
        <p>
          Togepi is a very childlike Pokemon, and is very emotionally
          expressive. He demonstrates extreme levels of joy and sadness.
        </p>
        <hr />
        <p><u>Battle Information</u></p>
        <ul style="list-style-type: none">
          <li>Type: Fairy</li>
          <li>Evolutions: Togepi -> Togetic -> Togekiss</li>
          <li>Moves: Growl, Pound, Sweet Kiss, Charm</li>
          <li>Weaknesses: Poison, Steel</li>
          <li>Resistances: Dragon</li>
        </ul>
        <p>
          Check out this
          <a
            id="tribute-link"
            href="https://bulbapedia.bulbagarden.net/wiki/Togepi_(Pok%C3%A9mon)"
            target="_blank"
            rel="noopener noreferrer"
            >Bulbapedia article on Togepi</a
          >
          for more information on this great Pokemon.
        </p>
      </div>
    </main>
  </body>
  <footer>
    <a href="../">Return to Project List</a> |
    <a href="https://www.nhcarrigan.com">Return to HomePage</a>
  </footer>
</html>
```

```css
body {
  background-color: #3a3240;
  color: white;
}
main {
  background-color: #92869c;
  font-family: Lobster;
  max-width: 500px;
  margin: 20px auto;
  color: black;
  border-radius: 50px;
  box-shadow: 10px 10px rgba(0, 0, 0, 0.5);
}
h2 {
  text-align: center;
  font-size: 20pt;
  font-family: Pacifico;
}
body {
  text-align: center;
  font-size: 12pt;
}
footer {
  text-align: center;
  font-size: 10pt;
}
.border {
  border-color: black;
  border-width: 5px;
  border-style: solid;
}
#image {
  height: auto;
  display: block;
  margin: auto;
  max-width: 100%;
  border-radius: 50%;
}
#img-caption {
  font-size: 10pt;
}
a:not(#tribute-link) {
  color: white;
}
hr {
  border-color: black;
}
```
