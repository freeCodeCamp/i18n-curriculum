---
id: 680cad23e2d58a1ef7c2edfb
title: 작업 19
challengeType: 22
dashedName: task-19
lang: en-US
---

<!-- (Audio) Sarah: Those are the ones. But, we found something even better in your catalog, these high-capacity ones here. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Those are the ones. But, we found something even better in your catalog, BLANK BLANK ones here.`

## --blanks--

`these`

### --feedback--

이 단어는 화자 가까이에 있는 특정 항목을 가리킬 때 사용합니다.

---

`high-capacity`

### --feedback--

이 복합어는 많은 작업, 저장 또는 에너지를 처리할 수 있는 것을 의미합니다. `-`을 사용하세요.

# --explanation--

`High-capacity`는 표준 버전과 비교해 많은 양을 관리하거나 보관하도록 설계된 것을 설명합니다. 예를 들어:

`We installed high-capacity batteries in the new devices.` – 이 말은 배터리가 더 많은 전력을 저장하고 더 오래 지속할 수 있음을 의미하며, 기술 장비에서 유용합니다.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
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
      "filename": "B1_19-1.mp3",
      "startTime": 1,
      "startTimestamp": 27.3,
      "finishTimestamp": 32.68
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
      "finishTime": 6.38,
      "dialogue": {
        "text": "Those are the ones, but we found something even better in your catalog, these high capacity ones here.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 6.88
    }
  ]
}
```
