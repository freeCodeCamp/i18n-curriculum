---
id: 587d7dbd367417b2b2512bb4
title: Sass 변수에 데이터 저장하기
challengeType: 0
forumTopicId: 301460
dashedName: store-data-with-sass-variables
---

# --description--

One feature of Sass that's different than CSS is it uses variables. They are declared and set to store data, similar to JavaScript.

자바스크립트에서 변수는 `let`이나 `const`로 정의됩니다. Sass에서는 변수를 `$`로 시작하고 변수 이름을 붙여줍니다.

다음 2가지 예시가 있습니다.

```scss
$main-fonts: Arial, sans-serif;
$headings-color: green;
```

그리고 변수는 이렇게 사용합니다.

```scss
h1 {
  font-family: $main-fonts;
  color: $headings-color;
}
```

변수가 유용한 예로는 여러 엘리먼트가 같은 색상이어야 하는 경우가 있습니다. 만약 색상이 변하면, 오직 변수의 값만 편집해주면 됩니다.

# --instructions--

변수 `$text-color`를 만들어서 `red`로 설정해보세요. 그런 다음 `.blog-post`와 `h2` `color` 속성 값을 `$text-color` 변수로 변경하세요.

# --hints--

코드에는 `red`값을 가진 `$text-color` 변수가 선언되어 있어야 합니다.

```js
assert(code.match(/\$text-color\s*:\s*?red\s*;/g));
```

`$text-color` 변수를 사용해서 `.blog-post`와`h2`의 `color`을 변경해야 합니다.

```js
assert(code.match(/color\s*:\s*\$text-color\s*;?/g));
```

`.blog-post` 엘리먼트의 `color`는 red이어야 합니다.

```js
assert($('.blog-post').css('color') == 'rgb(255, 0, 0)');
```

`h2` 엘리먼트의 `color`는 red이어야 합니다.

```js
assert($('h2').css('color') == 'rgb(255, 0, 0)');
```

# --seed--

## --seed-contents--

```html
<style type='text/scss'>


  .header{
    text-align: center;
  }
  .blog-post, h2 {
    color: red;
  }
</style>

<h1 class="header">Learn Sass</h1>
<div class="blog-post">
  <h2>Some random title</h2>
  <p>This is a paragraph with some random text in it</p>
</div>
<div class="blog-post">
  <h2>Header #2</h2>
  <p>Here is some more random text.</p>
</div>
<div class="blog-post">
  <h2>Here is another header</h2>
  <p>Even more random text within a paragraph</p>
</div>
```

# --solutions--

```html
<style type='text/scss'>
  $text-color: red;

  .header{
    text-align: center;
  }
  .blog-post, h2 {
    color: $text-color;
  }
</style>

<h1 class="header">Learn Sass</h1>
<div class="blog-post">
  <h2>Some random title</h2>
  <p>This is a paragraph with some random text in it</p>
</div>
<div class="blog-post">
  <h2>Header #2</h2>
  <p>Here is some more random text.</p>
</div>
<div class="blog-post">
  <h2>Here is another header</h2>
  <p>Even more random text within a paragraph</p>
</div>
```
