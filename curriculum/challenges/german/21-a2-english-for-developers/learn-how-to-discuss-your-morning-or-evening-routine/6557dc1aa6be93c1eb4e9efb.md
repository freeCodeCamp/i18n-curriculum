---
id: 6557dc1aa6be93c1eb4e9efb
title: Aufgabe 29
challengeType: 19
dashedName: task-29
---

<!-- (Audio) Sarah: Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team. -->

# --description--

Das Wort `if` wird oft in bedingten Aussagen verwendet, um über eine mögliche Situation und ihre Konsequenzen zu sprechen. Hier ein Beispiel:

`If it rains, I will bring an umbrella.` (Die Aktion einen Regenschirm mitzubringen, hängt von der Möglichkeit ab, ob es regnet.)

`If you need help, just ask.` (Das Angebot zu helfen, ist an die Bedingung geknüpft, dass die andere Person sie benötigt.)

# --questions--

## --text--

Was impliziert Sarah mit der Verwendung von `if` in ihrer Aussage bezüglich der Überprüfung von E-Mails und Nachrichten?

## --answers--

Sie findet immer dringende Updates von ihrem Team

### --feedback--

`If` suggeriert nicht das Finden dringender Updates.

---

Manchmal sind da dringende Updates, manchmal nicht

---

Sie überprüft nie ihre E-Mails und Nachrichten

### --feedback--

Sarah erklärt tatsächlich, dass sie ihre E-Mails und Nachrichten überprüft.

---

Das Überprüfen von E-Mails ist nicht Teil ihrer Routine

### --feedback--

Sarah erwähnt, dass das Überprüfen von E-Mails und Nachrichten Teil ihrer Routine ist.

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
