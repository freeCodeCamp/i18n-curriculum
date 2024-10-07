---
id: 587d7789367417b2b2512aa4
title: 使用 audio 元素提高音頻內容的可訪問性
challengeType: 0
videoUrl: 'https://scrimba.com/c/cVJVkcZ'
forumTopicId: 301014
dashedName: improve-accessibility-of-audio-content-with-the-audio-element
---

# --description--

HTML5's `audio` element gives semantic meaning when it wraps sound or audio stream content in your markup. Audio content also needs a text alternative to be accessible to people who are deaf or hard of hearing. This can be done with nearby text on the page or a link to a transcript.

`audio` 標籤支持 `controls` 屬性， 用於顯示瀏覽器默認播放、停止和其他控制，以及支持鍵盤功能。 這是一個布爾值屬性，意味着它不需要一個值，它在標籤上存在即開啓設置。

請看下面的舉例：

```html
<audio id="meowClip" controls>
  <source src="audio/meow.mp3" type="audio/mpeg">
  <source src="audio/meow.ogg" type="audio/ogg">
</audio>
```

**注意：** 多媒體內容通常同時包含音頻與視頻部分， 它需要同步的字幕，使視覺或聽覺障礙用戶可以獲取它的內容。 一般情況下，網頁開發者不負責創建字幕或逐字稿，但是需要將它們添加到多媒體中。

# --instructions--

是時候讓 Camper Cat 休息一下，並與朋友 Zersiax (@zersiax) 會面了。 Zersiax 是一位屏幕閱讀器用戶，同時也是無障礙設計的高手。 爲了體驗屏幕閱讀器的朗讀效果，請在 `p` 元素之後添加一個 `audio` 元素， 具有 `controls` 屬性。 然後將 `source` 元素放入 `audio` 標記內，並將 `src` 屬性設置爲 `https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3` 和 `type` 屬性設置爲 `"audio/mpeg"`。

**注意：** 音頻片段的播放速度可能會快到令我們難以理解，但是對於屏幕閱讀器用戶來說這是正常速度。

# --hints--

應該包含一個 `audio` 標籤。

```js
assert.lengthOf(document.querySelectorAll('audio'),1);
```

確保 `audio` 元素有結束標籤。

```js
assert.match(code,/<audio.*>[\s\S]*<\/audio>/g);
assert.lengthOf(code.match(/<\/audio>/g),1);
```

`audio` 標籤應存在 `controls` 屬性。

```js
assert.exists(document.querySelector('audio')?.getAttribute('controls'));
```

代碼中應存在 `source` 標籤。

```js
assert.lengthOf(document.querySelectorAll('source'), 1);
```

`source` 標籤應位於 `audio` 標籤中。

```js
const audio = document.querySelector('audio');
const children = audio.querySelectorAll(`:scope ${'source'}`);
assert.lengthOf(children,1);
```

`source` 標籤中 `src` 的屬性值應該與教程中的鏈接一致。

```js
assert.equal(
  document.querySelector('source')?.getAttribute('src'),
  'https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3'
);
```

`source` 標籤中應具有 `type` 屬性，其屬性值應爲 audio/mpeg。

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
