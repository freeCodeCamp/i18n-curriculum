---
id: 67dd5cfeacc0cad2fc967438
title: Aufgabe 16
challengeType: 19
dashedName: task-16
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was möchte James wissen?

## --answers--

Ob sie sich auf die Frist für die erste Phase geeinigt haben.

---

Ob das Projekt abgesagt wurde.

### --feedback--

James erwähnt nicht, dass das Projekt abgesagt wurde.

---

Ob Alice für die erste Phase verantwortlich ist.

### --feedback--

James fragt nicht nach Zuständigkeiten.

---

Ob das Team die letzte Phase abgeschlossen hat.

### --feedback--

James spricht nicht über die letzte Phase.

## --video-solution--

1

# --explanation--

`By the way` wird verwendet, um ein neues, aber verwandtes Thema in das Gespräch einzuführen. Es bringt oft etwas zur Sprache, an das der Sprecher gerade gedacht hat oder das er überprüfen möchte. Zum Beispiel:

`By the way, have you seen the updated report?` – Dies leitet eine neue Frage ein, die mit dem bereits Besprochenen zusammenhängt.

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
