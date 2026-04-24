---
id: 5dfa371beacea3f48c6300af
title: ステップ 21
challengeType: 0
dashedName: step-21
---

# --description--

ページにより低いランクの見出し要素を追加すると、新しいサブセクションを開始することが暗示されます。

2番目の`h2`要素の最後の`section`要素の後に、次のテキストを含む`h3`要素を追加してください：

`Things cats love:`

# --hints--

2番目の`section`要素が見つからないか、開始タグと終了タグの両方がありません。

```js
assert(
  document.querySelectorAll('main > section')[1] &&
    code.match(/\<\/section>/g).length == 2
);
```

2番目の`h3`要素の終了タグのすぐ上に`section`要素があるはずです。

```js
assert(
  document.querySelectorAll('main > section')[1].lastElementChild.nodeName ===
    'H3'
);
```

`h3`要素には終了タグが必要です。終了タグは`/`文字のすぐ後に`<`があります。

```js
assert.lengthOf(code.match(/<\/h3>/g), 1);
```

2番目の`h3`要素の終了タグのすぐ上にある`section`要素には、テキスト`Things cats love:`が含まれている必要があります。テキストの最後のコロンを忘れないでください。

```js
assert(
  document
    .querySelectorAll('main > section')[1]
    .lastElementChild.innerText.toLowerCase()
    .replace(/\s+/g, ' ') === 'things cats love:'
);
```

最後の`h2`要素にネストされた最後の`Cat Lists`要素の上に、テキスト`h3`を持つ`section`要素があるはずです。`h2`要素を誤って削除した可能性があります。

```js
const secondSectionLastElemNode = document.querySelectorAll('main > section')[1]
  .lastElementChild;
assert(
  secondSectionLastElemNode.nodeName === 'H3' &&
    secondSectionLastElemNode.previousElementSibling.innerText
      .toLowerCase()
      .replace(/\s+/g, ' ') === 'cat lists'
);
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <section>
        <h2>Cat Photos</h2>
        <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
        <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
        <a href="https://freecatphotoapp.com"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
      </section>
--fcc-editable-region--
      <section>
        <h2>Cat Lists</h2>
        
      </section>
--fcc-editable-region--
    </main>
  </body>
</html>
```
