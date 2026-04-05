---
id: 67aa23adedb02b11aaceda26
title: 작업 8
challengeType: 19
dashedName: task-8
lang: en-US
---

<!-- (Audio) Anna: While furniture is important, many people mentioned that their computers need upgrades. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Anna에 따르면 무엇이 더 중요합니까?

## --answers--

컴퓨터 업그레이드.

---

새 사무용 가구 구입.

### --feedback--

Anna는 가구가 중요하다고 인정하지만 많은 사람이 다른 것이 필요하다고 언급했다고 말합니다.

---

더 큰 원격 근무 수당 받기.

### --feedback--

Anna는 수당 인상에 대해 말하지 않고 사람들이 수당을 어떻게 사용하고 싶어 하는지만 언급합니다.

---

설문 조사 질문 변경.

### --feedback--

Anna는 설문 조사 질문에 대해 언급하지 않습니다.

## --video-solution--

1

# --explanation--

`computer upgrade`는 메모리(RAM) 추가, 더 빠른 프로세서, 더 나은 화면 등 부품을 추가하거나 교체하여 컴퓨터를 개선하는 것을 의미합니다. 예를 들어:

- `I need a computer upgrade to run the latest software.` - 화자의 현재 컴퓨터가 충분히 강력하지 않아 더 좋은 컴퓨터가 필요합니다.

- `After the computer upgrade, everything runs much faster.` - 부품을 업데이트하거나 교체한 후 시스템 성능이 향상되었습니다.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 12.06,
      "finishTimestamp": 15.8
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.74,
      "dialogue": {
        "text": "While furniture is important, many people mentioned that their computers need upgrades.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
