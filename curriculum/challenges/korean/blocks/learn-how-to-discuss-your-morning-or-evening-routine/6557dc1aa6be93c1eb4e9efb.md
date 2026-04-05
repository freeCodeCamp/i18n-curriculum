---
id: 6557dc1aa6be93c1eb4e9efb
title: 작업 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (Audio) Sarah: Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team. -->

# --description--

단어 `if`는 "여부"를 의미합니다. 예를 들어:

`She checks her emails to see if there are any urgent updates.` - 이것은 그녀가 업데이트가 있는지 알아보려 한다는 뜻입니다.

`If`는 조건문 일부로도 사용될 수 있으며, 가능한 상황과 그 결과를 보여줍니다. 예를 들어:

`If there are urgent updates, I will reply immediately.` - 이것은 긴급 업데이트가 있는지 여부에 따라 답장이 달라진다는 뜻입니다.

# --questions--

## --text--

Sarah가 이메일과 메시지를 확인한다고 말할 때 `if`를 사용한 의미는 무엇인가요?

## --answers--

그녀는 항상 팀에서 긴급 업데이트를 찾습니다.

### --feedback--

`If`는 긴급 업데이트를 반드시 찾는다는 뜻이 아닙니다.

---

때로는 긴급 업데이트가 있고, 때로는 없습니다.

---

그녀는 절대 이메일과 메시지를 확인하지 않습니다.

### --feedback--

Sarah는 실제로 이메일과 메시지를 확인한다고 말했습니다.

---

이메일 확인은 그녀의 일상에 포함되지 않습니다.

### --feedback--

Sarah는 이메일과 메시지 확인이 일상의 일부라고 언급했습니다.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 55.08,
      "finishTimestamp": 60.78
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
      "finishTime": 6.70,
      "dialogue": {
        "text": "Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.20
    }
  ]
}
```
