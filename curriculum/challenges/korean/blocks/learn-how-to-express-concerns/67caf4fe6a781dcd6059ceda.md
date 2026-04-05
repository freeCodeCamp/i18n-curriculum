---
id: 67caf4fe6a781dcd6059ceda
title: 작업 131
challengeType: 22
dashedName: task-131
lang: en-US
---

<!-- (Audio) Maria: It'd be helpful if we had more regular check-ins. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.  

# --fillInTheBlank--

## --sentence--

`It'd be BLANK if we had more BLANK check-ins.`  

## --blanks--

`helpful`  

### --feedback--

이는 도움을 주거나 무언가를 더 쉽게 만드는 것을 의미합니다.  

---  

`regular`  

### --feedback--

이는 규칙적으로 또는 정해진 간격으로 발생하는 것을 의미합니다.  

# --explanation--

`Helpful`는 도움을 주거나 무언가를 더 쉽게 만드는 것을 의미합니다. 예를 들어:

`It was helpful to have clear instructions before starting the task.` - 이 문장은 지시사항이 작업을 더 쉽게 완료하도록 만들었다는 뜻입니다.

`Regular`는 규칙적으로 또는 정해진 간격으로 발생하는 것을 의미합니다. 예를 들어:

`We have regular meetings every Monday.` - 이 문장은 회의가 매주 월요일에 규칙적으로 열린다는 뜻입니다.

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
      "startTimestamp": 40.42,
      "finishTimestamp": 42.58
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
      "finishTime": 3.16,
      "dialogue": {
        "text": "It'd be helpful if we had more regular check-ins.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.66
    }
  ]
}
```
