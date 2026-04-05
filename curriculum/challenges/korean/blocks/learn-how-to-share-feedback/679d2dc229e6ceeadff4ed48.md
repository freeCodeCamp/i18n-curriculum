---
id: 679d2dc229e6ceeadff4ed48
title: 작업 92
challengeType: 22
dashedName: task-92
lang: en-US
---

<!-- (Audio) James: Do you think we need to update the software again? If we do, it might delay other projects. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Do you think we need to update the software again? If we BLANK, it might BLANK other projects.`

## --blanks--

`do`

### --feedback--

이 단어는 이전 문장에서 사용된 동사 `update`를 반복하지 않기 위해 사용됩니다.

---

`delay`

### --feedback--

이 단어는 미루거나 예정된 시간보다 늦게 하다는 뜻입니다.

# --explanation--

James는 `If we update the software, it might delay other projects.`라고 말하는 대신 `If we do`로 줄였습니다. `do`는 이전 문장에서 사용된 동사나 전체 구를 반복하지 않기 위해 자주 사용됩니다. 예를 들어:

`She wants to join the meeting, and if she does, she'll need the link.` - `if she joins the meeting`라고 말하는 대신 `does`를 사용해 반복을 피할 수 있습니다.

`To delay`는 예정된 시간보다 늦게 하다는 뜻입니다. 예를 들어:

`The flight was delayed due to bad weather.` - 이 문장은 비행기가 연기되어 제시간에 출발하지 않았다는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 26.86,
      "finishTimestamp": 31.46
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.88,
      "dialogue": {
        "text": "Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "startTime": 3.16,
      "finishTime": 5.6,
      "dialogue": {
        "text": "If we do, it might delay other projects.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 6.1
    }
  ]
}
```
