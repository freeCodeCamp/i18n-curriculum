---
id: 587d774d367417b2b2512a9e
title: 見出しを使用してコンテンツの階層関係を表す
challengeType: 0
videoUrl: 'https://scrimba.com/c/cqVEktm'
forumTopicId: 301026
dashedName: use-headings-to-show-hierarchical-relationships-of-content
---

# --description--

Headings (`h1` through `h6` elements) are workhorse tags that help provide structure and labeling to your content. Screen readers can be set to read only the headings on a page so the user gets a summary. This means it is important for the heading tags in your markup to have semantic meaning and relate to each other, not be picked merely for their size values.

*セマンティックな意味*とは、コンテンツを囲むタグがその中にある情報の種類を表していることを意味します。

もしあなたが序論、本文、結論という構成で記事を書いていた場合、本文のサブセクションとして結論を置くことは適切ではないでしょう。 結論は独立したセクションであるべきです。 同様に、ウェブページ内の見出しタグも順番に並べてコンテンツの階層関係を示す必要があります。

同じランク (または上位) の見出しは新しい暗黙的なセクションを開始し、下位ランクの見出しは前のセクションのサブセクションを開始します。

たとえば、いくつかのサブセクションが `h4` 要素でラベル付けされ、`h2` 要素の後につづいているページは、スクリーンリーダーの利用者には分かりにくくなるでしょう。 6 つも選択肢があれば、ブラウザ上の見栄えが良いタグを使いたくなるでしょう。しかし、相対的なサイズを編集するには CSS を使うことができます。

最後のポイントとして、各ページは常に (かつ、たった一つの) `h1` 要素を持たなければなりません。この要素がコンテンツの主題を表します。 この見出しや他の見出しは、検索エンジンがページのトピックを理解するために部分的に使用されます。

# --instructions--

Camper Cat は忍者になる方法についての専用ページをサイト上に作りたいと考えています。 マークアップがコンテンツにセマンティックな意味を与え、セクションの適切な親子関係を表すように、見出しの修正を手伝ってあげてください。 全ての `h5` タグを、`h2` タグのサブセクションであることを示す適切な見出しレベルに変更してください。 そのためには `h3` タグを使用してください。

# --hints--

コードには `h3` 要素が 6 つ必要です。

```js
assert.lengthOf(document.querySelectorAll('h3') , 6);
```

コードには `h3` の終了タグが 6 つ必要です。

```js
assert.lengthOf((code.match(/\/h3/g) || []) ,6);
```

コードに `h5` 要素を含めないでください。

```js
assert.isEmpty(document.querySelectorAll('h5'));
```

コードに `h5` の終了タグを含めないでください。

```js
assert.notMatch(code, /\/h5/);
```

# --seed--

## --seed-contents--

```html
<h1>How to Become a Ninja</h1>
<main>
  <h2>Learn the Art of Moving Stealthily</h2>
  <h5>How to Hide in Plain Sight</h5>
  <h5>How to Climb a Wall</h5>

  <h2>Learn the Art of Battle</h2>
  <h5>How to Strengthen your Body</h5>
  <h5>How to Fight like a Ninja</h5>

  <h2>Learn the Art of Living with Honor</h2>
  <h5>How to Breathe Properly</h5>
  <h5>How to Simplify your Life</h5>
</main>
```

# --solutions--

```html
<h1>How to Become a Ninja</h1>
<main>
  <h2>Learn the Art of Moving Stealthily</h2>
  <h3>How to Hide in Plain Sight</h3>
  <h3>How to Climb a Wall</h3>

  <h2>Learn the Art of Battle</h2>
  <h3>How to Strengthen your Body</h3>
  <h3>How to Fight like a Ninja</h3>

  <h2>Learn the Art of Living with Honor</h2>
  <h3>How to Breathe Properly</h3>
  <h3>How to Simplify your Life</h3>
</main>
```
