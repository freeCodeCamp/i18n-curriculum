---
id: 679d26afcebc4ea8a9478fbf
title: Aufgabe 91
challengeType: 19
dashedName: task-91
lang: en-US
---

<!-- (Audio) James: Absolutely. Do you think we need to update the software again? -->

# --instructions--

Hören Sie sich das Audio an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Ist James sicher, dass sie die Software aktualisieren müssen?

## --answers--

Nicht wirklich, da er nach Marias Meinung fragt.

---

Ja, er hat bereits entschieden, sie zu aktualisieren.

### --feedback--

James fragt Maria danach, also hat er wahrscheinlich noch keine Entscheidung getroffen.

---

Ja, er hat bereits begonnen, die Software zu aktualisieren.

### --feedback--

James fragt, ob sie die Software aktualisieren sollten oder nicht.

---

Im Gegenteil, er ist sicher, dass sie die Software nicht aktualisieren sollten.

### --feedback--

James lehnt die Idee nicht grundsätzlich ab; er bittet tatsächlich um Marias Meinung zu dem Thema.

## --video-solution--

1

# --explanation--

`To update` bedeutet, Software zu verändern oder zu verbessern, indem eine neue Version veröffentlicht wird. Updates können Bugfixes, neue Funktionen oder Leistungsverbesserungen enthalten. Zum Beispiel:

`The company released an update to fix security vulnerabilities in the app.` – Das bedeutet, dass eine neue Version veröffentlicht wurde, um Sicherheitsprobleme zu beheben.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 25.8,
      "finishTimestamp": 28.74
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
      "finishTime": 4.34,
      "dialogue": {
        "text": "Absolutely. Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.84
    }
  ]
}
```
