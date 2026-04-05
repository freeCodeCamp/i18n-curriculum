---
id: 68da8dffcffd794e83de9d6c
title: 작업 10
challengeType: 19
dashedName: task-10
lang: zh-CN
---

<!-- (Audio) Chen Na: 你们好 (nǐ men hǎo) -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Chen Na가 여러 사람에게 인사할 때 무엇이라고 말하고 있나요?

## --answers--

`你好 (nǐ hǎo)`

### --feedback--

이것은 한 사람에게 하는 인사이지만 Chen Na는 여러 사람에게 인사하고 있습니다.

---

`您们好 (nín men hǎo)`

### --feedback--

이 표현은 중국어에서 표준이 아닙니다.

---

`你们好 (nǐ men hǎo)`

---

`大家好 (dà jiā hǎo)`

### --feedback--

이것도 "안녕하세요, 여러분"이라는 뜻이지만 Chen Na는 다른 표현을 사용합니다.

## --video-solution--

3

# --explanation--

질문은 Chen Na가 **여러 사람에게** 인사할 때 무엇이라고 말하는지 묻고 있습니다.

`你好 (nǐ hǎo)`는 한 사람에게 하는 인사이고, `您好 (nín hǎo)`는 한 사람에게 하는 정중한 인사입니다. `您们好 (nín men hǎo)`는 중국어에서 표준이 아니며, `您 (nín)`는 정중한 단수형으로 보통 복수형으로 쓰이지 않습니다.

여러 사람에게 인사할 때 올바른 표현은 `你们好 (nǐ men hǎo)`로, "안녕하세요, 여러분"을 흔히 말하는 방법입니다. `大家好 (dà jiā hǎo)`는 또 다른 인사 방법으로, 학습을 진행하면서 배우게 될 것입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Chen Na",
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
      "startTimestamp": 8.98,
      "finishTimestamp": 9.9
    }
  },
  "commands": [
    {
      "character": "Chen Na",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Chen Na",
      "startTime": 1,
      "finishTime": 1.92,
      "dialogue": {
        "text": "你们好 (nǐ men hǎo)",
        "align": "center"
      }
    },
    {
      "character": "Chen Na",
      "opacity": 0,
      "startTime": 2.42
    }
  ]
}
```
