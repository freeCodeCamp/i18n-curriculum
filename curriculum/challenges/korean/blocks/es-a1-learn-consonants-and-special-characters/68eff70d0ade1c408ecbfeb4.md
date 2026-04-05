---
id: 68eff70d0ade1c408ecbfeb4
title: 작업 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Julieta: d -->

# --description--

문자 `d`는 `de`라고 부릅니다.

단어의 처음이나 `l` 또는 `n` 뒤에서는 소리가 더 강하게 나며, 예를 들어 `dos`("two")라는 단어에서 그렇습니다. 그러나 모음 사이에서는 더 부드럽게 발음되며, 예를 들어 `idea`("idea")라는 단어에서 그렇습니다.

예시로는 `doctor`("doctor")가 있습니다.

# --instructions--

오디오를 듣고 빈칸에 문자를 적으세요.

# --fillInTheBlank--

## --sentence--

`BLANK`

## --blanks--

`d`

### --feedback--

알파벳에서 네 번째 글자입니다.

# --scene--

```json
{
  "setup": {
    "background": "living-room.png",
    "characters": [
      {
        "character": "Julieta",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_alphabet.mp3",
      "startTime": 1,
      "startTimestamp": 8.39,
      "finishTimestamp": 9.39
    }
  },
  "commands": [
    {
      "character": "Julieta",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Julieta",
      "startTime": 1,
      "finishTime": 2,
      "dialogue": {
        "text": "d",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 2.5
    }
  ]
}
```
