---
id: 65dabf5eb13aae9ff91c40a2
title: 작업 108
challengeType: 22
dashedName: task-108
lang: en-US
---

<!-- (Audio) Sophie: And you don't have to search for expensive solutions for that. -->

# --description--

`search for`라는 표현은 무언가를 찾거나 탐색을 통해 무언가를 발견하려고 하는 것을 의미합니다. 예를 들어, `I need to search for my lost keys`는 열쇠를 찾는 것을 뜻합니다.

`expensive`라는 단어는 많은 돈이 드는 것을 설명합니다. 예를 들어, `That car is too expensive for me`는 차가 많은 비용이 든다는 뜻입니다.

`solution`는 문제에 대한 답변이나 문제를 해결하는 방법입니다.

`Doesn't/don't have to`는 어떤 일을 할 필요나 요구가 없음을 표현할 때 사용합니다.

# --fillInTheBlank--

## --sentence--

`And you don't have to BLANK BLANK BLANK BLANK for that.`

## --blanks--

`search`

### --feedback--

이 단어는 무언가를 주의 깊게 찾는다는 뜻입니다.

---

`for`

### --feedback--

이 전치사는 `search`와 함께 사용되어 무엇을 찾으려 하는지 나타냅니다.

---

`expensive`

### --feedback--

이 단어는 많은 돈이 드는 것을 설명합니다.

---

`solutions`

### --feedback--

이것들은 문제를 해결하는 답변이나 방법들입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-5.mp3",
      "startTime": 1,
      "startTimestamp": 32.52,
      "finishTimestamp": 35.22
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
      "finishTime": 3.70,
      "dialogue": {
        "text": "And you don't have to search for expensive solutions for that.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.20
    }
  ]
}
```
