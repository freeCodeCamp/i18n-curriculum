---
id: 6914d94cee63aa7cbcafab2c
title: Tarefa 2
challengeType: 22
dashedName: task-2
lang: es
---

<!-- (Audio) Mateo: Soy Mateo. Soy ingeniero de software. -->

# --description--

Mateo está mencionando seu nome e profissão em espanhol. 

Aqui, o verbo `ser` é usado para expressar sua identidade e profissão.

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`BLANK Mateo. BLANK ingeniero de software.`

## --blanks--

`Soy`

### --feedback--

Esta forma verbal vem do verbo `ser` e é usada para descrever quem você é ou o que você faz.

---

`Soy`

### --feedback--

Esta forma verbal vem do verbo `ser` e é usada para descrever quem você é ou o que você faz.

# --explanation--


`Soy` é um verbo usado para descrever quem você é ou o que você faz. Por exemplo:

`Soy Mateo. Soy ingeniero de software.` - Eu sou Mateo. Sou engenheiro de software.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Mateo",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_meet_mateo.mp3",
      "startTime": 1,
      "startTimestamp": 2.35,
      "finishTimestamp": 5.39
    }
  },
  "commands": [
    {
      "character": "Mateo",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mateo",
      "startTime": 1,
      "finishTime": 1.82,
      "dialogue": {
        "text": "Soy Mateo.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "startTime": 2.5,
      "finishTime": 4.04,
      "dialogue": {
        "text": "Soy ingeniero de software.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 4.54
    }
  ]
}
```

