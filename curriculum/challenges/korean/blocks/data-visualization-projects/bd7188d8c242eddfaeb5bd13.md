---
id: bd7188d8c242eddfaeb5bd13
title: 히트맵으로 데이터 시각화
challengeType: 3
forumTopicId: 301466
dashedName: visualize-data-with-a-heat-map
---

# --description--

**목표:** 다음과 기능적으로 유사한 앱을 만드세요: <a href="https://heat-map.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://heat-map.freecodecamp.rocks</a>.

아래 사용자 스토리를 충족하고 모든 테스트를 통과하세요. 필요한 라이브러리나 API를 자유롭게 사용하세요. 자신만의 스타일을 입히세요.

HTML, JavaScript, CSS, 그리고 D3 svg 기반 시각화 라이브러리를 사용할 수 있습니다. 필요한 DOM 요소는 각 테스트 시점에 쿼리됩니다. 프론트엔드 프레임워크(예: Vue)를 사용하면 동적 콘텐츠에 대해 테스트 결과가 정확하지 않을 수 있습니다. 앞으로 지원할 예정이지만 현재 D3 프로젝트에는 이들 프레임워크가 지원되지 않습니다.

**사용자 스토리 #1:** 내 히트맵에는 `id="title"`에 해당하는 제목이 있어야 합니다.

**사용자 스토리 #2:** 내 히트맵에는 `id="description"`에 해당하는 설명이 있어야 합니다.

**사용자 스토리 #3:** 내 히트맵에는 `id="x-axis"`에 해당하는 x축이 있어야 합니다.

**사용자 스토리 #4:** 내 히트맵에는 `id="y-axis"`에 해당하는 y축이 있어야 합니다.

**사용자 스토리 #5:** 내 히트맵에는 데이터를 나타내는 `rect`를 가진 `class="cell"` 요소가 있어야 합니다.

**사용자 스토리 #6:** 셀에는 최소 4가지 다른 채우기 색상이 사용되어야 합니다.

**사용자 스토리 #7:** 각 셀은 해당하는 `data-month`, `data-year`, `data-temp` 값을 포함하는 `month`, `year`, `temperature` 속성을 가져야 합니다.

**사용자 스토리 #8:** 각 셀의 `data-month`, `data-year`은 데이터 범위 내에 있어야 합니다.

**사용자 스토리 #9:** 내 히트맵의 셀은 y축의 해당 월과 정렬되어야 합니다.

**사용자 스토리 #10:** 내 히트맵의 셀은 x축의 해당 연도와 정렬되어야 합니다.

**사용자 스토리 #11:** 내 히트맵의 y축에는 전체 월 이름을 가진 여러 틱 레이블이 있어야 합니다.

**사용자 스토리 #12:** 내 히트맵의 x축에는 1754년부터 2015년 사이의 연도를 가진 여러 틱 레이블이 있어야 합니다.

**사용자 스토리 #13:** 내 히트맵에는 `id="legend"`에 해당하는 범례가 있어야 합니다.

**사용자 스토리 #14:** 내 범례에는 `rect` 요소가 포함되어야 합니다.

**사용자 스토리 #15:** 범례의 `rect` 요소는 최소 4가지 다른 채우기 색상을 사용해야 합니다.

**사용자 스토리 #16:** 마우스를 영역 위에 올리면 해당 영역에 대한 추가 정보를 표시하는 `id="tooltip"`가 있는 툴팁이 보여야 합니다.

**사용자 스토리 #17:** 내 툴팁에는 활성 영역의 `data-year`에 해당하는 `data-year` 속성이 있어야 합니다.

이 프로젝트를 완료하는 데 필요한 데이터셋은 다음과 같습니다: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/global-temperature.json`

<a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">이 CodePen 템플릿</a>을 사용해 프로젝트를 만들고 `Save`를 클릭해 자신만의 펜을 만드세요. 또는 이 CDN 링크를 사용해 원하는 환경에서 테스트를 실행할 수 있습니다: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

완료하면 모든 테스트를 통과한 작동하는 프로젝트의 URL을 제출하세요.

# --solutions--

```js
// solution required
```
