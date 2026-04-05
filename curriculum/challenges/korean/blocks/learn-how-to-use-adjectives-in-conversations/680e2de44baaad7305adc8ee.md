---
id: 680e2de44baaad7305adc8ee
title: 작업 46
challengeType: 22
dashedName: task-46
lang: en-US
---

<!-- (Audio) Josh: I'll draft a new quote with these specifics and send it over to you by tomorrow. Does that work for you? -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`I'll draft a new quote with these specifics and send it over to you by tomorrow. BLANK for you?`

## --blanks--

`Does that work`

### --feedback--

이 세 단어는 함께 계획이나 제안이 괜찮은지 정중하게 묻는 표현입니다. 첫 단어의 첫 글자는 대문자입니다.

# --explanation--

`Does that work`는 제안이나 약속이 상대방에게 괜찮은지 정중하게 확인하는 표현입니다. 예를 들어:

`We can meet at 3 PM. Does that work for you?` – 상대방에게 시간이 괜찮은지 편한지 묻는 표현입니다.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Josh",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-1.mp3",
      "startTime": 1,
      "startTimestamp": 70.14,
      "finishTimestamp": 75.94
    }
  },
  "commands": [
    {
      "character": "Josh",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Josh",
      "startTime": 1,
      "finishTime": 6.8,
      "dialogue": {
        "text": "I'll draft a new quote with these specifics and send it over to you by tomorrow. Does that work for you?",
        "align": "center"
      }
    },
    {
      "character": "Josh",
      "opacity": 0,
      "startTime": 7.3
    }
  ]
}
```
