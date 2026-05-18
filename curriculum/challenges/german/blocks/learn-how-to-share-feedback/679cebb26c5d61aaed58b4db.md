---
id: 679cebb26c5d61aaed58b4db
title: Aufgabe 79
challengeType: 19
dashedName: task-79
lang: en-US
---

<!-- (Audio) Maria: Did you hear anything about this? James: No, I didn't. What did he say? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was weiß James über das Problem mit dem neuesten Update?

## --answers--

Er weiß genau, worin das Problem besteht.

### --feedback--

James sagt deutlich, dass er nichts gehört hat.

---

Er weiß nichts darüber.

---

Er hat bereits mit dem Client gesprochen.

### --feedback--

James erwähnt nicht, mit dem Client gesprochen zu haben.

---

Er hat eine E-Mail über das Problem erhalten.

### --feedback--

James sagt, dass er nichts gehört hat.

## --video-solution--

2

# --explanation--

Kurze Antworten mit Hilfsverben wiederholen das Hilfsverb aus der Frage, um etwas zu bestätigen oder zu verneinen. In diesem Fall fragt Maria `Did you hear anything?` und James antwortet `No, I didn't.` anstatt nur `No.` zu sagen. Hier sind einige weitere Beispiele:

- `Are you coming to the meeting?` → `Yes, I am.`

- `Have they finished the report?` → `No, they haven't.`

- `Will she be here on time?` → `Yes, she will.`

Kurze Antworten lassen Antworten natürlich und vollständig klingen, während sie die Wiederholung des ganzen Satzes vermeiden.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      },
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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 5.62,
      "finishTimestamp": 9.24
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 2.32,
      "dialogue": {
        "text": "Did you hear anything about this?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 2.49
    },
    {
      "character": "James",
      "opacity": 1,
      "startTime": 2.49
    },
    {
      "character": "James",
      "startTime": 2.66,
      "finishTime": 4.62,
      "dialogue": {
        "text": "No, I didn't. What did he say?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 5.12
    }
  ]
}
```
