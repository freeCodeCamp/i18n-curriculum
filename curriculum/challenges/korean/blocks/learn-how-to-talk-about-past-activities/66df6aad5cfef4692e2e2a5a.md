---
id: 66df6aad5cfef4692e2e2a5a
title: 작업 74
challengeType: 22
dashedName: task-74
lang: en-US
---
<!--
AUDIO REFERENCE:
Linda: Not yet, but I anticipate we'll start receiving more detailed reports as more users navigate the updated interface.
-->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Not yet, but I anticipate we'll start receiving more detailed reports BLANK BLANK BLANK BLANK the updated interface.`

## --blanks--

`as`

### --feedback--

두 가지 행동이 동시에 일어나거나 한 행동이 다른 행동에 의존함을 나타내는 단어입니다.

---

`more`

### --feedback--

더 많은 양이나 수를 나타내는 단어입니다.

---

`users`

### --feedback--

업데이트된 인터페이스를 탐색하는 사람들을 가리키는 단어입니다.

---

`navigate`

### --feedback--

웹사이트나 앱 같은 것을 돌아다니거나 통과하는 것을 의미하는 단어입니다.

# --explanation--

`As`는 "while" 또는 "when"의 의미로 사용되어 한 행동이 일어나는 동안 다른 행동이 일어남을 나타낼 수 있습니다. 예를 들어:

- `As I was walking home, they called me.` - 그들은 당신이 집에 걸어가는 동안 전화했어요.

- `You will get better at coding as you practice more.` - 연습을 더 하면 실력이 향상될 거예요. 

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-2.mp3",
      "startTime": 1,
      "startTimestamp": 34.22,
      "finishTimestamp": 40.44
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "Not yet, but I anticipate we'll start receiving more detailed reports",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.82,
      "finishTime": 7.22,
      "dialogue": {
        "text": "as more users navigate the updated interface.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.72
    }
  ]
}
```
