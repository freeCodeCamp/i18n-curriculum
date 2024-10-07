---
id: 587d781c367417b2b2512ac2
title: 여러 헤딩 요소들의 폰트 사이즈 설정하기
challengeType: 0
videoUrl: 'https://scrimba.com/c/cPpQNT3'
forumTopicId: 301067
dashedName: set-the-font-size-for-multiple-heading-elements
---

# --description--

The `font-size` property is used to specify how large the text is in a given element. This rule can be used for multiple elements to create visual consistency of text on a page. In this challenge, you'll set the values for all `h1` through `h6` tags to balance the heading sizes.

# --instructions--

`style` 태그 안에서 다음의 `font-size`를 설정합니다.

- `h1` tag to 68px.
- `h2` 태그는 52px로 설정합니다.
- `h3` 태그는 40px로 설정합니다.
- `h4` 태그는 32px로 설정합니다.
- `h5` 태그는 21px로 설정합니다.
- `h6` 태그는 14px로 설정합니다.

# --hints--

코드에서 `h1` 태그의 `font-size` 속성을 68픽셀로 설정해야 합니다.

```js
 const fontSizeOfh1 = new __helpers.CSSHelp(document).getStyle('h1')?.getPropertyValue('font-size');
 assert.equal(fontSizeOfh1 ,'68px');
```

코드에서 `h2` 태그의 `font-size` 속성을 52픽셀로 설정해야 합니다.

```js
 const fontSizeOfh2 = new __helpers.CSSHelp(document).getStyle('h2')?.getPropertyValue('font-size');
 assert.equal(fontSizeOfh2 ,'52px');
```

코드에서 `h3` 태그의 `font-size` 속성을 40픽셀로 설정해야 합니다.

```js
 const fontSizeOfh3 = new __helpers.CSSHelp(document).getStyle('h3')?.getPropertyValue('font-size');
 assert.equal(fontSizeOfh3 ,'40px');
```

코드에서 `h4` 태그의 `font-size` 속성을 32픽셀로 설정해야 합니다.

```js
 const fontSizeOfh4 = new __helpers.CSSHelp(document).getStyle('h4')?.getPropertyValue('font-size');
 assert.equal(fontSizeOfh4 , '32px');
```

코드에서 `h5` 태그의 `font-size` 속성을 21픽셀로 설정해야 합니다.

```js
 const fontSizeOfh5 = new __helpers.CSSHelp(document).getStyle('h5')?.getPropertyValue('font-size');
 assert.equal(fontSizeOfh5 ,'21px');
```

코드에서 `h6` 태그의 `font-size` 속성을 14픽셀로 설정해야 합니다.

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
