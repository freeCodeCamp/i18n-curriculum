---
id: 68feee5abac0c3186f90b3ad
title: 작업 9
challengeType: 19
dashedName: task-9
lang: zh-CN
---

<!-- (Audio) Wang Hua: 名字 (míng zi) -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Wang Hua가 말하는 내용의 올바른 병음은 어느 것인가요?

## --answers--

`míng zi`

---

`mǐng zi`

### --feedback--

첫 음절의 성조가 오디오에서 들리는 것과 일치하지 않습니다.

---

`mín zi`

### --feedback--

첫 음절의 운모가 그녀가 말하는 것과 다릅니다.

---

`míng zhī`

### --feedback--

두 번째 음절의 초성이 오디오에서 들리는 것과 다릅니다.

## --video-solution--

1

# --explanation--

Wang Hua는 `míng zi`라고 말하고 있습니다. 첫 음절은 비음 운모 `ing`와 상승 성조를 가지고 있습니다. 두 번째 음절은 경성으로 가볍게 발음되는 온전한 음절입니다.

# --scene--

```json
{
  "setup": {
    "background": "company1-breakroom.png",
    "characters": [
      {
        "character": "Wang Hua",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ZH_A1_greetings_and_introductions_warm_up.mp3",
      "startTime": 1,
      "startTimestamp": 31.51,
      "finishTimestamp": 32.34
    }
  },
  "commands": [
    {
      "character": "Wang Hua",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Wang Hua",
      "startTime": 1,
      "finishTime": 1.83,
      "dialogue": {
        "text": "名字 (míng zi)",
        "align": "center"
      }
    },
    {
      "character": "Wang Hua",
      "opacity": 0,
      "startTime": 2.33
    }
  ]
}
```
