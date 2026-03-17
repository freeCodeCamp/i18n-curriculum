---
id: 67d7dcfb9afa344d0e95fa4f
title: Attività 122
challengeType: 22
dashedName: task-122
lang: en-US
---

<!-- (Audio) Sarah: However, outsourcing can lead to communication issues, which might delay the project. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`However, outsourcing can BLANK communication issues, which might BLANK the project.`

## --blanks--

`lead to`

### --feedback--

Questa frase di due parole significa causare o far succedere qualcosa.

---

`delay`

### --feedback--

Significa far durare qualcosa più a lungo del previsto.

# --explanation--

`Lead to` significa causare che qualcosa accada o portare a un certo risultato. Per esempio:

`Poor planning can lead to missed deadlines.` – Questo significa che se la pianificazione non è fatta bene, le scadenze potrebbero non essere rispettate.

`Delay` significa far durare qualcosa più a lungo del previsto o rimandarlo. Per esempio:

`The software release was delayed due to unexpected bugs.` – Questo significa che il lancio è stato posticipato a causa di problemi tecnici.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 46.98,
      "finishTimestamp": 51.34
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
      "finishTime": 5.36,
      "dialogue": {
        "text": "However, outsourcing can lead to communication issues which might delay the project.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.86
    }
  ]
}
```
