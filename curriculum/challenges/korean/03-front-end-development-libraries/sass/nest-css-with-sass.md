---
id: 587d7dbd367417b2b2512bb5
title: Sass로 CSS 중첩하기
challengeType: 0
forumTopicId: 301457
dashedName: nest-css-with-sass
---

# --description--

Sass allows nesting of CSS rules, which is a useful way of organizing a style sheet.

일반적으로 각 엘리먼트는 스타일을 지정하기 위해서 다음과 같이 다른 줄에 타겟을 지정합니다:

```scss
article {
  height: 200px;
}

article p {
  color: white;
}

article ul {
  color: blue;
}
```

큰 프로젝트인 경우, CSS 파일은 많은 줄과 규칙이 있을 것입니다. 이런 경우, 각 부모의 엘리먼트 내에 자식 스타일 규칙을 중첩시켜서 코드를 정리하는데 도움이 됩니다.

```scss
article {
  height: 200px;

  p {
    color: white;
  }

  ul {
    color: blue;
  }
}

```

# --instructions--

위에서 알아본 중첩 기술을 사용해서 `.blog-post` 엘리먼트의 두 자식에 대해 CSS 규칙을 다시 구성해보세요. 테스트를 위해서 `h1`이 `p` 엘리먼트보다 앞에 있어야 합니다.

# --hints--

코드는 `h1`과 `p`가 부모 엘리먼트인 `.blog-post`에 중첩되도록 CSS 규칙을 다시 구성되어야 합니다.

```js
assert(
  code.match(
    /\.blog-post\s*?{\s*?h1\s*?{\s*?text-align:\s*?center;\s*?color:\s*?blue;\s*?}\s*?p\s*?{\s*?font-size:\s*?20px;\s*?}\s*?}/gi
  )
);
```

# --seed--

## --seed-contents--

```html
<style type='text/scss'>
  .blog-post {

  }
  h1 {
    text-align: center;
    color: blue;
  }
  p {
    font-size: 20px;
  }
</style>

<div class="blog-post">
  <h1>Blog Title</h1>
  <p>This is a paragraph</p>
</div>
```

# --solutions--

```html
<style type='text/scss'>
  .blog-post {
    h1 {
      text-align: center;
      color: blue;
    }
    p {
      font-size: 20px;
    }
  }
</style>

<div class="blog-post">
  <h1>Blog Title</h1>
  <p>This is a paragraph</p>
</div>
```
