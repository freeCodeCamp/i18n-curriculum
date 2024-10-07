---
id: 587d774c367417b2b2512a9c
title: 시각 장애 접근성을 위한 대체 텍스트 추가하기
challengeType: 0
videoUrl: 'https://scrimba.com/c/cPp7VfD'
forumTopicId: 16628
dashedName: add-a-text-alternative-to-images-for-visually-impaired-accessibility
---

# --description--

You've likely seen an `alt` attribute on an `img` tag in other challenges. `alt` text describes the image's content and provides a text-alternative for it. An `alt` attribute helps in cases where the image fails to load or can't be seen by a user. Search engines also use it to understand what an image contains to include it in search results. Here's an example:

```html
<img src="importantLogo.jpeg" alt="Company logo">
```

시각 장애가 있는 사람들은 웹 콘텐츠를 음성으로 변환해주는 스크린 리더에 의존합니다. 만일콘텐츠가 시각적으로만 제공된다면, 이들은 아무런 정보도 얻지 못할 것입니다. 이미지의 경우, 스크린 리더가 `alt` 속성에 접근해 콘텐츠를 읽을 수 있으므로 중요한 정보가 전달됩니다.

잘 쓰인 `alt` 대체 텍스트는 이미지를 명료하게 표현합니다. 이미지에 항상 `alt` 속성을 추가하세요. HTML5 명세에 따르면, 이는 의무사항으로 간주됩니다.

# --instructions--

캠퍼 캣은 코딩과 무술을 잘 합니다. 캠퍼 캣은 개인 웹사이트에서 자신의 지식을 공유하고 싶어합니다. 캠퍼 캣은 자신의 프로필 사진으로 방문자들을 감탄시키고 싶습니다. `alt`와 `img`태그를 더해서 캠퍼 캣이 무술을 할 수 있다는 설명을 더해주세요. `src` 이미지에는 실제 파일의 링크가 걸려있지 않으므로, 화면의 `alt` 텍스트를 보세요.

# --hints--

`img` 태그에는 `alt` 속성이 있어야 하며, 빈 텍스트가 들어가면 안 됩니다.

```js
assert.isNotEmpty(document.querySelector('img')?.getAttribute('alt'));
```

# --seed--

## --seed-contents--

```html
<img src="doingKarateWow.jpeg">
```

# --solutions--

```html
<img src="doingKarateWow.jpeg" alt="Someone doing karate">
```
