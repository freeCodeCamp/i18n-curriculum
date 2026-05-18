---
id: 67cafac07dc081eefb4d7adb
title: Aufgabe 135
challengeType: 19
dashedName: task-135
lang: en-US
---

<!-- (Audio) Bob: That makes sense. Could you set up a weekly meeting to discuss progress and keep everyone in the loop? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.  

# --questions--

## --text--

Was ist das Ziel von wöchentlichen Meetings?

## --answers--

Um die Anzahl der Aufgaben im Team zu reduzieren.

### --feedback--

Bob erwähnt nicht, dass die Aufgaben reduziert werden sollen.  

---

Um zu vermeiden, Änderungen am Projekt vorzunehmen.

### --feedback--

Bob schlägt nicht vor, Änderungen zu vermeiden.

---

Um die Anzahl der Meetings ohne klares Ziel zu erhöhen.

### --feedback--

Bob verfolgt ein konkretes Ziel und erwähnt es.

---

Um sicherzustellen, dass alle über das Projekt auf dem Laufenden bleiben.

## --video-solution--

4  

# --explanation--

`To keep someone in the loop` bedeutet, sie über wichtige Updates und Entscheidungen informiert zu halten. Zum Beispiel:

`Please keep me in the loop about any changes to the schedule.` – Das bedeutet, der Sprecher möchte informiert werden, falls sich etwas ändert.

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
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 43.3,
      "finishTimestamp": 48.18
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
      "finishTime": 3.26,
      "dialogue": {
        "text": "That makes sense. Could you set up a weekly meeting",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 3.26,
      "finishTime": 5.88,
      "dialogue": {
        "text": "to discuss progress and keep everyone in the loop?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 6.38
    }
  ]
}
```
