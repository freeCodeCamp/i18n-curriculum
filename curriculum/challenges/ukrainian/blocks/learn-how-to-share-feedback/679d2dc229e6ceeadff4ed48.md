---
id: 679d2dc229e6ceeadff4ed48
title: Завдання 92
challengeType: 22
dashedName: task-92
lang: en-US
---

<!-- (Audio) James: Do you think we need to update the software again? If we do, it might delay other projects. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Do you think we need to update the software again? If we BLANK, it might BLANK other projects.`

## --blanks--

`do`

### --feedback--

Це слово використовується, щоб уникнути повторення дієслова `update` з попереднього речення.

---

`delay`

### --feedback--

Це слово означає відкласти або зробити так, щоб щось відбулося пізніше, ніж планувалося.

# --explanation--

Замість того, щоб казати `If we update the software, it might delay other projects.`, Джеймс скорочує це до `If we do`. Слово `do` часто використовується, щоб уникнути повторення дієслова або повної фрази з попереднього речення. Наприклад:

`She wants to join the meeting, and if she does, she'll need the link.` — замість того, щоб казати `if she joins the meeting`, ви можете використати `does`, щоб замінити це і таким чином уникнути повторення.

`To delay` означає зробити так, щоб щось відбулося пізніше, ніж планувалося. Наприклад:

`The flight was delayed due to bad weather.` — це означає, що рейс було відкладено і він не вилетів вчасно.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 26.86,
      "finishTimestamp": 31.46
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.88,
      "dialogue": {
        "text": "Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "startTime": 3.16,
      "finishTime": 5.6,
      "dialogue": {
        "text": "If we do, it might delay other projects.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 6.1
    }
  ]
}
```
