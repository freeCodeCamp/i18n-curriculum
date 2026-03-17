---
id: 679d2dc229e6ceeadff4ed48
title: Attività 92
challengeType: 22
dashedName: task-92
lang: en-US
---

<!-- (Audio) James: Do you think we need to update the software again? If we do, it might delay other projects. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`Do you think we need to update the software again? If we BLANK, it might BLANK other projects.`

## --blanks--

`do`

### --feedback--

Questa parola si usa per evitare di ripetere il verbo `update` della frase precedente.

---

`delay`

### --feedback--

Questa parola significa rimandare o far succedere qualcosa più tardi del previsto.

# --explanation--

Invece di dire `If we update the software, it might delay other projects.`, James lo abbrevia in `If we do`. La parola `do` si usa spesso per evitare di ripetere il verbo o una frase completa usata nella frase precedente. Per esempio:

`She wants to join the meeting, and if she does, she'll need the link.` - Invece di dire `if she joins the meeting`, puoi usare `does` per sostituirla e così evitare la ripetizione.

`To delay` significa far succedere qualcosa più tardi del previsto. Per esempio:

`The flight was delayed due to bad weather.` - Questo significa che il volo è stato rimandato e non è partito in orario.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 26.86,
      "finishTimestamp": 31.46
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.88,
      "dialogue": {
        "text": "Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "startTime": 3.16,
      "finishTime": 5.6,
      "dialogue": {
        "text": "If we do, it might delay other projects.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 6.1
    }
  ]
}
```
