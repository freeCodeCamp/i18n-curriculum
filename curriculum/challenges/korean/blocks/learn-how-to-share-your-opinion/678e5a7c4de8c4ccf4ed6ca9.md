---
id: 678e5a7c4de8c4ccf4ed6ca9
title: 작업 66
challengeType: 22
dashedName: task-66
lang: en-US
---

<!-- (audio) Jake: Okay, let's agree to disagree. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Okay, let's BLANK to BLANK.`

## --blanks--

`agree`

### --feedback--

이 단어는 같은 의견을 갖거나 상호 이해에 도달하는 것을 의미합니다.

---

`disagree`

### --feedback--

이 단어는 다른 의견을 갖거나 동의하지 않는 것을 의미합니다.

# --explanation--

`Agree`는 동의하거나 누군가와 같은 의견을 갖는 것을 의미합니다. 예를 들어:  

`We both agree that improving security is important.` - 이것은 다른 사람과 보안에 대해 같은 의견을 공유한다는 뜻입니다.

`Disagree`는 다른 의견을 갖거나 동의하지 않는 것을 의미합니다. 예를 들어:  

`Jake and Maria disagree on which software to use.` - 이것은 Jake와 Maria가 소프트웨어 선택에 대해 다른 의견을 갖고 있음을 보여줍니다.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_9-2.mp3",
      "startTime": 1,
      "startTimestamp": 56.0,
      "finishTimestamp": 58.28
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
      "finishTime": 3.28,
      "dialogue": {
        "text": "Okay, let's agree to disagree.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 3.78
    }
  ]
}
```
