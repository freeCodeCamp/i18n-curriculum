---
id: bd7154d8c242eddfaeb5bd13
title: 라이프 게임 만들기
challengeType: 3
forumTopicId: 302362
dashedName: build-the-game-of-life
---

# --description--

**목표:** 다음과 기능적으로 유사한 앱을 만드세요: <a href="https://codepen.io/freeCodeCamp/full/BpwMZv/" target="_blank" rel="noopener noreferrer nofollow">https://codepen.io/freeCodeCamp/full/BpwMZv/</a>.

라이프 게임은 영국 수학자 John Horton Conway가 고안한 셀룰러 오토마타입니다. 이는 <em>제로 플레이어 게임</em>으로, 초기 상태에 의해 진화가 결정되며 추가 입력이 필요 없습니다. 사용자는 초기 구성을 만들고 그 진화 과정을 관찰하며 라이프 게임과 상호작용합니다.

라이프 게임의 우주는 무한한 2차원 직교 격자이며, 각 칸은 두 가지 상태 중 하나인 살아있음 또는 죽음 상태입니다. 각 칸은 수평, 수직, 대각선으로 인접한 8개의 이웃 칸과 상호작용합니다.

각 시간 단계마다 다음과 같은 변화가 발생합니다:

- 살아있는 칸이 이웃 살아있는 칸이 2개 미만이면, 인구 부족으로 죽습니다.
- 살아있는 칸이 이웃 살아있는 칸이 2개 또는 3개이면, 다음 세대에도 살아있습니다.
- 살아있는 칸이 이웃 살아있는 칸이 3개 초과이면, 인구 과잉으로 죽습니다.
- 죽은 칸이 이웃 살아있는 칸이 정확히 3개이면, 번식으로 살아있는 칸이 됩니다.

아래 사용자 스토리를 충족하고 모든 테스트를 통과하세요. 필요한 라이브러리나 API를 자유롭게 사용하세요. 자신만의 스타일을 반영해도 좋습니다.

**사용자 스토리:** 게임에 처음 접속하면, 무작위로 보드를 생성하고 게임이 시작됩니다.

**사용자 스토리:** 보드를 시작하고 멈출 수 있습니다.

**사용자 스토리:** 보드를 설정할 수 있습니다.

**사용자 스토리:** 보드를 지울 수 있습니다.

**사용자 스토리:** 시작 버튼을 누르면 게임이 진행됩니다.

**사용자 스토리:** 보드가 변경될 때마다 몇 세대가 지났는지 볼 수 있습니다.

완료하면 프로젝트 링크를 포함하고 "도전 과제 완료" 버튼을 클릭하세요.

프로젝트에 대한 피드백은 <a href="https://forum.freecodecamp.org/c/project-feedback/409" target="_blank" rel="noopener noreferrer nofollow">freeCodeCamp 포럼</a>에서 받을 수 있습니다.

# --solutions--

```js
// solution required
```
