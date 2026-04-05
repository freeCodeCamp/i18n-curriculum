---
id: 657b1a27dc6daf6ffd52ff1f
title: 과제 30
challengeType: 19
dashedName: task-30
lang: en-US
---

<!-- (Audio) Anna: Excellent. Can you share details about your educational background? Were you trained in a specific field?
Second Candidate: Yes. I have a master's degree in computer science. -->

# --description--

영어에서 `'s`가 붙은 명사 다음에 또 다른 명사가 오는 구조는 소유나 소속을 나타낼 때 사용합니다.

첫 번째 명사가 단수일 경우, `Sarah's laptop`처럼 노트북이 Sarah의 것임을 나타냅니다. 반면 첫 번째 명사가 복수일 경우, `'`가 붙은 명사 구조로 바뀌어 `teachers' office`처럼 교사들의 사무실을 의미합니다.

# --questions--

## --text--

대화에서 `master's degree`는 무엇을 의미하나요?

## --answers--

학교 교사를 위한 학위

### --feedback--

`Master's degree`는 교사를 위한 특정 학위가 아니라 고급 학위를 의미합니다.

---

초등 교육 수준의 학위

### --feedback--

`Master's degree`는 초등 수준을 넘어선 고등 교육 자격입니다.

---

기술 숙달을 위한 학위

### --feedback--

전문성을 의미할 수 있으나 `master's degree`는 학문적 자격을 구체적으로 가리킵니다.

---

고급 학문 학위

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Anna",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      },
      {
        "character": "Second Candidate",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 43.44,
      "finishTimestamp": 51.78
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 5.72,
      "dialogue": {
        "text": "Excellent. Can you share details about your educational background? Were you trained in a specific field?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "opacity": 1,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "startTime": 6.36,
      "finishTime": 9.34,
      "dialogue": {
        "text": "Yes. I have a master's degree in computer science.",
        "align": "center"
      }
    },
    {
      "character": "Second Candidate",
      "opacity": 0,
      "startTime": 9.84
    }
  ]
}
```
