---
id: 67cadf5ea48ca37df972fac6
title: Aufgabe 124
challengeType: 19
dashedName: task-124
lang: en-US
---

<!-- (Audio) Maria: First, they really need more support. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.  

# --questions--

## --text--

Was nennt Maria als die wichtigste Anfrage des Teams?  

## --answers--

Sie brauchen mehr Unterstützung.  

---

Sie möchten eine längere Frist.  

### --feedback--

Maria erwähnt nicht, die Frist zu verlängern.

---

Sie möchten die Anzahl der Aufgaben reduzieren.

### --feedback--

Maria erwähnt nicht, die Anzahl der Aufgaben zu reduzieren.  

---

Sie bitten um mehr Meetings.  

### --feedback--

Maria erwähnt keine zusätzlichen Meetings.

## --video-solution--

1  

# --explanation--

`First` wird verwendet, wenn Sie Aktionen nach Wichtigkeit oder zeitlicher Reihenfolge nummerieren möchten. In diesem Fall listet Maria auf, was das Team braucht, beginnend mit der scheinbar wichtigsten Anfrage (mehr Unterstützung zu erhalten). Ein weiteres Beispiel:

`First, we should analyze the problem. Then, we can discuss solutions.` – Das bedeutet, dass die Analyse des Problems vor allem anderen kommt.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 25.26,
      "finishTimestamp": 26.92
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
      "finishTime": 2.66,
      "dialogue": {
        "text": "First, they really need more support.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.16
    }
  ]
}
```
