---
id: 67caefd11f4cf72cbf5bdd46
title: 작업 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (audio) Jake: Not really. SafeGuard is more focused on security, so it might not integrate as easily with other platforms. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`BLANK. SafeGuard is more focused on security, so it might not integrate as easily with other platforms.`

## --blanks--

`Not really`

### --feedback--

이 두 단어 구문은 "아니요" 또는 "정확히는 아니에요"를 캐주얼하게 표현하는 방법입니다. 정중하게 반대하거나 부드럽고 직접적이지 않은 응답을 할 때 자주 사용합니다. 첫 단어의 첫 글자는 대문자입니다.

# --explanation--

`Not really`는 부정적인 답변을 줄 때 흔히 쓰이지만, 더 부드러운 어조입니다. 단순히 `No`라고 말하는 것보다 더 캐주얼합니다. 예를 들어:

- **팀장:** `Do you think this software is user-friendly?`

- **인턴:** `Not really.` - 이것은 사용자 친화적이지 않다는 뜻이지만, 말하는 사람이 완전히 확신하지는 않을 수도 있습니다.

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
      "filename": "B1_13-1.mp3",
      "startTime": 1,
      "startTimestamp": 56.88,
      "finishTimestamp": 62.58
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
      "finishTime": 6.7,
      "dialogue": {
        "text": "Not really. Safeguard is more focused on security, so it might not integrate as easily with other platforms.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 7.2
    }
  ]
}
```
