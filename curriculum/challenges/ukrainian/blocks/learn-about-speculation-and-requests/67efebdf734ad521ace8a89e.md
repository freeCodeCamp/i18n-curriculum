---
id: 67efebdf734ad521ace8a89e
title: Завдання 57
challengeType: 22
dashedName: task-57
lang: en-US
---

<!-- (audio) Jake: Sure, Jessica. It could be an unpatched vulnerability. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Sure, Jessica. It could be an BLANK.`

## --blanks--

`unpatched vulnerability`

### --feedback--

Ця двослівна фраза означає вразливість у системі, для якої відсутнє виправлення або оновлення, і яку можна використати.

# --explanation--

`Unpatched` означає, що щось не було оновлено або виправлено.

`Vulnerability` позначає слабке місце в системі, яке можна використати.

Разом `unpatched vulnerability` — це вразливість без виправлення або оновлення. Хакери можуть використовувати такі слабкі місця для атаки на систему. Наприклад:

`We need to fix the unpatched vulnerability now.` — команда знає про проблему безпеки, але її ще не виправили.

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
      "filename": "B1_17-2.mp3",
      "startTime": 1,
      "startTimestamp": 6.72,
      "finishTimestamp": 10.1
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
      "finishTime": 4.38,
      "dialogue": {
        "text": "Sure, Jessica. It could be an unpatched vulnerability.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4.88
    }
  ]
}
```
