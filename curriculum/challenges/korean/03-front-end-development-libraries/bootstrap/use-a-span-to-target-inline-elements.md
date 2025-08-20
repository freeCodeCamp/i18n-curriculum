---
id: bad87fee1348bd9aedf08845
title: 대상이 되는 인라인 요소에 span 사용하기
challengeType: 0
forumTopicId: 18370
dashedName: use-a-span-to-target-inline-elements
---

# --description--

You can use spans to create inline elements. Remember when we used the `btn-block` class to make the button fill the entire row?

<button class='btn' style='background-color: rgb(0, 100, 0);  color: rgb(255, 255, 255);'>normal button</button>

<button class='btn btn-block' style='background-color: rgb(0, 100, 0);  color: rgb(255, 255, 255);'>btn-block 버튼</button>

이는 "인라인"과 "블락" 요소 간의 차이에 대해 설명해줍니다.

인라인 `span` 요소를 사용하여 같은 줄에 여러 요소를 놓을 수 있으며 같은 줄의 다른 부분들을 다르게 스타일링 할 수 있습니다.

`span` 요소를 사용하여 현재 `Things cats love`라는 글자를 가진 `p` 요소 안에 단어 `love`를 중첩시키세요. 그런 다음 글자를 빨간색으로 만들도록 `span`에 `text-danger` 클래스를 주세요.

여기 `Top 3 things cats hate`를 가진 `p` 요소에 이 작업을 수행하는 방법이 있습니다:

```html
<p>Top 3 things cats <span class="text-danger">hate:</span></p>
```

# --hints--

`span` 요소는 `p` 요소 안에 있어야 합니다.

```js
assert.lengthOf(document.querySelectorAll('p span'),1);
```

`span` 요소는 `love`라는 글자를 가져야 합니다.

```js
assert.match(document.querySelector('p span')?.textContent,/love/i);
assert.notMatch(document.querySelector('p span')?.textContent, /Things cats/i);
```

`span` 요소는 `text-danger` 클래스를 가져야 합니다.

```js
assert.isTrue(document.querySelector('span')?.classList?.contains('text-danger'));
```

`span` 요소는 닫는 태그를 가져야 합니다.

```js
assert.match(code,/<\/span>/g);
assert.match(code,/<span/g);
assert.equal(code.match(/<\/span>/g).length,code.match(/<span/g).length);
```

# --seed--

## --seed-contents--

```html
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
<style>

  h2 {
    font-family: Lobster, Monospace;
  }

  .thick-green-border {
    border-color: green;
    border-width: 10px;
    border-style: solid;
    border-radius: 50%;
  }

</style>

<div class="container-fluid">
  <h2 class="text-primary text-center">CatPhotoApp</h2>

  <a href="#"><img class="img-responsive thick-green-border" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg" class="img-responsive" alt="Tuxedo cats running on dirt ground.">
  <div class="row">
    <div class="col-xs-4">
      <button class="btn btn-block btn-primary">Like</button>
    </div>
    <div class="col-xs-4">
      <button class="btn btn-block btn-info">Info</button>
    </div>
    <div class="col-xs-4">
      <button class="btn btn-block btn-danger">Delete</button>
    </div>
  </div>
  <p>Things cats love:</p>
  <ul>
    <li>catnip</li>
    <li>laser pointers</li>
    <li>lasagna</li>
  </ul>
  <p>Top 3 things cats hate:</p>
  <ol>
    <li>flea treatment</li>
    <li>thunder</li>
    <li>other cats</li>
  </ol>
  <form action="https://freecatphotoapp.com/submit-cat-photo">
    <label><input type="radio" name="indoor-outdoor"> Indoor</label>
    <label><input type="radio" name="indoor-outdoor"> Outdoor</label>
    <label><input type="checkbox" name="personality"> Loving</label>
    <label><input type="checkbox" name="personality"> Lazy</label>
    <label><input type="checkbox" name="personality"> Crazy</label>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</div>
```

# --solutions--

```html
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
<style>

  h2 {
    font-family: Lobster, Monospace;
  }

  .thick-green-border {
    border-color: green;
    border-width: 10px;
    border-style: solid;
    border-radius: 50%;
  }

</style>

<div class="container-fluid">
  <h2 class="text-primary text-center">CatPhotoApp</h2>

  <a href="#"><img class="img-responsive thick-green-border" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg" class="img-responsive" alt="Tuxedo cats running on dirt ground.">
  <div class="row">
    <div class="col-xs-4">
      <button class="btn btn-block btn-primary">Like</button>
    </div>
    <div class="col-xs-4">
      <button class="btn btn-block btn-info">Info</button>
    </div>
    <div class="col-xs-4">
      <button class="btn btn-block btn-danger">Delete</button>
    </div>
  </div>
  <p>Things cats <span class="text-danger">love</span>:</p>
  <ul>
    <li>catnip</li>
    <li>laser pointers</li>
    <li>lasagna</li>
  </ul>
  <p>Top 3 things cats hate:</p>
  <ol>
    <li>flea treatment</li>
    <li>thunder</li>
    <li>other cats</li>
  </ol>
  <form action="https://freecatphotoapp.com/submit-cat-photo">
    <label><input type="radio" name="indoor-outdoor"> Indoor</label>
    <label><input type="radio" name="indoor-outdoor"> Outdoor</label>
    <label><input type="checkbox" name="personality"> Loving</label>
    <label><input type="checkbox" name="personality"> Lazy</label>
    <label><input type="checkbox" name="personality"> Crazy</label>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</div>
```
