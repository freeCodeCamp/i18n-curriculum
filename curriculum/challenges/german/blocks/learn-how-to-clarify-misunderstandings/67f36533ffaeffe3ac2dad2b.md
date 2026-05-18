---
id: 67f36533ffaeffe3ac2dad2b
title: Aufgabe 131
challengeType: 19
dashedName: task-131
lang: en-US
---

<!-- (Audio) Jessica: Oh, that might be a mix-up. The budget tracking feature is planned for the next update, not this one. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was erklärt Jessica?

## --answers--

Es gab ein Problem mit dem Zeitplan des aktuellen Updates.

### --feedback--

Jessica spricht über den Zeitpunkt der Funktion, nicht über den Zeitplan des Updates selbst.

---

Die Budget-Tracking-Funktion wird im nächsten Update enthalten sein, nicht im aktuellen.

---

Die Budget-Tracking-Funktion wurde aus dem aktuellen Update entfernt.

### --feedback--

Jessica erwähnt nicht, dass die Funktion entfernt wurde.

---

Die Funktion wurde versehentlich in dieses Update aufgenommen.

### --feedback--

Jessica sagt nicht, dass die Funktion versehentlich aufgenommen wurde.

## --video-solution--

2

# --explanation--

Jessica sagt, `The budget tracking feature is planned for the next update`, und erklärt, dass die Funktion nicht im aktuellen Update enthalten ist, sondern im nächsten hinzugefügt wird.

Das klärt die Verwirrung über den Zeitpunkt der Funktion.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-3.mp3",
      "startTime": 1,
      "startTimestamp": 60.98,
      "finishTimestamp": 65.76
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 2.32,
      "dialogue": {
        "text": "Oh, that might be a mix-up.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.58,
      "finishTime": 5.78,
      "dialogue": {
        "text": "The budget tracking feature is planned for the next update, not this one.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 6.28
    }
  ]
}
```
