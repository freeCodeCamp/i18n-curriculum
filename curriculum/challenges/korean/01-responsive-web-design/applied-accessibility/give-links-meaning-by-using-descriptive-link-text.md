---
id: 587d778f367417b2b2512aae
title: 설명이 포함된 링크(Link) 텍스트로 링크에 의미주기
challengeType: 0
videoUrl: 'https://scrimba.com/c/c437DcV'
forumTopicId: 301013
dashedName: give-links-meaning-by-using-descriptive-link-text
---

# --description--

Screen reader users have various options for what type of content their device reads. These options include skipping to (or over) landmark elements, jumping to the main content, or getting a page summary from the headings. Another option is to only hear the links available on a page.

스크린 리더는 링크 텍스트 혹은 (`a`) 태그 사이에 무엇이 있는지 읽어서 이 작업을 합니다. "여기를 클릭하세요" 혹은 "더보기" 같은 링크들은 도움이 되지 않습니다. 대신에 스크린 리더 사용자들에게 더 많은 의미를 제공하려면 `a` 태그에 설명이 간결하고 명확한 텍스트를 사용하면 됩니다.

# --instructions--

Camper Cat이 사용하고 있는 링크 텍스트는 문맥의 이해없이는 그리 설명적이지 않습니다. `Click here` 대신에 `information about batteries`가 감싸지도록 (`a`) 태그를 옮겨주세요.

# --hints--

`information about batteries`를 감싸도록 `Click here`로부터 `a` 태그를 옮겨야 합니다.

```js
assert.match(document.querySelector('a')?.textContent, /^(information about batteries)$/g);
```

`a` 요소는 빈 문자열인 `""` 값을 가진 `href` 속성을 지니고 있어야 합니다.

```js
assert.isEmpty(document.querySelector('a')?.getAttribute('href'));
```

`a` 요소는 닫는 태그가 있어야 합니다.

```js
assert.isTrue(code.match(/<\/a>/g)?.length === code.match(/<a href=(''|"")>/g)?.length);
```

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>Defeating your Foe: the Red Dot is Ours!</h2>
    <p>Felines the world over have been waging war on the most persistent of foes. This red nemesis combines both cunning stealth and lightning speed. But chin up, fellow fighters, our time for victory may soon be near. <a href="">Click here</a> for information about batteries</p>
  </article>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>Defeating your Foe: the Red Dot is Ours!</h2>
    <p>Felines the world over have been waging war on the most persistent of foes. This red nemesis combines both cunning stealth and lightning speed. But chin up, fellow fighters, our time for victory may soon be near. Click here for <a href="">information about batteries</a></p>
  </article>
</body>
```
