---
id: 68fa8b4ecf2cf649ff55f7fd
title: 작업 2
challengeType: 19
dashedName: task-2
lang: es
---

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

이 오디오에서 발음된 **두 번째** 글자는 무엇인가요?

## --answers--

`b`

### --feedback--

글자 `b`는 다른 소리를 냅니다.

---

`x`

---

`z`

### --feedback--

글자 `z`는 다른 소리를 냅니다.

---

`m`

### --feedback--

글자 `m`는 다른 소리를 냅니다.

## --video-solution--

2

# --explanation--

오디오에서 발음된 세 글자는 `b`, `x`, `z`입니다.

두 번째 글자는 `x`입니다. 따라서 `x`가 정답입니다.

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
      "filename": "ES_A1_alphabet_practice.mp3",
      "startTime": 1,
      "startTimestamp": 8,
      "finishTimestamp": 12.96
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
      "finishTime": 1.67,
      "dialogue": {
        "text": "b",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 3.26,
      "finishTime": 4.05,
      "dialogue": {
        "text": "x",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 5.21,
      "finishTime": 5.96,
      "dialogue": {
        "text": "z",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 6.46
    }
  ]
}
```
