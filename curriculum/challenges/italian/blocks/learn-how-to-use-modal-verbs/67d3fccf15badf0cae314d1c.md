---
id: 67d3fccf15badf0cae314d1c
title: Attività 7
challengeType: 22
dashedName: task-7
lang: en-US
---

<!-- (Audio) Mark: Sure, Jessica. What do I need to do? -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`Sure, Jessica. What do I BLANK to BLANK?`

## --blanks--

`need`

### --feedback--

Questo verbo indica necessità, cioè che qualcosa è richiesto.

---

`do`

### --feedback--

Questo verbo segue `need` quando si chiede di un'azione.

# --explanation--

`Need to` si usa per chiedere quali azioni sono necessarie. È seguito dalla forma base del verbo (`do`). Per esempio:

- `We need to do more testing before releasing the app.` - È necessario testare l'app prima di lanciarla.

- `We need to do some updates to fix the bugs.` - È necessario aggiornare il sistema per risolvere i problemi.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 7,
      "finishTimestamp": 9.08
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 3.08,
      "dialogue": {
        "text": "Sure, Jessica. What do I need to do?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
