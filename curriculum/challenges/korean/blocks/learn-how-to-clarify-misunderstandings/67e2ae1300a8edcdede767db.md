---
id: 67e2ae1300a8edcdede767db
title: 작업 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Mark: Can I ask you about a few of them? -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Can I BLANK you BLANK a few of them?`

## --blanks--

`ask`

### --feedback--

이 동사는 누군가가 정보를 얻거나 허락을 구할 때 사용합니다.

---

`about`

### --feedback--

이 전치사는 관련된 주제나 대상을 연결합니다.

# --explanation--

`Ask about`는 특정 주제와 관련된 정보를 요청하는 것을 의미합니다. 예를 들어:

`I asked about the new feature.` – 기능에 대한 정보를 원했습니다.

`Can I ask you about...`는 정보를 원하거나 도움을 요청할 때 정중하게 질문을 시작하는 방법입니다. 특정 주제에 대해 이야기할 허락을 구하는 표현입니다. 예를 들어:

`Can I ask you about the project deadline?` – 마감일에 대해 이야기하고 더 자세한 내용을 알고 싶다는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.58,
      "finishTimestamp": 7.08
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 2.5,
      "dialogue": {
        "text": "Can I ask you about a few of them?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3
    }
  ]
}
```
