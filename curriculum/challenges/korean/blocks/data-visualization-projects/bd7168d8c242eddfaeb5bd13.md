---
id: bd7168d8c242eddfaeb5bd13
title: 막대 그래프로 데이터 시각화하기
challengeType: 3
forumTopicId: 301464
dashedName: visualize-data-with-a-bar-chart
---

# --description--

**목표:** 다음과 기능적으로 유사한 앱을 만드세요: <a href="https://bar-chart.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://bar-chart.freecodecamp.rocks</a>.

아래 사용자 스토리를 모두 충족하고 모든 테스트를 통과하세요. 필요한 라이브러리나 API를 자유롭게 사용하세요. 자신만의 스타일을 더해도 좋습니다.

HTML, JavaScript, CSS, 그리고 D3 svg 기반 시각화 라이브러리를 사용할 수 있습니다. 테스트는 D3 axis 속성을 사용해 축을 생성할 것을 요구하는데, 이 속성은 축을 따라 자동으로 눈금을 생성합니다. 이 눈금은 그래프 요소의 정렬을 결정하는 데 사용되므로 D3 테스트를 통과하려면 반드시 필요합니다. 축 생성에 관한 정보는 <https://d3js.org/d3-axis>에서 확인하세요. 필요한 DOM 요소는 각 테스트 시점에 쿼리됩니다. Vue 같은 프론트엔드 프레임워크를 사용하면 동적 콘텐츠에 대해 테스트 결과가 부정확할 수 있습니다. 앞으로 지원할 계획이지만 현재 D3 프로젝트에서는 이러한 프레임워크를 지원하지 않습니다.

**사용자 스토리 #1:** 내 차트에는 `id="title"`가 포함된 제목이 있어야 합니다.

**사용자 스토리 #2:** 내 차트에는 `g`가 포함된 `id="x-axis"` 요소 x축이 있어야 합니다.

**사용자 스토리 #3:** 내 차트에는 `g`가 포함된 `id="y-axis"` 요소 y축이 있어야 합니다.

**사용자 스토리 #4:** 두 축 모두 여러 개의 눈금 레이블을 포함해야 하며, 각각에 대응하는 `class="tick"`가 있어야 합니다.

**사용자 스토리 #5:** 내 차트에는 각 데이터 포인트마다 `rect` 요소가 있어야 하며, 데이터 값을 표시하는 `class="bar"`가 있어야 합니다.

**사용자 스토리 #6:** 각 `.bar`는 `data-date`와 `data-gdp` 속성을 가지며, `date`과 `GDP` 값을 포함해야 합니다.

**사용자 스토리 #7:** `.bar` 요소들의 `data-date` 속성은 제공된 데이터 순서와 일치해야 합니다.

**사용자 스토리 #8:** `.bar` 요소들의 `data-gdp` 속성은 제공된 데이터 순서와 일치해야 합니다.

**사용자 스토리 #9:** 각 `.bar` 요소의 높이는 데이터의 해당 `GDP`를 정확히 나타내야 합니다.

**사용자 스토리 #10:** `data-date` 속성과 그에 대응하는 `.bar` 요소는 x축의 해당 값과 정렬되어야 합니다.

**사용자 스토리 #11:** `data-gdp` 속성과 그에 대응하는 `.bar` 요소는 y축의 해당 값과 정렬되어야 합니다.

**사용자 스토리 #12:** 마우스를 영역 위에 올리면 해당 영역에 대한 추가 정보를 표시하는 `id="tooltip"`가 포함된 툴팁이 보여야 합니다.

**사용자 스토리 #13:** 내 툴팁은 활성 영역의 `data-date`에 대응하는 `data-date` 속성을 가져야 합니다.

이 프로젝트를 완료하는 데 필요한 데이터셋은 다음과 같습니다: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/GDP-data.json`

<a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">이 CodePen 템플릿</a>을 사용해 프로젝트를 만들고 `Save`를 클릭해 자신만의 펜을 만드세요. 또는 이 CDN 링크를 사용해 원하는 환경에서 테스트를 실행할 수 있습니다: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`.

완료하면 모든 테스트를 통과하는 작동하는 프로젝트의 URL을 제출하세요.

# --solutions--

```js
// solution required
```
