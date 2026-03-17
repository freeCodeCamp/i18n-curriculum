---
id: 68bb001c22f3bcbd1fdf38fa
title: Attività 1
challengeType: 19
dashedName: task-1
lang: es
---

<!-- (Audio) Elena: Hola -->

# --description--

Elena vuole dire "ciao". Sentirai questa parola molto spesso in spagnolo quando le persone si incontrano.

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.  
C'è solo **una** risposta corretta. Se hai bisogno di aiuto, clicca su **spiegazione** in fondo alla lezione.

# --questions--

## --text--

Quale parola usa Elena per dire "ciao"?

## --answers--

`Hola`

---

`Adiós`

### --feedback--

Questo significa il contrario di quello che dice la persona che parla. Apri la sezione spiegazione se ti serve aiuto.

---

`Chao`

### --feedback--

Questo significa il contrario di quello che dice la persona che parla. Apri la sezione spiegazione se ti serve aiuto.

---

`Buenos días`

### --feedback--

Questo significa "buongiorno", ma non è quello che senti nell'audio.

## --video-solution--

1

# --explanation--

La parola `Hola` è un saluto. Si usa quando incontri qualcuno, simile a "Hello" o "Hi". Per esempio:

`¡Hola, buenos días!` – Ciao, buongiorno!

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
