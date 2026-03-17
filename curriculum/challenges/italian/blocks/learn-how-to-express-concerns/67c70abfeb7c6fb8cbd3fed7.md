---
id: 67c70abfeb7c6fb8cbd3fed7
title: Attività 57
challengeType: 19
dashedName: task-57
lang: en-US
---

<!-- (Audio) Maria: Hey James, can we talk about my latest meeting with Bob? -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.  

# --questions--

## --text--

Di cosa vuole parlare Maria con James?  

## --answers--

Il programma di Bob per la settimana.  

### --feedback--

Maria non menziona il programma di Bob.  

---

La sua riunione più recente con Bob.  

---

La scadenza di un progetto futuro.  

### --feedback--

Maria non parla di una scadenza, solo della sua riunione con Bob.  

---

La richiesta di budget del client.  

### --feedback--

Maria non fa riferimento a una richiesta del client in questa frase.  

## --video-solution--

2  

# --explanation--

`Can we talk about...` si usa per introdurre un argomento di discussione. È un modo cortese per chiedere di parlare di qualcosa di importante. Per esempio:

`Can we talk about the changes to the project timeline?` - Questo significa che chi parla vuole discutere delle regolazioni della tempistica del progetto.

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
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.94
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
      "finishTime": 3.94,
      "dialogue": {
        "text": "Hey James, can we talk about my latest meeting with Bob?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 4.44
    }
  ]
}
```
