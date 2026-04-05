---
id: 66bbba46fff0ef451b701bcd
title: 작업 103
challengeType: 19
dashedName: task-103
lang: en-US
---

<!-- Audio Reference:
Tom: Hey Sarah, do you have a moment? I'm struggling with these IDEs.
Sarah: Sure, I'm not busy. What's the problem? -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Sarah가 Tom과 이야기할 수 있나요?

## --answers--

아니요, 그녀는 바빠서 그의 문제에 관심이 없어요.

### --feedback--

Sarah는 자신이 바쁘지 않다고 말합니다.

---

네, 그녀는 시간이 있고 무슨 문제인지 알고 싶어 합니다.

---

아니요, 지금은 이야기할 수 없어요. 그녀도 자신의 문제가 있어요.

### --feedback--

Sarah는 자신이 바쁘지 않다고 말합니다.

---

네, 하지만 잠깐만요. 그녀도 자신의 문제가 있기 때문이에요.

### --feedback--

Sarah는 시간을 제한하지 않고 단지 바쁘지 않다고 말합니다.

## --video-solution--

2

# --explanation--

Sarah는 자신이 시간이 있다고 직접 말하는 대신 부정형 `I'm not busy`을 사용해 도울 시간이 있음을 강조합니다.

이는 영어에서 정중하고 간접적으로 시간을 내줄 수 있음을 표현하는 방법으로, 대화를 더 신중하게 만듭니다.

그녀의 다음 문장 `What's the problem?`은 Tom이 문제를 설명하도록 초대하며 도울 의사가 있음을 확인시켜 줍니다.

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
      },
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
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 6.5
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
      "finishTime": 2.92,
      "dialogue": {
        "text": "Hey Sarah, do you have a moment?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "startTime": 3.08,
      "finishTime": 5.14,
      "dialogue": {
        "text": "I'm struggling with these IDEs.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "startTime": 5.54,
      "finishTime": 7.5,
      "dialogue": {
        "text": "Sure, I'm not busy. What's the problem?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 8
    }
  ]
}
```
