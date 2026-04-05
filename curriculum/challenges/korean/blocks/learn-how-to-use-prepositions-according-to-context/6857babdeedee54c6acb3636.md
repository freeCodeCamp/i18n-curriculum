---
id: 6857babdeedee54c6acb3636
title: 작업 134
challengeType: 19
dashedName: task-134
lang: en-US
---

<!-- (Audio) Sarah: If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

모니터는 지금 어디에 저장되어 있나요?

## --answers--

주차장 끝에 있습니다.

### --feedback--

Sarah가 주차장에 대해 언급하지 않았습니다.

---

IT실 안에 있습니다.

### --feedback--

모니터는 이전에 IT실에서 옮겨졌습니다.

---

보안 데스크 옆에 있습니다.

### --feedback--

보안 데스크에 대한 언급이 없습니다.

---

커피 머신 바로 근처에 있습니다.

## --video-solution--

4

# --explanation--

Sarah는 `the coffee machine`를 참조 지점으로 하여 명확한 길 안내를 제공합니다.

복도를 따라 직진한 후 왼쪽으로 돌면 모니터가 그 맞은편에 위치해 있어, 커피 머신이 모니터를 찾는 데 가장 가까운 눈에 띄는 기준점임을 설명합니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.68,
      "finishTimestamp": 18.22
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 6.54,
      "dialogue": {
        "text": "If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
