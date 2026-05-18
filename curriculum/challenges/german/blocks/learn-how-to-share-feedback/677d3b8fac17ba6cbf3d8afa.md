---
id: 677d3b8fac17ba6cbf3d8afa
title: Aufgabe 3
challengeType: 22
dashedName: task-3
lang: en-US
---

<!-- (Audio) Bob: I want to start by saying that you've done a great job with your QA work. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`I want to start by BLANK that you've done a great job with your BLANK work.`

## --blanks--

`saying`

### --feedback--

Dies ist die `-ing`-Form des Verbs `say`, die nach der Präposition `by` verwendet wird, um die Methode des Beginnens anzugeben.

---

`QA`

### --feedback--

Dies steht für `Quality Assurance` und bezieht sich auf den Prozess, bei dem sichergestellt wird, dass Produkte die erforderlichen Standards erfüllen.

# --explanation--

Wenn einem Verb eine Präposition folgt, muss es die `-ing`-Form (Gerundium) annehmen. In diesem Satz folgt `saying` der Präposition `by` und zeigt die Methode, mit der Bob seine Aussage beginnt. Zum Beispiel:

`She improved her skills by practicing regularly.` – Hier folgt `practicing` der Präposition `by` und zeigt, wie sie ihre Fähigkeiten verbessert hat.

Bob lobt Jessica für ihre Arbeit im Bereich `QA`. `QA` steht für `Quality Assurance`. Es bezeichnet den Prozess, bei dem sichergestellt wird, dass Produkte oder Dienstleistungen bestimmte Qualitätsstandards erfüllen und korrekt funktionieren. Ein weiteres Beispiel:

`The QA team identified several bugs during testing.` – Das bedeutet, dass die Verantwortlichen, die für die Qualität der Software zuständig sind, es geschafft haben, Bugs in der Software vor der Veröffentlichung zu erkennen.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-1.mp3",
      "startTime": 1,
      "startTimestamp": 3.3,
      "finishTimestamp": 6.7
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
      "finishTime": 4.4,
      "dialogue": {
        "text": "I want to start by saying that you've done a great job with your QA work.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
