---
id: 6629ce6bffd1efa9c6c57eaa
title: 작업 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Brian: Hey, Sophie. How's it going? -->

# --description--

구문 `how's it going?`은 누군가의 안부나 근황을 묻는 흔한 표현입니다. 주로 친근한 인사말로 사용됩니다.

예를 들어, 오랜 친구를 만나면 `Hey, how's it going? I haven't seen you for a while!`라고 말할 수 있습니다. 이는 그들의 삶에 대해 편하게 묻는 방법입니다. 만약 새 직장 같은 특정한 일에 대해 묻고 싶다면 `How's it going with your new job?`라고 말할 수 있습니다.

# --fillInTheBlank--

## --sentence--

`Hey, Sophie. BLANK it BLANK?`

## --blanks--

`How's`

### --feedback--

이 축약형은 비공식적인 인사말에서 자주 사용됩니다. 첫 단어는 대문자로 시작하세요.

---

`going`

### --feedback--

이 단어는 누군가의 전반적인 상태를 묻는 흔한 비공식 인사말을 완성합니다.

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
      "filename": "5.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.08
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
      "finishTime": 3.08,
      "dialogue": {
        "text": "Hey, Sophie. How's it going?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
