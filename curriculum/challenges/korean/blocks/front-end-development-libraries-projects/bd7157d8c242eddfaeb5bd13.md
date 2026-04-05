---
id: bd7157d8c242eddfaeb5bd13
title: 마크다운 미리보기기 만들기
challengeType: 3
forumTopicId: 301372
dashedName: build-a-markdown-previewer
---

# --description--
**참고:** **React 18은 이 프로젝트의 테스트와 알려진 호환성 문제가 있습니다 ([issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922) 참조)**

**목표:** 다음과 기능적으로 유사한 앱을 만드세요: <a href="https://markdown-previewer.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://markdown-previewer.freecodecamp.rocks/</a>.

아래 사용자 스토리를 충족하고 모든 테스트를 통과하세요. 필요한 라이브러리나 API는 자유롭게 사용하세요. 자신만의 스타일을 입히세요.

HTML, JavaScript, CSS, 부트스트랩, SASS, React, Redux, jQuery를 혼합해 이 프로젝트를 완성할 수 있습니다. 이 섹션은 프론트엔드 프레임워크 학습에 관한 것이므로 프론트엔드 프레임워크(예: React)를 사용하는 것이 좋습니다. 위에 나열되지 않은 추가 기술은 권장하지 않으며 사용 시 책임은 본인에게 있습니다. Angular, Vue 같은 다른 프론트엔드 프레임워크도 지원할 예정이지만 현재는 지원하지 않습니다. 이 프로젝트에 권장 기술 스택을 사용한 문제 보고는 모두 수락하고 수정하려 노력할 것입니다. 즐거운 코딩 되세요!

**사용자 스토리 #1:** `textarea` 요소와 대응하는 `id="editor"`를 볼 수 있습니다.

**사용자 스토리 #2:** 대응하는 `id="preview"`가 있는 요소를 볼 수 있습니다.

**사용자 스토리 #3:** `#editor` 요소에 텍스트를 입력하면 `#preview` 요소가 입력하는 대로 텍스트 영역 내용을 표시하도록 업데이트됩니다.

**사용자 스토리 #4:** `#editor` 요소에 GitHub 스타일 마크다운을 입력하면 입력하는 대로 `#preview` 요소에 HTML로 렌더링됩니다 (힌트: 마크다운을 직접 파싱할 필요 없이 Marked 라이브러리를 가져와 사용할 수 있습니다: <https://cdnjs.com/libraries/marked>).

**사용자 스토리 #5:** 마크다운 미리보기기가 처음 로드될 때, `#editor` 필드의 기본 텍스트는 다음 각 요소를 최소 하나씩 나타내는 유효한 마크다운이어야 합니다: 제목 요소(H1 크기), 부제목 요소(H2 크기), 링크, 인라인 코드, 코드 블록, 목록 항목, 인용문, 이미지, 굵은 텍스트.

**사용자 스토리 #6:** 마크다운 미리보기기가 처음 로드될 때, `#editor` 필드의 기본 마크다운은 `#preview` 요소에 HTML로 렌더링되어야 합니다.

**선택 보너스 (이 테스트를 통과할 필요는 없습니다):** 마크다운 미리보기기가 캐리지 리턴을 해석하여 `br` (줄 바꿈) 요소로 렌더링합니다.

<a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">이 CodePen 템플릿</a>을 사용해 프로젝트를 만들고 `Save`를 클릭해 자신만의 펜을 만드세요. 다른 환경을 선호한다면 `<script>` 파일 본문에 `index.html` 태그를 넣으세요: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

완료하면 모든 테스트를 통과하는 작동하는 프로젝트 URL을 제출하세요.

# --solutions--

```js
// solution required
```
