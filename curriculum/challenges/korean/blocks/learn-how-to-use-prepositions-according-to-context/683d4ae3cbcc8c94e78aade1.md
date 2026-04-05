---
id: 683d4ae3cbcc8c94e78aade1
title: 작업 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (Audio) Bob: Exactly. It's in the back, next to the emergency exit. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Bob이 무엇을 설명하고 있나요?

## --answers--

비상구가 막혀 있다고 말하는 것.

### --feedback--

Bob은 출구가 막혔다고 말하지 않고 위치만 언급합니다.

---

뒷문에 새 자물쇠가 필요하다고 말하는 것.

### --feedback--

Bob은 자물쇠나 뒷문 수리에 대해 언급하지 않습니다.

---

서버실을 청소해야 한다고 말하는 것.

### --feedback--

Bob의 문장에는 청소에 대한 언급이 없습니다.

---

무언가가 비상구 근처에 있다고 말하는 것.

## --video-solution--

4

# --explanation--

Bob은 `Exactly. It's in the back, next to the emergency exit`라고 말합니다. 이는 무언가가 비상구 바로 옆에 있다는 위치를 확인하는 의미입니다.

수리, 청소, 문제에 대해서는 언급하지 않습니다.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 16.4,
      "finishTimestamp": 19.72
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 4.32,
      "dialogue": {
        "text": "Exactly. It's in the back, next to the emergency exit.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.82
    }
  ]
}
```
