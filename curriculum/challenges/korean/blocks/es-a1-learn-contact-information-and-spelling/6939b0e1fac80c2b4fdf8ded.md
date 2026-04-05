---
id: 6939b0e1fac80c2b4fdf8ded
title: 작업 17
challengeType: 22
dashedName: task-17
lang: es
---

<!-- (Audio) Basti: Se escribe B-a-s-t-i. -->

# --description--

이번 도전 과제에서 Basti는 자신의 별명을 한 글자씩 철자합니다.

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Se escribe BLANK a s BLANK BLANK.`

## --blanks--

`B`

### --feedback--

Basti가 별명을 철자할 때 처음 사용하는 글자입니다.

---

`t`

### --feedback--

이 글자는 "Basti"의 "s" 다음에 나옵니다.

---

`i`

### --feedback--

"Basti"의 마지막 글자입니다. 끝에 나는 모음 소리를 들어보세요.

# --explanation--

Basti는 자신의 별명을 `B-a-s-t-i`로 철자합니다.

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 22.6,
      "finishTimestamp": 27.5
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 5.6,
      "dialogue": {
        "text": "Se escribe B-a-s-t-i.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 5.9
    }
  ]
}
```
