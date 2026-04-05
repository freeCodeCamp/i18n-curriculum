---
id: 67f0ee4cc8f7fe5fd534eff4
title: 작업 87
challengeType: 22
dashedName: task-87
lang: en-US
---

<!-- (Audio) Mark: Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Yeah, that BLANK. Thanks for your help, Lisa. I BLANK it.`

## --blanks--

`sounds good`

### --feedback--

이 두 단어 구문은 아이디어나 제안에 동의하거나 찬성할 때 사용합니다. 첫 번째 단어는 `-s`로 끝납니다.

---

`appreciate`

### --feedback--

이 단어는 무언가에 대해 감사함을 나타냅니다. 도움, 지원, 또는 누군가가 해준 일에 대한 고마움을 표현합니다.

# --explanation--

`Sounds good`는 화자가 말한 내용에 동의하거나 찬성함을 의미합니다. 예를 들어:

`Your idea sounds good.` – 이는 화자가 그 아이디어가 좋다고 생각하며 동의한다는 뜻입니다.

`I appreciate`는 감사함을 표현하는 방법입니다. 예를 들어:

`I appreciate your help with the project.` – 이는 받은 도움에 대해 고마워한다는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 65.9,
      "finishTimestamp": 69.1
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 4.2,
      "dialogue": {
        "text": "Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it.",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
