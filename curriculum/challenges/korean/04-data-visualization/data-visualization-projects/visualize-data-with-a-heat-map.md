---
id: bd7188d8c242eddfaeb5bd13
title: Visualize Data with a Heat Map
challengeType: 3
forumTopicId: 301466
dashedName: visualize-data-with-a-heat-map
---

# --description--

**Objective:** Build an app that is functionally similar to this: <a href="https://heat-map.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://heat-map.freecodecamp.rocks</a>.

Fulfill the below user stories and get all of the tests to pass. Use whichever libraries or APIs you need. Give it your own personal style.

You can use HTML, JavaScript, CSS, and the D3 svg-based visualization library. Required DOM elements are queried on the moment of each test. If you use a frontend framework (like Vue for example), the test results may be inaccurate for dynamic content. We hope to accommodate them eventually, but these frameworks are not currently supported for D3 projects.

**User Story #1:** My heat map should have a title with a corresponding `id="title"`.

**User Story #2:** My heat map should have a description with a corresponding `id="description"`.

**User Story #3:** My heat map should have an x-axis with a corresponding `id="x-axis"`.

**User Story #4:** My heat map should have a y-axis with a corresponding `id="y-axis"`.

**User Story #5:** My heat map should have `rect` elements with a `class="cell"` that represent the data.

**User Story #6:** There should be at least 4 different fill colors used for the cells.

**User Story #7:** Each cell will have the properties `data-month`, `data-year`, `data-temp` containing their corresponding `month`, `year`, and `temperature` values.

**User Story #8:** The `data-month`, `data-year` of each cell should be within the range of the data.

**User Story #9:** My heat map should have cells that align with the corresponding month on the y-axis.

**User Story #10:** My heat map should have cells that align with the corresponding year on the x-axis.

**User Story #11:** My heat map should have multiple tick labels on the y-axis with the full month name.

**User Story #12:** My heat map should have multiple tick labels on the x-axis with the years between 1754 and 2015.

**User Story #13:** My heat map should have a legend with a corresponding `id="legend"`.

**User Story #14:** My legend should contain `rect` elements.

**User Story #15:** The `rect` elements in the legend should use at least 4 different fill colors.

**User Story #16:** I can mouse over an area and see a tooltip with a corresponding `id="tooltip"` which displays more information about the area.

**User Story #17:** My tooltip should have a `data-year` property that corresponds to the `data-year` of the active area.

Here is the dataset you will need to complete this project: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/global-temperature.json`

프로젝트를 만들려면 <a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">이 CodePen 템플릿을 사용</a>하여 `Save`를 클릭하여 자신의 펜을 만들 수 있습니다. 또는 원하는 환경에서 테스트를 실행하기 위해 이 CDN 링크를 사용할 수 있습니다.`https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

완료되면 모든 테스트가 통과되는 작동 프로젝트의 URL을 제출하십시오.

# --solutions--

```js
// solution required
```
