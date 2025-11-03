---
id: 657cfddfaca4b58b1279aaf9
title: Tarefa 74
challengeType: 22
dashedName: task-74
lang: en-US
---

<!-- (audio) Sophie: Maria thinks challenges are positive. She encourages us to find solutions together. -->

# --description--

Incentivar significa dar suporte, confiança ou esperança a alguém. É o que um bom treinador faz para motivar sua equipe a dar o seu melhor.

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Maria thinks challenges are positive. She BLANK us to find solutions together.`

## --blanks--

`encourages`

### --feedback--

Este verbo é sobre motivar ou inspirar alguém a fazer algo. É semelhante a incentivar alguém. Não esqueça do final `-s`.

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
      "startTimestamp": 41.96,
      "finishTimestamp": 46.26
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
      "finishTime": 5.30,
      "dialogue": {
        "text": "Maria thinks challenges are positive. She encourages us to find solutions together.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.80
    }
  ]
}
```
