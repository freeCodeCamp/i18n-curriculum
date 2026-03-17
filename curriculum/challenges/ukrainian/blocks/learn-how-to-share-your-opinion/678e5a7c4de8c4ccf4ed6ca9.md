---
id: 678e5a7c4de8c4ccf4ed6ca9
title: Завдання 66
challengeType: 22
dashedName: task-66
lang: en-US
---

<!-- (audio) Jake: Okay, let's agree to disagree. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Okay, let's BLANK to BLANK.`

## --blanks--

`agree`

### --feedback--

Це слово означає мати однакову думку або досягти взаєморозуміння.

---

`disagree`

### --feedback--

Це слово означає мати іншу думку або не погоджуватися.

# --explanation--

`Agree` означає погоджуватися або мати однакову думку з кимось. Наприклад:  

`We both agree that improving security is important.` - Це означає, що ви поділяєте ту саму думку про безпеку з іншою людиною.

`Disagree` означає мати іншу думку або не погоджуватися. Наприклад:  

`Jake and Maria disagree on which software to use.` - Це показує, що Джейк і Марія мають різні думки щодо вибору програмного забезпечення.

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
