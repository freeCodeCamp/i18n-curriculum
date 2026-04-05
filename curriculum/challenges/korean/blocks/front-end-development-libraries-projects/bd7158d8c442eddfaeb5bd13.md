---
id: bd7158d8c442eddfaeb5bd13
title: 랜덤 명언 생성기 만들기
challengeType: 3
forumTopicId: 301374
dashedName: build-a-random-quote-machine
---

# --description--
**참고:** **React 18은 이 프로젝트의 테스트와 호환되지 않는 문제가 있습니다 ([issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922) 참조하세요)**

**목표:** 다음과 기능적으로 유사한 앱을 만드세요: <a href="https://random-quote-machine.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://random-quote-machine.freecodecamp.rocks/</a>.

아래 사용자 스토리를 충족하고 모든 테스트를 통과하세요. 필요한 라이브러리나 API를 자유롭게 사용하세요. 자신만의 스타일을 입히세요.

HTML, JavaScript, CSS, 부트스트랩, SASS, React, Redux, jQuery 중 어떤 조합이든 사용해 이 프로젝트를 완성할 수 있습니다. 이 섹션은 프론트엔드 프레임워크 학습에 관한 것이므로 React 같은 프론트엔드 프레임워크를 사용하는 것이 좋습니다. 위에 나열되지 않은 추가 기술은 권장하지 않으며 사용 시 책임은 사용자에게 있습니다. Angular와 Vue 같은 다른 프론트엔드 프레임워크도 지원할 예정이지만 현재는 지원하지 않습니다. 이 프로젝트에 권장된 기술 스택을 사용한 문제 보고는 모두 수락하고 수정하려고 노력할 것입니다. 즐거운 코딩 되세요!

**사용자 스토리 #1:** `id="quote-box"`에 해당하는 래퍼 요소를 볼 수 있습니다.

**사용자 스토리 #2:** `#quote-box` 내에 `id="text"`에 해당하는 요소를 볼 수 있습니다.

**사용자 스토리 #3:** `#quote-box` 내에 `id="author"`에 해당하는 요소를 볼 수 있습니다.

**사용자 스토리 #4:** `#quote-box` 내에 `id="new-quote"`에 해당하는 클릭 가능한 요소를 볼 수 있습니다.

**사용자 스토리 #5:** `#quote-box` 내에 `a`에 해당하는 클릭 가능한 `id="tweet-quote"` 요소를 볼 수 있습니다.

**사용자 스토리 #6:** 처음 로드할 때, 명언 생성기는 `id="text"`에 해당하는 요소에 무작위 명언을 표시합니다.

**사용자 스토리 #7:** 처음 로드할 때, 명언 생성기는 `id="author"`에 해당하는 요소에 무작위 명언의 저자를 표시합니다.

**사용자 스토리 #8:** `#new-quote` 버튼을 클릭하면 명언 생성기가 새 명언을 가져와 `#text` 요소에 표시해야 합니다.

**사용자 스토리 #9:** `#new-quote` 버튼을 클릭하면 명언 생성기가 새 명언의 저자를 가져와 `#author` 요소에 표시해야 합니다.

**사용자 스토리 #10:** `#tweet-quote` `a` 요소를 클릭하여 현재 명언을 트윗할 수 있습니다. 이 `a` 요소는 현재 명언을 트윗하기 위해 `"twitter.com/intent/tweet"` 속성에 `href` 경로를 포함해야 합니다.

**사용자 스토리 #11:** `#quote-box` 래퍼 요소는 수평으로 가운데 정렬되어야 합니다. 브라우저 줌 레벨을 100%로 하고 페이지를 최대화한 상태에서 테스트하세요.

<a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">이 CodePen 템플릿</a>을 사용해 프로젝트를 만들고 `Save`를 클릭해 자신만의 펜을 만드세요. 다른 환경을 선호한다면 `<script>` 파일의 본문에 `index.html` 태그를 넣으세요: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

완료하면 모든 테스트를 통과한 작동 중인 프로젝트 URL을 제출하세요.

**참고:** Twitter는 iframe 내에서 링크 로드를 허용하지 않습니다. 트윗이 로드되지 않으면 `target="_blank"` 요소에 `target="_top"` 또는 `#tweet-quote` 속성을 사용해 보세요. `target="_top"`는 현재 탭을 대체하므로 작업이 저장되었는지 확인하세요.

# --solutions--

```js
// solution required
```
