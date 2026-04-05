---
id: 67d7dcfb9afa344d0e95fa4f
title: 작업 122
challengeType: 22
dashedName: task-122
lang: en-US
---

<!-- (Audio) Sarah: However, outsourcing can lead to communication issues, which might delay the project. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`However, outsourcing can BLANK communication issues, which might BLANK the project.`

## --blanks--

`lead to`

### --feedback--

이 두 단어 구문은 어떤 일이 일어나게 하거나 결과를 초래한다는 뜻입니다.  

---

`delay`

### --feedback--

이것은 어떤 일이 예상보다 오래 걸리게 하거나 지연시키는 것을 의미합니다.  

# --explanation--

`Lead to`는 어떤 일이 일어나게 하거나 특정 결과를 초래한다는 뜻입니다. 예를 들어:

`Poor planning can lead to missed deadlines.` – 계획이 잘 안 되면 마감일을 맞추지 못할 수도 있다는 의미입니다.  

`Delay`는 어떤 일이 예상보다 오래 걸리게 하거나 연기한다는 뜻입니다. 예를 들어:

`The software release was delayed due to unexpected bugs.` – 기술 문제로 인해 출시가 미뤄졌다는 의미입니다.  

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
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 46.98,
      "finishTimestamp": 51.34
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
      "finishTime": 5.36,
      "dialogue": {
        "text": "However, outsourcing can lead to communication issues which might delay the project.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.86
    }
  ]
}
```
