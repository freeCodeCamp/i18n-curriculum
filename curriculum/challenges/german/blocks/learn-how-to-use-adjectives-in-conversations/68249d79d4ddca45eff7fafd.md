---
id: 68249d79d4ddca45eff7fafd
title: Aufgabe 144
challengeType: 19
dashedName: task-144
lang: en-US
---

<!-- (Audio) Jessica: Fantastic, James. I'll put all this information into a report and talk about it with the team tomorrow. This feedback should help us know what to do next. -->

# --instructions--

Hören Sie sich das Audio an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was plant Jessica mit den Informationen zu tun?

## --answers--

Ignorieren Sie sie vorerst und warten Sie auf weiteres Feedback.

### --feedback--

Jessica sagt, sie wird die Informationen organisieren und teilen, nicht ignorieren.

---

Organisieren Sie sie in einem Bericht und besprechen Sie sie mit anderen.

---

Bitten Sie die Nutzer, es vor Änderungen erneut zu testen.

### --feedback--

Sie erwähnt nichts von erneutem Testen oder Nutzerfeedback.

---

Senden Sie es direkt an den Client ohne Überprüfung.

### --feedback--

Jessica plant, zuerst mit ihrem Team zu sprechen, nicht es direkt an einen Client zu senden.

## --video-solution--

2

# --explanation--

Jessica sagt, sie wird `put all this information into a report` und `talk about it with the team tomorrow`. Das zeigt, dass sie die Details organisieren und mit ihrem Team besprechen will.

Sie sagt auch, dass das Feedback `should help` ist, was bedeutet, dass es ihre nächsten Schritte leiten wird.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_19-3.mp3",
      "startTime": 1,
      "startTimestamp": 86.16,
      "finishTimestamp": 93.52
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
      "finishTime": 6.0,
      "dialogue": {
        "text": "Fantastic, James. I'll put all this information into a report and talk about it with the team tomorrow.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 6.26,
      "finishTime": 7.86,
      "dialogue": {
        "text": "This feedback should help us know what to do next.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 8.86
    }
  ]
}
```
