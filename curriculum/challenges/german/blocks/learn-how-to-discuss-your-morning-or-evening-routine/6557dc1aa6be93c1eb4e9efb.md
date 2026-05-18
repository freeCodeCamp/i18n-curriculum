---
id: 6557dc1aa6be93c1eb4e9efb
title: Aufgabe 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (Audio) Sarah: Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team. -->

# --description--

Das Wort `if` bedeutet „ob oder nicht“. Zum Beispiel:

`She checks her emails to see if there are any urgent updates.` – Das bedeutet, sie möchte herausfinden, ob Updates vorliegen.

`If` kann auch Teil einer Bedingung sein, die eine mögliche Situation und deren Ergebnis zeigt. Zum Beispiel:

`If there are urgent updates, I will reply immediately.` – Das bedeutet, dass die Antwort davon abhängt, ob es dringende Updates gibt.

# --questions--

## --text--

Was möchte Sarah mit der Verwendung von `if` in ihrer Aussage über das Überprüfen von E-Mails und Nachrichten ausdrücken?

## --answers--

Sie findet immer dringende Updates von ihrem Team.

### --feedback--

`If` deutet nicht darauf hin, dass sie mit Sicherheit dringende Updates findet.

---

Manchmal gibt es dringende Updates, manchmal nicht.

---

Sie überprüft ihre E-Mails und Nachrichten nie.

### --feedback--

Sarah sagt tatsächlich, dass sie ihre E-Mails und Nachrichten überprüft.

---

Das Überprüfen von E-Mails gehört nicht zu ihrer Routine.

### --feedback--

Sarah erwähnt, dass das Überprüfen von E-Mails und Nachrichten zu ihrer Routine gehört.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 55.08,
      "finishTimestamp": 60.78
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 6.70,
      "dialogue": {
        "text": "Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.20
    }
  ]
}
```
