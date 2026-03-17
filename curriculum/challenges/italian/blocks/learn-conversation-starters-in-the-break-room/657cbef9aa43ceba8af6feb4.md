---
id: 657cbef9aa43ceba8af6feb4
title: Attività 51
challengeType: 22
dashedName: task-51
lang: en-US
---

<!-- (audio) Sophie: I think she has a passion for technology and enjoys leading our team. -->

# --description--

Quando ti piace molto fare qualcosa, puoi dire che `enjoy` lo fai. È un modo semplice per esprimere che qualcosa ti rende felice.

Per esempio, puoi dire `I enjoy playing video games`. Questo significa che per te giocare ai videogiochi è divertente.

Nel dialogo, Sophie dice qualcosa che Maria apprezza nel suo lavoro.

# --fillInTheBlank--

## --sentence--

`I think she has a passion for technology and she BLANK leading our team.`

## --blanks--

`enjoys`

### --feedback--

Questo verbo significa che a Maria piace qualcosa e si sente felice a farlo. Finisce con `-s`.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 8.50,
      "finishTimestamp": 11.88
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.38,
      "dialogue": {
        "text": "I think she has a passion for technology and she enjoys leading our team.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.88
    }
  ]
}
```
