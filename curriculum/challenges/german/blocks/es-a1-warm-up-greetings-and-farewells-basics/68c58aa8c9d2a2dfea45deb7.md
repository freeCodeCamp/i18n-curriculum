---
id: 68c58aa8c9d2a2dfea45deb7
title: Aufgabe 7
challengeType: 19
dashedName: task-7
lang: es
---
<!-- (Audio) Elena: Hasta luego -->

# --description--

Elena verabschiedet sich, aber sie erwartet, Sie wiederzusehen.

# --instructions--

Hören Sie sich den Audioausschnitt an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Welche Phrase verwendet Elena, um „bis später“ zu sagen?

## --answers--

`Hasta luego.`

---

`Adiós`

### --feedback--

Dies ist ein Abschied, aber er klingt endgültiger. Die Sprecherin verwendet eine andere Phrase.

---

`Chao`

### --feedback--

Dies ist ebenfalls eine informelle Verabschiedung, aber nicht die im Audio verwendete.

---

`¡Hola!`

### --feedback--

Das bedeutet „Hallo“, eine allgemeine Begrüßung, aber nicht das, was Elena sagt.

## --video-solution--

1

# --explanation--

`Hasta luego` ist eine gebräuchliche Art, sich auf Spanisch zu verabschieden. Es bedeutet „Bis später“.

Es wird verwendet, wenn Sie die Person wiedersehen wollen, aber nicht unbedingt bald. Zum Beispiel:  

`Hasta luego, Marta.` – Bis später, Marta.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Elena",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_greetings_in_the_morning.mp3",
      "startTime": 1,
      "startTimestamp": 5.68,
      "finishTimestamp": 6.64
    }
  },
  "commands": [
    {
      "character": "Elena",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Elena",
      "startTime": 1,
      "finishTime": 1.96,
      "dialogue": {
        "text": "Hasta luego.",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.46
    }
  ]
}
```
