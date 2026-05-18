---
id: 67d81e8afbcfb390dd7fc1e0
title: Aufgabe 133
challengeType: 19
dashedName: task-133
lang: en-US
---

<!-- (audio) Lisa: Have you checked which files were compromised? -->

<!-- SPEAKING -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Jake hat das noch nicht überprüft und sagt, das Team sollte sich auf etwas anderes konzentrieren. Was würde er sagen?  

## --answers--

`Not yet, but we should focus on the critical systems first.`

### --audio-id--

ENcd1493b2

---

`I already checked, and everything looks fine.`

### --audio-id--

EN4ec0b91b

### --feedback--

Jake hat noch nicht überprüft, daher könnte er das nicht bestätigen.

## --video-solution--

1

# --explanation--

Die Sicherung kritischer Systeme hat normalerweise die höchste Priorität, bevor einzelne Dateien bewertet werden.

`Not yet.` bedeutet, dass Jake nicht überprüft hat, welche Dateien kompromittiert wurden.

`We should focus on the critical systems first.` bedeutet, dass das Team statt der Dateien den Schutz wesentlicher Teile des Systems priorisieren sollte.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 37.82,
      "finishTimestamp": 39.88
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 3.06,
      "dialogue": {
        "text": "Have you checked which files were compromised?",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
