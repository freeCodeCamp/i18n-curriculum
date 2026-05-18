---
id: 68bb001c22f3bcbd1fdf38fa
title: Aufgabe 1
challengeType: 19
dashedName: task-1
lang: es
---

<!-- (Audio) Elena: Hola -->

# --description--

Elena möchte „Hallo“ sagen. Dieses Wort hören Sie im Spanischen ständig, wenn sich Menschen begegnen.

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.  
Es gibt nur **eine** richtige Antwort. Wenn Sie Hilfe benötigen, klicken Sie unten in der Lektion auf **Erklärung**.

# --questions--

## --text--

Welches Wort verwendet Elena, um „Hallo“ zu sagen?

## --answers--

`Hola`

---

`Adiós`

### --feedback--

Das bedeutet das Gegenteil von dem, was die Sprecherin sagt. Öffnen Sie den Erklärungsabschnitt, wenn Sie weitere Hilfe benötigen.

---

`Chao`

### --feedback--

Das bedeutet das Gegenteil von dem, was die Sprecherin sagt. Öffnen Sie den Erklärungsabschnitt, wenn Sie weitere Hilfe benötigen.

---

`Buenos días`

### --feedback--

Das bedeutet „Guten Morgen“, aber es ist nicht das, was Sie in der Audioaufnahme hören.

## --video-solution--

1

# --explanation--

Das Wort `Hola` ist eine Begrüßung. Es wird verwendet, wenn man jemanden trifft, ähnlich wie „Hello“ oder „Hi“. Zum Beispiel:

`¡Hola, buenos días!` – Hi, guten Morgen!

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
      "startTimestamp": 0.35,
      "finishTimestamp": 0.9
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
      "finishTime": 1.55,
      "dialogue": {
        "text": "¡Hola!",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.05
    }
  ]
}
```
