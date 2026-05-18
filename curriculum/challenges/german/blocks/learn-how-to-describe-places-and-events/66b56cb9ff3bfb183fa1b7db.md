---
id: 66b56cb9ff3bfb183fa1b7db
title: Aufgabe 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) Anna: When do you think this new module will be ready? -->

# --instructions--

Hören Sie sich die Audioaufnahme an, um den Satz unten zu vervollständigen.

# --fillInTheBlank--

## --sentence--

`When do you think BLANK BLANK BLANK will be ready?`

## --blanks--

`this`

### --feedback--

Dieses Wort wird verwendet, um das Modul zu benennen, über das gerade gesprochen wird.

---

`new`

### --feedback--

Etwas Aktuelles.

---

`module`

### --feedback--

Ein bestimmter Teil oder Abschnitt des Trainingsprogramms.

# --explanation--

`Module` bezeichnet eine Einheit oder einen Abschnitt eines Kurses oder Trainingsprogramms. Zum Beispiel:

- `The new module on cybersecurity will be added next week.` – Hier bezieht sich `module` auf einen bestimmten Teil des Trainings, der sich auf Cybersicherheit konzentriert.

Achten Sie darauf, wie die Wörter `this`, `new` und `module` verwendet werden. `This` wird genutzt, um das Modul zu spezifizieren, über das gesprochen wird, `new` zeigt, dass es sich um eine aktuelle Ergänzung handelt, und `module` bezieht sich auf einen Abschnitt des Trainings.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-2.mp3",
      "startTime": 1,
      "startTimestamp": 47.12,
      "finishTimestamp": 48.96
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 2.84,
      "dialogue": {
        "text": "When do you think this new module will be ready?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 3.34
    }
  ]
}
```
