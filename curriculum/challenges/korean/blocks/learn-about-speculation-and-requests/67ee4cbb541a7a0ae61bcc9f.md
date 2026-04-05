---
id: 67ee4cbb541a7a0ae61bcc9f
title: 작업 4
challengeType: 19
dashedName: task-4
lang: en-US
---

<!-- (audio) Sophie: It's not a big deal, but we should fix it before it causes problems. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

이 작은 오류가 심각한가요?

## --answers--

아니요, 그리고 아무 조치도 필요하지 않습니다.

### --feedback--

Sophie는 이것이 큰 문제라고 말하지 않지만, 고쳐야 한다고 생각합니다.

---

네, 이 오류가 전체 시스템을 망가뜨릴 것입니다.

### --feedback--

Sophie는 이것이 큰 문제라고 말하지 않고, 단지 고쳐야 할 문제라고 말합니다.

---

네, Sophie는 이것에 대해 매우 걱정하고 있습니다.

### --feedback--

Sophie는 크게 걱정하지 않지만, 그래도 고쳐야 한다고 생각합니다.

---

아니요, 하지만 여전히 고쳐야 합니다.

## --video-solution--

4

# --explanation--

`It's not a big deal`는 문제가 심각하지 않다는 뜻입니다. 예를 들어:

- **Monica:** `I can't join the meeting today.`

- **Eva:** `It's not a big deal. I'll take notes for you.` - 회의를 빠져도 괜찮고, 이 사람이 도울 수 있습니다.

Sophie는 또한 `we should fix it before it causes problems`라고 말하는데, 심각해지기 전에 지금 고치는 게 낫다는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.72,
      "finishTimestamp": 8.5
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.78,
      "dialogue": {
        "text": "It's not a big deal, but we should fix it before it causes problems.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.28
    }
  ]
}
```
