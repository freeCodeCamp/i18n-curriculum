---
id: 6856ddea73ea5fafe4d65cfc
title: 작업 95
challengeType: 19
dashedName: task-95
lang: en-US
---

<!-- (Audio) Jake: We could incorporate an interactive quiz during the onboarding process. It could teach users how to recognize and handle potential phishing attempts. -->

<!-- SPEAKING -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Linda가 Jake의 아이디어를 어떻게 칭찬할 수 있을까요?

## --answers--

`That's an excellent suggestion.`

### --audio-id--

EN02a86d00

---

`Are you sure that would work?`

### --audio-id--

EN13416258

### --feedback--

이 답변은 의심스러운 어조로, 지지하는 느낌이 아닙니다.

## --video-solution--

1

# --explanation--

`That's an excellent suggestion`는 누군가의 아이디어에 대해 강한 동의와 찬성을 표현하며 정중하고 긍정적으로 칭찬하는 방법입니다. 예를 들어:

- **그래픽 디자이너:** `Let's add more visuals to the report.` – 이 사람은 보고서를 더 생생하게 만들기 위해 그래픽과 이미지를 더 많이 포함하자고 제안합니다.

- **프로젝트 매니저:** `That's an excellent suggestion.` – 이 표현은 아이디어가 매우 좋고 도움이 된다고 생각한다는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_24-2.mp3",
      "startTime": 1,
      "startTimestamp": 74.74,
      "finishTimestamp": 82.58
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 3.06,
      "dialogue": {
        "text": "We could incorporate an interactive quiz",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "startTime": 3.06,
      "finishTime": 4.3,
      "dialogue": {
        "text": "during the onboarding process.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "startTime": 4.6,
      "finishTime": 6.36,
      "dialogue": {
        "text": "It could teach users how to recognize",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "startTime": 6.36,
      "finishTime": 8.84,
      "dialogue": {
        "text": "and handle potential phishing attempts.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 9.34
    }
  ]
}
```
