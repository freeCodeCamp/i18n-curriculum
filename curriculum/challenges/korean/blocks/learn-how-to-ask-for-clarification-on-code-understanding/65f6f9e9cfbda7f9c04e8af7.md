---
id: 65f6f9e9cfbda7f9c04e8af7
title: 작업 41
challengeType: 19
dashedName: task-41
lang: en-US
---

<!-- (Audio) Brian: Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening. -->

# --description--

영어에서 `by the end of it`라는 표현은 어떤 과정이나 기간의 결론 또는 마지막 부분을 가리킬 때 흔히 사용됩니다. 이는 특정 활동이 완료되면 특정 결과나 이해가 이루어질 것임을 의미합니다.

# --questions--

## --text--

대화에서 Brian이 `by the end of it`로 의미하는 것은 무엇인가요?

## --answers--

조사를 중단할 것입니다.

### --feedback--

이 표현은 활동을 중단한다기보다 결론에 도달하는 것에 관한 것입니다.

---

다른 활동을 시작할 것입니다.

### --feedback--

Brian은 현재 조사의 끝을 말하는 것이지, 새로운 것을 시작하는 것이 아닙니다.

---

휴식을 취할 것입니다.

### --feedback--

이 표현은 과정의 끝에서 이해에 도달하는 것에 초점을 맞추고 있으며, 휴식을 의미하지 않습니다.

---

조사 후 상황에 대해 더 명확한 이해를 갖게 될 것입니다.

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "6.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 20.74,
      "finishTimestamp": 26.28
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 6.54,
      "dialogue": {
        "text": "Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening.",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
