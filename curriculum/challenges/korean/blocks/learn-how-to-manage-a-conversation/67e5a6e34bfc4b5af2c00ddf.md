---
id: 67e5a6e34bfc4b5af2c00ddf
title: 작업 51
challengeType: 22
dashedName: task-51
lang: en-US
---

<!-- (Audio) Jessica: Well, we've discovered a critical bug that might affect the user interface. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Well, we've discovered a BLANK bug that might BLANK the user interface.`

## --blanks--

`critical`

### --feedback--

이는 매우 심각하거나 중요한 것을 의미합니다. 보통 즉각적인 주의가 필요할 때 사용합니다.

---

`affect`

### --feedback--

이는 무언가를 바꾸거나 영향을 준다는 뜻입니다. 한 가지가 다른 것에 변화를 일으키는 상황을 설명할 때 자주 쓰입니다.

# --explanation--

`Critical`는 매우 중요하거나 심각하다는 뜻입니다. 예를 들어:

`We have a critical deadline tomorrow.` – 이는 마감일이 매우 중요해서 놓칠 수 없다는 뜻입니다.

`To affect`는 무언가에 영향을 주거나 변화를 일으킨다는 뜻입니다. 예를 들어:

`The new policy may affect employee performance.` – 이는 정책이 직원들의 업무 수행 방식에 변화를 줄 수 있다는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.12,
      "finishTimestamp": 13.52
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 2.72,
      "dialogue": {
        "text": "Well, we've discovered a critical bug",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.72,
      "finishTime": 4.4,
      "dialogue": {
        "text": "that might affect the user interface.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
