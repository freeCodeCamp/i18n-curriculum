---
id: 65a74dae1b3acd9fad3a068e
title: タスク 132
challengeType: 22
dashedName: task-132
lang: en-US
---

<!-- (Audio) Tom: For me, I like the idea of practicing my skills and getting recognition for my contributions. -->

# --description--

`To recognize` は、以前から知っている人や物を特定したり、何かの存在や正当性を認めることを意味します。例えば、`I recognize your efforts in completing this project.`

`Recognition` は `recognize` の名詞形で、誰かの努力や成果を認めたり評価したりする行為を指します。例えば、`He received recognition for his innovative work.`

# --fillInTheBlank--

## --sentence--

`For me, I like the idea of BLANK my skills and getting BLANK for my contributions.`

## --blanks--

`practicing`

### --feedback--

この動詞は、能力を向上させたり維持したりするために、繰り返しまたは定期的に活動や練習を行うことを意味します。

---

`recognition`

### --feedback--

この名詞は、誰かの努力や成果、特性を認める行為や過程を指します。

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
