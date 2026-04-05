---
id: 65ffa9d80e7ffb1ab9b4df1c
title: 작업 11
challengeType: 22
dashedName: task-11
lang: en-US
---

<!-- (Audio) Sarah: Once you've found the section you need, you should start by reading the introductory paragraphs to get an overview of what the documentation covers. -->

# --description--

오디오를 듣고 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`BLANK you've BLANK the section you need, you should start by reading the BLANK paragraphs to get an overview of what the documentation BLANK.`

## --blanks--

`Once`

### --feedback--

이 단어는 섹션을 찾자마자 다음 행동이 일어난다는 것을 나타냅니다. 이 단어는 대문자로 시작하세요.

---

`found`

### --feedback--

여기서는 문서에서 필요한 섹션을 찾거나 발견한다는 의미로 사용되었습니다.

---

`introductory`

### --feedback--

이 단어는 섹션의 기본적인 이해를 제공하는 시작 단락들을 가리킵니다.

---

`covers`

### --feedback--

문서가 어떤 내용을 포함하거나 다루는지를 의미합니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "7.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.68,
      "finishTimestamp": 27.82
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 8.14,
      "dialogue": {
        "text": "Once you've found the section you need, you should start by reading the introductory paragraphs to get an overview of what the documentation covers.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 8.64
    }
  ]
}
```
