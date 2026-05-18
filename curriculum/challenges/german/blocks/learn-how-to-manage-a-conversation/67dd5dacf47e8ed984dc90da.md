---
id: 67dd5dacf47e8ed984dc90da
title: Aufgabe 17
challengeType: 19
dashedName: task-17
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

<!-- SPEAKING -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Wie könnte Alice kurz antworten, dass es momentan keine Entscheidung bezüglich der Frist gibt?

## --answers--

`Not yet.`

### --audio-id--

EN6acf22f8

---

`We're still looking for it.`

### --audio-id--

EN391abad4

### --feedback--

Das steht nicht im Zusammenhang mit der Frage zur Festlegung der Frist.

## --video-solution--

1

# --explanation--

`Not yet` ist eine kurze und natürliche Art zu sagen, dass etwas bis zum jetzigen Zeitpunkt nicht passiert oder abgeschlossen ist, aber in der Zukunft passieren kann. Zum Beispiel:

- **Manager:** `Have you sent the email?` – Hier fragt die Person nach einer E-Mail, die gesendet werden sollte.

- **Mitarbeiter:** `Not yet.` – Das bedeutet, die E-Mail wurde noch nicht gesendet, aber die Person plant es noch.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
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
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.36,
      "finishTimestamp": 20.64
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
      "finishTime": 4.28,
      "dialogue": {
        "text": "By the way, did we decide on the deadline for the first phase?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.78
    }
  ]
}
```
