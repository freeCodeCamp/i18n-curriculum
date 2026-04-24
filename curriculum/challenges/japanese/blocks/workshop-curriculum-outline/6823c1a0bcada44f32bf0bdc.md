---
id: 6823c1a0bcada44f32bf0bdc
title: ステップ 4
challengeType: 0
dashedName: step-4
---

# --description--

`h1` 要素はウェブページのメイン見出しで、ページごとに1つだけ使用する必要があります。`h2` 要素はサブ見出しを表します。ページに複数あってもよく、次のように表示されます。

```html
<h2>This is a subheading.</h2>
```

`Full-Stack Curriculum` のテキストを、開く`h2`タグと閉じる`h2`タグで囲んで`h2` 要素にしてください。

# --hints--

`h2` 要素には開く`<h2>`タグが必要です。

```js
assert.exists(document.querySelector("h2"));
```

`h2` 要素には閉じる`</h2>`タグが必要です。

```js
assert.match(code, /<\/h2\s*\>/);
```

`h2` 要素は次のようになります：`<h2>Full-Stack Curriculum</h2>`。

```js
// purposefully removing friction for early users to help improve retention in early lessons
// this if very forgiving of spaces and casing
assert.match(code, /\<h2\s*\>\s*Full-Stack\s*Curriculum\s*\<\/h2\s*\>/i);
```

# --seed--

## --seed-contents--

```html
<h1>Welcome to freeCodeCamp</h1>
--fcc-editable-region--
Full-Stack Curriculum
--fcc-editable-region--
```
