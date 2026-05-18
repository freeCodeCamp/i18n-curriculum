---
id: 66c8fb021dcfcb767dfec33a
title: Aufgabe 16
challengeType: 19
dashedName: task-16
lang: en-US
---
<!-- (Audio) Linda: No, we haven't. But we've solved similar issues on other projects. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Welche Aussage unten ist richtig?

## --answers--

Sie haben noch nie Probleme wie dieses behoben.

### --feedback--

Überlegen Sie, ob Linda irgendeine Erfahrung mit ähnlichen Problemen erwähnt.

---

Sie haben dieses genaue Problem bereits in einem anderen Projekt behoben.

### --feedback--

Überlegen Sie, ob Linda sagt, dass sie Erfahrung mit genau diesem Problem oder mit etwas Ähnlichem haben.

---

Sie haben dieses genaue Problem nicht behoben, aber ähnliche schon.

---

Sie haben dieses Problem schon oft behoben.

### --feedback--

Überlegen Sie, ob Linda davon spricht, genau dieses Problem oder etwas Ähnliches behoben zu haben.
  
## --video-solution--

3

# --explanation--

Um die richtige Antwort zu finden, konzentrieren Sie sich darauf, ob Linda davon spricht, das `exact issue` oder `similar issues` behoben zu haben.

Linda macht deutlich, dass sie dieses genaue Problem noch nicht behoben haben, aber sie erwähnt auch, dass sie ähnliche Probleme in der Vergangenheit gelöst haben.

Die richtige Antwort sollte dieses Gleichgewicht zeigen – kein exaktes Beispiel, aber Bestätigung von Erfahrung mit verwandten Problemen.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.02,
      "finishTimestamp": 20.16
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 1.86,
      "dialogue": {
        "text": "No, we haven't,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 1.9,
      "finishTime": 4.14,
      "dialogue": {
        "text": "but we've solved similar issues on other projects.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 4.64
    }
  ]
}
```
