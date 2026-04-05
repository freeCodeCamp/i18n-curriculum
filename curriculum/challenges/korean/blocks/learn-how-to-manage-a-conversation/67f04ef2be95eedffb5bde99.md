---
id: 67f04ef2be95eedffb5bde99
title: 작업 103
challengeType: 22
dashedName: task-103
lang: en-US
---

<!-- (Audio) Brian: Is there anything else slowing you down? -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Is there anything else BLANK you down?`

## --blanks--

`slowing`

### --feedback--

`down`에 이어서, 이것은 무언가를 정상보다 더 느리게 움직이거나 발생하게 만드는 것을 의미합니다. `-ing` 형태를 사용하세요.

# --explanation--

`To slow down`는 속도를 줄이거나 무언가가 더 천천히 일어나도록 만드는 것을 의미합니다. 업무나 프로젝트 상황에서는 진행을 지연시키는 모든 것을 가리킬 수 있습니다. 예를 들어:

`Traffic is slowing down the delivery.` – 이것은 교통 때문에 배송이 더 오래 걸린다는 뜻입니다.  

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-3.mp3",
      "startTime": 1,
      "startTimestamp": 23.16,
      "finishTimestamp": 25.38
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.22,
      "dialogue": {
        "text": "Is there anything else slowing you down?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.72
    }
  ]
}
```
