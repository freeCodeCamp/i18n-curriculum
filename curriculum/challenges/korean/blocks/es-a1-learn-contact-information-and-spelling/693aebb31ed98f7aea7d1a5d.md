---
id: 693aebb31ed98f7aea7d1a5d
title: 작업 26
challengeType: 19
dashedName: task-26
lang: es
---

<!-- (Audio) Basti: Y mi número es +502 4489 2201. -->

# --description--

이번 작업에서는 Basti가 국가 번호를 포함한 전체 전화번호를 말하는 것을 듣게 됩니다. 번호는 그룹으로 묶인 숫자들로 발음됩니다.

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

다음 중 Basti의 전화번호는 무엇인가요?

## --answers--

+502 4489 2201

---

+502 4489 2102

### --feedback--

마지막 숫자가 Basti가 말한 것과 다릅니다.

---

+520 4489 2201

### --feedback--

Basti가 말한 국가 번호는 520이 아닙니다.

---

+502 4498 2201

### --feedback--

중간 네 자리 숫자에 작은 오류가 있습니다.

## --video-solution--

1

# --explanation--

`Y mi número es +502 4489 2201`, 는 "그리고 내 번호는 +502 4489 2201입니다"라는 뜻입니다.

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
      "startTimestamp": 64.86,
      "finishTimestamp": 74.84
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
      "finishTime": 10.98,
      "dialogue": {
        "text": "Y mi número es +502 4489 2201.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 11.48
    }
  ]
}
```
