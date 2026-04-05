---
id: 680ae6fa6f3bb82a094cffcf
title: 작업 91
challengeType: 19
dashedName: task-91
lang: en-US
---

<!-- (Audio) Riker: The UK and Germany saw the most improvement, even more than we expected. -->

<!-- SPEAKING -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

결과에 대해 마리아가 긍정적으로 놀랐다는 것을 보여주려면 무엇이라고 말할 수 있을까요?

## --answers--

`That's impressive.`

### --audio-id--

EN70c3200b

---

`Maybe we should lower our expectations.`

### --audio-id--

EN342dc19a

### --feedback--

이것은 결과에 대한 흥분이 아니라 자신감 부족을 보여줍니다.

## --video-solution--

1

# --explanation--

`Impressive`는 어떤 것이 평소보다 뛰어나거나 크거나 효과적이어서 주목, 감탄, 존경받을 만하다는 뜻입니다. 예를 들어:

`Your presentation was really impressive! It covered everything clearly and confidently.` – 이는 발표가 고품질이었고 강한 긍정적 인상을 남겼다는 의미입니다.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Riker",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-3.mp3",
      "startTime": 1,
      "startTimestamp": 18.42,
      "finishTimestamp": 23.1
    }
  },
  "commands": [
    {
      "character": "Riker",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Riker",
      "startTime": 1,
      "finishTime": 3.32,
      "dialogue": {
        "text": "The UK and Germany saw the most improvement,",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "startTime": 3.72,
      "finishTime": 5.68,
      "dialogue": {
        "text": "even more than we expected.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 6.18
    }
  ]
}
```
