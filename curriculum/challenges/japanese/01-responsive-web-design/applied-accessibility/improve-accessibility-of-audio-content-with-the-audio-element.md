---
id: 587d7789367417b2b2512aa4
title: audio 要素を使用してオーディオコンテンツのアクセシビリティを向上させる
challengeType: 0
videoUrl: 'https://scrimba.com/c/cVJVkcZ'
forumTopicId: 301014
dashedName: improve-accessibility-of-audio-content-with-the-audio-element
---

# --description--

HTML5's `audio` element gives semantic meaning when it wraps sound or audio stream content in your markup. Audio content also needs a text alternative to be accessible to people who are deaf or hard of hearing. This can be done with nearby text on the page or a link to a transcript.

`audio` タグは `controls` 属性をサポートします。 controls 属性により、ブラウザのデフォルトの再生、一時停止、その他のコントロールが表示され、キーボードによる操作ができるようになります。 controls は真偽値属性なので、値は必要ありません。タグ上にこれが存在することで設定がオンになります。

こちらがその例です。

```html
<audio id="meowClip" controls>
  <source src="audio/meow.mp3" type="audio/mpeg">
  <source src="audio/meow.ogg" type="audio/ogg">
</audio>
```

**注:** 一般的に、マルチメディアコンテンツは視覚的要素と聴覚的要素の両方を持ちます。 視覚障害や聴覚障害を持つユーザーがそれにアクセスできるように、コンテンツに同期したキャプション (字幕) とトランスクリプト (文字起こし) が必要です。 一般に、Web 開発者はキャプションやトランスクリプトを作成する責任を負いませんが、それらを含めることを知っておく必要があります。

# --instructions--

Camper Cat から少し離れる時間を取って、アクセシビリティの達人でありスクリーンリーダーのユーザーでもあるキャンパー仲間、Zersiax (@zersiax) をご紹介します。 彼のスクリーンリーダーが動作する様子の音声を聴くには、`p` 要素の後ろに `audio` 要素を追加します。 `controls` 属性を含めましょう。 Then place a `source` element inside the `audio` tags with the `src` attribute set to `https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3` and `type` attribute set to `"audio/mpeg"`.

**注:** 音声が高速に聞こえて理解しにくいかもしれませんが、これはスクリーンリーダーのユーザーにとっては通常の速度です。

# --hints--

コードには `audio` タグが 1 つ必要です。

```js
assert.lengthOf(document.querySelectorAll('audio'),1);
```

`audio` 要素には終了タグが必要です。

```js
assert.match(code,/<audio.*>[\s\S]*<\/audio>/g);
assert.lengthOf(code.match(/<\/audio>/g),1);
```

`audio` タグは `controls` 属性を持つ必要があります。

```js
assert.exists(document.querySelector('audio')?.getAttribute('controls'));
```

コードには `source` タグが 1 つ必要です。

```js
assert.lengthOf(document.querySelectorAll('source'), 1);
```

`source` タグは `audio` タグの内側にあるようにしてください。

```js
const audio = document.querySelector('audio');
const children = audio.querySelectorAll(`:scope ${'source'}`);
assert.lengthOf(children,1);
```

`source` タグの `src` 属性の値は、指示内のリンクと正確に一致させる必要があります。

```js
assert.equal(
  document.querySelector('source')?.getAttribute('src'),
  'https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3'
);
```

コードには `source` タグの `type` 属性として audio/mpeg という値を含める必要があります。

```js
assert.equal(document.querySelector('source')?.getAttribute('type'), 'audio/mpeg');
```

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Real Coding Ninjas</h1>
  </header>
  <main>
    <p>A sound clip of Zersiax's screen reader in action.</p>



  </main>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Real Coding Ninjas</h1>
  </header>
  <main>
    <p>A sound clip of Zersiax's screen reader in action.</p>
    <audio controls>
      <source src="https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3" type="audio/mpeg"/>
    </audio>
  </main>
</body>
```
