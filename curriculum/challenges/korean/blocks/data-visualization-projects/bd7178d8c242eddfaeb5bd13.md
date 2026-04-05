---
id: bd7178d8c242eddfaeb5bd13
title: 산점도 그래프로 데이터 시각화하기
challengeType: 3
forumTopicId: 301467
dashedName: visualize-data-with-a-scatterplot-graph
---

# --description--

**목표:** 다음과 기능적으로 유사한 앱을 만드세요: <a href="https://scatterplot-graph.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://scatterplot-graph.freecodecamp.rocks</a>.

아래 사용자 스토리를 충족하고 모든 테스트를 통과하세요. 필요한 라이브러리나 API를 자유롭게 사용하세요. 자신만의 스타일을 적용해도 좋습니다.

HTML, JavaScript, CSS, 그리고 D3 svg 기반 시각화 라이브러리를 사용할 수 있습니다. 테스트는 D3 axis 속성을 사용해 축을 생성하도록 요구하는데, 이 속성은 축을 따라 눈금을 자동으로 생성합니다. 이 눈금은 그래프 요소의 정렬을 결정하는 데 사용되므로 D3 테스트를 통과하려면 반드시 필요합니다. 축 생성에 관한 정보는 <https://d3js.org/d3-axis>에서 확인하세요. 필요한 DOM 요소는 각 테스트 시점에 쿼리됩니다. 만약 Vue 같은 프론트엔드 프레임워크를 사용하면 동적 콘텐츠 때문에 테스트 결과가 정확하지 않을 수 있습니다. 앞으로 지원할 계획이지만 현재 D3 프로젝트에는 이러한 프레임워크가 지원되지 않습니다.

**사용자 스토리 #1:** `id="title"`에 해당하는 제목 요소를 볼 수 있습니다.

**사용자 스토리 #2:** `id="x-axis"`에 해당하는 x축을 볼 수 있습니다.

**사용자 스토리 #3:** `id="y-axis"`에 해당하는 y축을 볼 수 있습니다.

**사용자 스토리 #4:** 데이터가 나타나는 `dot` 클래스를 가진 점들을 볼 수 있습니다.

**사용자 스토리 #5:** 각 점은 해당 `data-xvalue`와 `data-yvalue` 값을 포함하는 `x`와 `y` 속성을 가져야 합니다.

**사용자 스토리 #6:** 각 점의 `data-xvalue`와 `data-yvalue`는 실제 데이터 범위 내에 있어야 하며 올바른 데이터 형식이어야 합니다. `data-xvalue`의 경우, 정수(연도 전체) 또는 `Date` 객체가 테스트 평가에 허용됩니다. `data-yvalue` (분)에는 `Date` 객체를 사용하세요.

**사용자 스토리 #7:** `data-xvalue`와 해당 점은 x축의 해당 점/값과 정렬되어야 합니다.

**사용자 스토리 #8:** `data-yvalue`와 해당 점은 y축의 해당 점/값과 정렬되어야 합니다.

**사용자 스토리 #9:** `%M:%S` 시간 형식의 눈금 레이블이 y축에 여러 개 보여야 합니다.

**사용자 스토리 #10:** 연도를 표시하는 눈금 레이블이 x축에 여러 개 보여야 합니다.

**사용자 스토리 #11:** x축 레이블 범위가 실제 x축 데이터 범위 내에 있어야 합니다.

**사용자 스토리 #12:** y축 레이블 범위가 실제 y축 데이터 범위 내에 있어야 합니다.

**사용자 스토리 #13:** `id="legend"`가 포함된 설명 텍스트가 있는 범례를 볼 수 있습니다.

**사용자 스토리 #14:** 영역 위에 마우스를 올리면 해당 영역에 대한 추가 정보를 표시하는 `id="tooltip"`가 있는 툴팁을 볼 수 있습니다.

**사용자 스토리 #15:** 툴팁은 활성 영역의 `data-year`에 해당하는 `data-xvalue` 속성을 가져야 합니다.

이 프로젝트를 완료하는 데 필요한 데이터셋은 다음과 같습니다: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/cyclist-data.json`

<a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">이 CodePen 템플릿</a>을 사용해 프로젝트를 만들고 `Save`를 클릭해 자신만의 펜을 만드세요. 또는 이 CDN 링크를 사용해 원하는 환경에서 테스트를 실행할 수 있습니다: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

완료하면 모든 테스트를 통과한 작동하는 프로젝트 URL을 제출하세요.

# --solutions--

```js
// solution required
```
