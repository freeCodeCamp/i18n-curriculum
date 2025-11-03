---
id: 67e2ae1300a8edcdede767db
title: Tarefa 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Mark: Can I ask you about a few of them? -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Can I BLANK you BLANK a few of them?`

## --blanks--

`ask`

### --feedback--

Este verbo é usado quando alguém quer obter informação ou permissão.

---

`about`

### --feedback--

Esta preposição conecta tópico ou assunto relacionado.

# --explanation--

`Ask about` significa solicitar informações relacionadas a um tópico específico. Por exemplo:

`I asked about the new feature.` – Você queria informações sobre a funcionalidade. 

`Can I ask you about...` é uma forma educada de começar uma pergunta quando você quer informação ou ajuda. Isso mostra que você está pedindo permissão para falar sobre um tópico específico. Por exemplo:

`Can I ask you about the project deadline?` – Isso significa que você quer falar sobre o prazo e obter mais detalhes.  

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
