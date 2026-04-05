---
id: 67ddafcebec26b8e5f46745b
title: 작업 31
challengeType: 22
dashedName: task-31
lang: en-US
---

<!-- (Audio) James: Anything else we should discuss before our next meeting? -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Anything BLANK we should discuss before our next meeting?`

## --blanks--

`else`

### --feedback--

이는 이미 언급된 것 외에 추가로 무엇인가를 의미합니다.

# --explanation--

`Else`는 `anything else` 표현에서 이미 말하거나 한 것 외에 추가로 무언가가 있는지 묻는 데 사용됩니다. 예를 들어:

`Would you like anything else with your order?` - 여기서는 상대방이 이미 요청한 것 외에 다른 것을 원하는지 묻고 있습니다.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
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
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 39.22,
      "finishTimestamp": 42.22
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
      "finishTime": 4,
      "dialogue": {
        "text": "Anything else we should discuss before our next meeting?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.5
    }
  ]
}
```
