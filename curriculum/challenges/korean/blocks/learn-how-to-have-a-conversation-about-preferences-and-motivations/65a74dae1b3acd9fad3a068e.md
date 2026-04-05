---
id: 65a74dae1b3acd9fad3a068e
title: 작업 132
challengeType: 22
dashedName: task-132
lang: en-US
---

<!-- (Audio) Tom: For me, I like the idea of practicing my skills and getting recognition for my contributions. -->

# --description--

`To recognize`는 이전에 누군가 또는 무언가를 식별하거나, 무언가의 존재나 타당성을 인정하는 것을 의미합니다. 예를 들어, `I recognize your efforts in completing this project.`

`Recognition`는 `recognize`의 명사형으로, 누군가의 노력이나 성과에 대해 인정하거나 공로를 인정하는 행위를 가리킵니다. 예를 들어, `He received recognition for his innovative work.`

# --fillInTheBlank--

## --sentence--

`For me, I like the idea of BLANK my skills and getting BLANK for my contributions.`

## --blanks--

`practicing`

### --feedback--

이 동사는 능력을 향상하거나 유지하기 위해 어떤 활동이나 운동을 반복하거나 규칙적으로 수행하는 것을 의미합니다.

---

`recognition`

### --feedback--

이 명사는 누군가의 노력, 성취 또는 특성을 인정하는 행위나 과정을 가리킵니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-5.mp3",
      "startTime": 1,
      "startTimestamp": 41.5,
      "finishTimestamp": 47.12
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 6.62,
      "dialogue": {
        "text": "For me, I like the idea of practicing my skills and getting recognition for my contributions.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 7.12
    }
  ]
}
```
