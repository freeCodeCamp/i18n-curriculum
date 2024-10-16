---
id: 587d7dbd367417b2b2512bb5
title: CSS mit Sass verschachteln
challengeType: 0
forumTopicId: 301457
dashedName: nest-css-with-sass
---

# --description--

Sass allows nesting of CSS rules, which is a useful way of organizing a style sheet.

Normalerweise wird jedes Element auf eine andere Zeile ausgerichtet, um es zu stylen, etwa so:

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

Bei einem großen Projekt wird die CSS-Datei viele Zeilen und Regeln haben. Hier kann die Verschachtelung helfen, deinen Code zu organisieren, indem du untergeordnete Stilregeln innerhalb der jeweiligen übergeordneten Elemente platzierst:

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

Verwende die oben gezeigte Verschachtelungstechnik, um die CSS-Regeln für beide Kindelemente des `.blog-post`-Elements neu zu organisieren. Zu Testzwecken sollte das `h1` vor dem `p`-Element stehen.

# --hints--

Dein Code sollte die CSS-Regeln so umgestalten, dass das `h1` und `p` im Elternelement `.blog-post` verschachtelt sind.

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
