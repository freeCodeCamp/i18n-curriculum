---
id: 587d781b367417b2b2512aba
title: s 태그로 취소선이 적용된 텍스트 만들기
challengeType: 0
forumTopicId: 301079
dashedName: use-the-s-tag-to-strikethrough-text
---

# --description--

To strikethrough text, which is when a horizontal line cuts across the characters, you can use the `s` tag. It shows that a section of text is no longer valid. With the `s` tag, the browser applies the CSS of `text-decoration: line-through;` to the element.

# --instructions--

`h4` 태그 내부에 있는 `Google` 텍스트를 `s`태그로 감싼 뒤, 취소선 형태가 아닌 `Alphabet` 단어를 옆에 추가해 보세요.

# --hints--

당신의 코드는 마크업에 `s` 태그를 하나 추가해야 합니다.

```js
assert.lengthOf(document.querySelectorAll('s'),1);
```

`s` 태그는 `h4`태그 안에서 `Google` 텍스트를 감싸야 합니다. 이것은 `Alphabet`단어를 포함하지 않아야 합니다.

```js
assert.match(document.querySelector('h4 > s')?.textContent, /Google/gi);
assert.notMatch(document.querySelector('h4 > s')?.textContent, /Alphabet/gi);
```

`Alphabet` 단어를 `h4`태그 내부에 취소선없이 포함하여야 합니다.

```js
assert.match(document.querySelector('h4')?.innerHTML, /Alphabet/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  h4 {
    text-align: center;
    height: 25px;
  }
  p {
    text-align: justify;
  }
  .links {
    text-align: left;
    color: black;
  }
  .fullCard {
    width: 245px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin: 10px 5px;
    padding: 4px;
  }
  .cardContent {
    padding: 10px;
  }
  .cardText {
    margin-bottom: 30px;
  }
</style>
<div class="fullCard">
  <div class="cardContent">
    <div class="cardText">
      <h4>Google</h4>
      <p><em>Google was founded by Larry Page and Sergey Brin while they were <u>Ph.D. students</u> at <strong>Stanford University</strong>.</em></p>
    </div>
    <div class="cardLinks">
      <a href="https://en.wikipedia.org/wiki/Larry_Page" target="_blank" class="links">Larry Page</a><br><br>
      <a href="https://en.wikipedia.org/wiki/Sergey_Brin" target="_blank" class="links">Sergey Brin</a>
    </div>
  </div>
</div>
```

# --solutions--

```html
<style>
  h4 {
    text-align: center;
    height: 25px;
  }
  p {
    text-align: justify;
  }
  .links {
    text-align: left;
    color: black;
  }
  .fullCard {
    width: 245px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin: 10px 5px;
    padding: 4px;
  }
  .cardContent {
    padding: 10px;
  }
  .cardText {
    margin-bottom: 30px;
  }
</style>
<div class="fullCard">
  <div class="cardContent">
    <div class="cardText">
      <h4><s>Google</s> Alphabet</h4>
      <p><em>Google was founded by Larry Page and Sergey Brin while they were <u>Ph.D. students</u> at <strong>Stanford University</strong>.</em></p>
    </div>
    <div class="cardLinks">
      <a href="https://en.wikipedia.org/wiki/Larry_Page" target="_blank" class="links">Larry Page</a><br><br>
      <a href="https://en.wikipedia.org/wiki/Sergey_Brin" target="_blank" class="links">Sergey Brin</a>
    </div>
  </div>
</div>
```
