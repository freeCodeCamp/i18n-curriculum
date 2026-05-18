---
id: 67c4bacefd5097faecca40d4
title: Aufgabe 22
challengeType: 19
dashedName: task-22
lang: en-US
---

<!-- (Audio) Bob: True, but we could try working even more extra hours just for this project. Wouldn't that make a difference? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was möchte Bob wissen?  

## --answers--

Ob sie das Projekt abbrechen sollten.  

### --feedback--

Bob fragt nicht, ob das Projekt abgebrochen werden soll.  

---

Ob es besser wäre, weniger Stunden zu arbeiten.  

### --feedback--

Bob schlägt vor, mehr Stunden zu arbeiten, nicht weniger.  

---

Ob das Team das Problem bereits gelöst hat.  

### --feedback--

Bob fragt, ob sein Vorschlag helfen wird, nicht, ob das Problem schon gelöst ist.  

---

Ob das Arbeiten von Überstunden die Situation verbessern wird.  

## --video-solution--

4  

# --explanation--

Die Verwendung von Verneinungen in Fragen mit Hilfs- oder Modalverben (wie `wouldn't`, `isn't`, `doesn't`), die direkte `yes`/`no` Antworten erfordern, deutet darauf hin, dass der Sprecher eine positive Antwort erwartet – Bob geht in diesem Fall davon aus, dass Überstunden helfen werden. Ein weiteres Beispiel:

`Doesn't this plan seem like a good idea?` – Der Sprecher erwartet, dass der Zuhörer zustimmt, dass der Plan gut ist.

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
      "filename": "B1_12-1.mp3",
      "startTime": 1,
      "startTimestamp": 29,
      "finishTimestamp": 34.76
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
      "finishTime": 5.18,
      "dialogue": {
        "text": "True, but we could try working even more extra hours just for this project.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 5.68,
      "finishTime": 6.76,
      "dialogue": {
        "text": "Wouldn't that make a difference?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.26
    }
  ]
}
```
