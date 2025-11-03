---
id: 67acaebb95dabb0ee05500f7
title: Tarefa 21
challengeType: 22
dashedName: task-21
lang: en-US
---

<!-- (Audio) Anna: If people are working with outdated computers, it can be a setback for productivity. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`If people are working with outdated computers, it can be a BLANK for productivity.`

## --blanks--

`setback`

### --feedback--

Esta palavra significa um obstáculo ou algo que desacelera o progresso.

# --explanation--

Um `setback` é algo que atrasa ou impede o progresso. Computadores lentos ou ineficientes podem fazer com que as tarefas demorem mais, reduzindo a eficiência. Por exemplo:

- `The project faced a setback due to a critical bug.` - O projeto foi atrasado ou teve problemas por causa de uma falha crítica no software.

- `Losing important data was a major setback for the team.` - Perder dados criou dificuldades e atrasou o trabalho da equipe.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 35.78,
      "finishTimestamp": 39.68
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.9,
      "dialogue": {
        "text": "If people are working with outdated computers, it can be a setback for productivity.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 5.4
    }
  ]
}
```
