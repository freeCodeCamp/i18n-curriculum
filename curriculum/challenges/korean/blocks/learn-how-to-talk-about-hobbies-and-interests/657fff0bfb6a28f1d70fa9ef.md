---
id: 657fff0bfb6a28f1d70fa9ef
title: 도전 과제 80
challengeType: 22
dashedName: task-80
lang: en-US
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

`I appreciate it, but...`는 제안을 고마워하면서도 정중하게 거절하거나 개인적인 한계나 선호를 표현할 때 사용합니다.

예를 들어, 친구가 코딩 도전 과제를 도와주겠다고 제안했는데, 고마우면서도 먼저 혼자 해보고 싶다면 `I appreciate it, but I want to give it a shot by myself first`라고 말할 수 있습니다.

# --fillInTheBlank--

## --sentence--

`Thanks for the invite, Sarah. I BLANK it, BLANK I'm not really into sci-fi.`

## --blanks--

`appreciate`

### --feedback--

이 단어는 감사나 고마움을 표현할 때 자주 사용합니다.

---

`but`

### --feedback--

이 단어는 이미 언급한 내용과 대조되는 구나 절을 도입할 때 사용합니다.

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
