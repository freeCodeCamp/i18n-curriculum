---
id: 678e5a7c4de8c4ccf4ed6ca9
title: Aufgabe 66
challengeType: 22
dashedName: task-66
lang: en-US
---

<!-- (audio) Jake: Okay, let's agree to disagree. -->

# --instructions--

Hören Sie sich die Audiodatei an und vervollständigen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`Okay, let's BLANK to BLANK.`

## --blanks--

`agree`

### --feedback--

Dieses Wort bedeutet, dieselbe Meinung zu haben oder zu einer gegenseitigen Übereinkunft zu gelangen.

---

`disagree`

### --feedback--

Dieses Wort bedeutet, eine andere Meinung zu haben oder nicht übereinzustimmen.

# --explanation--

`Agree` bedeutet, einer Meinung zu sein oder dieselbe Meinung wie jemand anderes zu haben. Zum Beispiel:  

`We both agree that improving security is important.` – Das bedeutet, dass Sie dieselbe Meinung über Sicherheit mit der anderen Person teilen.

`Disagree` bedeutet, eine andere Meinung zu haben oder nicht übereinzustimmen. Zum Beispiel:  

`Jake and Maria disagree on which software to use.` – Das zeigt, dass Jake und Maria unterschiedliche Meinungen zur Softwareauswahl haben.

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
