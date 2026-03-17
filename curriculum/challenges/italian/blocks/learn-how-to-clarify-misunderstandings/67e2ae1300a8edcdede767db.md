---
id: 67e2ae1300a8edcdede767db
title: Attività 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Mark: Can I ask you about a few of them? -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`Can I BLANK you BLANK a few of them?`

## --blanks--

`ask`

### --feedback--

Questo verbo si usa quando qualcuno vuole ottenere informazioni o permesso.

---

`about`

### --feedback--

Questa preposizione collega un argomento o soggetto correlato.

# --explanation--

`Ask about` significa richiedere informazioni relative a un argomento specifico. Per esempio:

`I asked about the new feature.` – Volevi informazioni sulla funzionalità.

`Can I ask you about...` è un modo cortese per iniziare una domanda quando vuoi informazioni o aiuto. Indica che stai chiedendo il permesso di parlare di un argomento specifico. Per esempio:

`Can I ask you about the project deadline?` – Questo significa che vuoi parlare della scadenza e ottenere più dettagli.

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
      "filename": "B1_16-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.58,
      "finishTimestamp": 7.08
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
      "finishTime": 2.5,
      "dialogue": {
        "text": "Can I ask you about a few of them?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3
    }
  ]
}
```
