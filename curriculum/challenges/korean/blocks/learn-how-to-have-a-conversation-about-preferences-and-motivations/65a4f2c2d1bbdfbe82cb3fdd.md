---
id: 65a4f2c2d1bbdfbe82cb3fdd
title: 작업 94
challengeType: 22
dashedName: task-94
lang: en-US
---

<!-- (Audio) Bob: Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets! -->

# --description--

`gadget`는 특정 기능을 수행하거나 무언가를 더 쉽게 만드는 작고 똑똑하거나 새롭고 독창적인 도구나 장치를 말합니다.

기술 분야에서 가젯은 스마트폰, 스마트워치 또는 멋지고 혁신적인 전자 기기 같은 것을 포함할 수 있습니다.

예를 들어, `My new fitness tracker gadget helps me keep track of my steps and exercise.`

# --fillInTheBlank--

## --sentence--

`Hey, Sarah, do you know what really BLANK me excited about tech? It's all BLANK amazing BLANK!`

## --blanks--

`gets`

### --feedback--

이 단어는 어떤 감정이나 반응을 일으키는 것을 의미합니다. 여기서는 Bob이 기술에 대해 무엇에 흥분하는지를 말할 때 사용되었습니다. 3인칭 단수로 활용되었습니다.

---

`those`

### --feedback--

이 단어는 특정한 대상을 가리킬 때 사용되며, 여기서는 가젯들을 지칭합니다. `that`의 복수형입니다.

---

`gadgets`

### --feedback--

이 단어는 작고 유용하거나 흥미로운 전자 기기나 도구를 가리킵니다. 멋진 기술 아이템을 말할 때 자주 사용됩니다. 복수형입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 6.08
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 7.08,
      "dialogue": {
        "text": "Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.58
    }
  ]
}
```
