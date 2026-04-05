---
id: 67caeb9a6a3aedb94bc912dd
title: 작업 129
challengeType: 22
dashedName: task-129
lang: en-US
---

<!-- (Audio) Maria: They also said the communication isn't great because they often don't hear about changes until it's too late. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.  

# --fillInTheBlank--

## --sentence--

`They BLANK said the communication isn't great because they BLANK don't hear about changes until it's too late.`  

## --blanks--

`also`  

### --feedback--

이는 추가로 또는 또한이라는 뜻입니다.

---  

`often`  

### --feedback--

이는 자주 또는 여러 번이라는 뜻입니다.

# --explanation--

`Also`는 앞서 언급한 것에 덧붙여서라는 뜻입니다. 예를 들어:

`She speaks English and also knows French.` - 이는 그녀가 영어뿐 아니라 프랑스어도 안다는 뜻입니다.  

`Often`는 자주 또는 규칙적으로라는 뜻입니다. 예를 들어:

`He often works late on Fridays.` - 이는 그가 금요일마다 여러 번 또는 규칙적으로 늦게까지 일한다는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 34.9,
      "finishTimestamp": 40.12
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.18,
      "dialogue": {
        "text": "They also said the communication isn't great",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3.18,
      "finishTime": 6.22,
      "dialogue": {
        "text": "because they often don't hear about changes until it's too late.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 6.72
    }
  ]
}
```
