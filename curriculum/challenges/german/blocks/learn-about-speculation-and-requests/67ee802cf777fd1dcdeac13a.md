---
id: 67ee802cf777fd1dcdeac13a
title: Aufgabe 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (audio) Sophie: No problem. You should also remember to use comments in your code. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Welche Anforderung erwähnt Sophie?

## --answers--

Mark sollte unnötige Codezeilen löschen.

### --feedback--

Sophie spricht nicht davon, Code zu löschen.

---

Mark sollte seinen Code komplett neu schreiben.

### --feedback--

Sophie schlägt nicht vor, den gesamten Code neu zu schreiben.

---

Mark sollte vermeiden, Schleifen zu verwenden.

### --feedback--

Sophie sagt nichts darüber, Schleifen zu vermeiden.

---

Mark sollte Notizen in seinem Code verwenden.

## --video-solution--

4

# --explanation--

Ein `comment` ist eine Notiz im Code, die erklärt, was der Code macht. Zum Beispiel:

- `I added a comment to explain why this loop is necessary.` – Sie haben einen Kommentar geschrieben, um zu beschreiben, warum eine bestimmte Schleife verwendet wird.

- `You can use comments to leave notes about issues that need fixing later.` – Kommentare können im Code als Erinnerungen für Dinge hinzugefügt werden, die noch behoben oder verbessert werden müssen.

Kommentare helfen anderen, den Code zu verstehen, und erinnern Sie an wichtige Details, wenn Sie Ihren Code später überprüfen.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 25.54,
      "finishTimestamp": 28.48
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.02,
      "dialogue": {
        "text": "No problem. You should also remember to use comments in your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.52
    }
  ]
}
```
