---
id: 65d6bc21bbb3fb20d47cd7ed
title: Attività 43
challengeType: 22
dashedName: task-43
lang: en-US
---

<!-- (Audio) Tom: I don't really know her, to be honest. What's her role?
-->

# --description--

Chiedere `What's her role?` è un modo per scoprire il lavoro o la posizione di qualcuno in un gruppo o progetto. `Role` indica la parte o il lavoro che una persona svolge in una situazione particolare. Per esempio, se il `role` di qualcuno in una scuola è insegnante, significa che il suo lavoro è insegnare agli studenti.

# --fillInTheBlank--

## --sentence--

`I don't really know her, to be honest. What's BLANK BLANK?`

## --blanks--

`her`

### --feedback--

Questa parola indica che Tom sta parlando del lavoro o della parte di una persona di sesso femminile in qualcosa.

---

`role`

### --feedback--

Questa parola significa il lavoro o la posizione che una persona ha in una situazione.

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.98,
      "finishTimestamp": 18.96
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 3.98,
      "dialogue": {
        "text": "I don't really know much about her to be honest. What's her role?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.48
    }
  ]
}
```
