---
id: 657fb5afeeba2de5d01dda0e
title: 도전 과제 81
challengeType: 19
dashedName: task-81
lang: en-US
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Tom은 Sarah의 공상과학 컨벤션 초대에 어떻게 반응하나요?

## --answers--

즉시 수락한다.

### --feedback--

Tom은 초대를 수락하지 않습니다. 공상과학에 관심이 없다고 말합니다.

---

정중하게 거절한다.

---

관심이 없음을 보인다.

### --feedback--

Tom은 관심이 없음을 표현하지만, 그의 반응은 단순히 무관심을 보이는 것보다 정중하게 거절하는 데 가깝습니다.

---

초대를 무시한다.

### --feedback--

Tom은 초대를 인지하고 응답하므로 무시하지 않습니다.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
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
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
