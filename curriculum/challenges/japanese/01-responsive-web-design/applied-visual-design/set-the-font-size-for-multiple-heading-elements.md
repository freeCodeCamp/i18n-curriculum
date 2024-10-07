---
id: 587d781c367417b2b2512ac2
title: 複数の見出し要素の font-size を設定する
challengeType: 0
videoUrl: 'https://scrimba.com/c/cPpQNT3'
forumTopicId: 301067
dashedName: set-the-font-size-for-multiple-heading-elements
---

# --description--

The `font-size` property is used to specify how large the text is in a given element. This rule can be used for multiple elements to create visual consistency of text on a page. In this challenge, you'll set the values for all `h1` through `h6` tags to balance the heading sizes.

# --instructions--

`style` タグの中で、以下の `font-size` を設定してください。

- `h1` tag to 68px.
- `h2` タグを 52px に
- `h3` タグを 40px に
- `h4` タグを 32px に
- `h5` タグを 21px に
- `h6` タグを 14px に

# --hints--

`h1` タグの `font-size` プロパティを 68 ピクセルに設定してください。

```js
 const fontSizeOfh1 = new __helpers.CSSHelp(document).getStyle('h1')?.getPropertyValue('font-size');
 assert.equal(fontSizeOfh1 ,'68px');
```

`h2` タグの `font-size` プロパティを 52 ピクセルに設定してください。

```js
 const fontSizeOfh2 = new __helpers.CSSHelp(document).getStyle('h2')?.getPropertyValue('font-size');
 assert.equal(fontSizeOfh2 ,'52px');
```

`h3` タグの `font-size` プロパティを 40 ピクセルに設定してください。

```js
 const fontSizeOfh3 = new __helpers.CSSHelp(document).getStyle('h3')?.getPropertyValue('font-size');
 assert.equal(fontSizeOfh3 ,'40px');
```

`h4` タグの `font-size` プロパティを 32 ピクセルに設定してください。

```js
 const fontSizeOfh4 = new __helpers.CSSHelp(document).getStyle('h4')?.getPropertyValue('font-size');
 assert.equal(fontSizeOfh4 , '32px');
```

`h5` タグの `font-size` プロパティを 21 ピクセルに設定してください。

```js
 const fontSizeOfh5 = new __helpers.CSSHelp(document).getStyle('h5')?.getPropertyValue('font-size');
 assert.equal(fontSizeOfh5 ,'21px');
```

`h6` タグの `font-size` プロパティを 14 ピクセルに設定してください。

```js
 const fontSizeOfh6 = new __helpers.CSSHelp(document).getStyle('h6')?.getPropertyValue('font-size');
 assert.equal(fontSizeOfh6 , '14px');
```

# --seed--

## --seed-contents--

```html
<style>






</style>
<h1>This is h1 text</h1>
<h2>This is h2 text</h2>
<h3>This is h3 text</h3>
<h4>This is h4 text</h4>
<h5>This is h5 text</h5>
<h6>This is h6 text</h6>
```

# --solutions--

```html
<style>
  h1 {
    font-size: 68px;
  }
  h2 {
    font-size: 52px;
  }
  h3 {
    font-size: 40px;
  }
  h4 {
    font-size: 32px;
  }
  h5 {
    font-size: 21px;
  }
  h6 {
    font-size: 14px;
  }
</style>
<h1>This is h1 text</h1>
<h2>This is h2 text</h2>
<h3>This is h3 text</h3>
<h4>This is h4 text</h4>
<h5>This is h5 text</h5>
<h6>This is h6 text</h6>
```
