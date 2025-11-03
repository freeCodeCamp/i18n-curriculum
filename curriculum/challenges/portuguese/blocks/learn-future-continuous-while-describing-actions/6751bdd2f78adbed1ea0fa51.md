---
id: 6751bdd2f78adbed1ea0fa51
title: Tarefa 24
challengeType: 19
dashedName: task-24
lang: en-US
---

<!-- (Audio) Brian: Do you think we'll need to update the users about the downtime? -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

Qual é a preocupação do Brian?

## --answers--

Se os usuários precisarem ser informados sobre o downtime.

---

Se o tempo de inatividade durar muito tempo.

### --feedback--

Brian não está perguntando sobre a duração do downtime.

---

Se os usuários enfrentarem problemas técnicos.

### --feedback--

Brian não menciona problemas técnicos em sua preocupação.

---

Se o tempo de inatividade afetará o desempenho do servidor.

### --feedback--

A preocupação de Brian não é sobre o desempenho do servidor.

## --video-solution--

1

# --explanation--

Brian está perguntando se eles devem atualizar os usuários sobre o tempo de inatividade, mostrando que sua preocupação é com a comunicação com os usuários e não com a duração do tempo de inatividade, problemas técnicos ou desempenho do servidor.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_6-1.mp3",
      "startTime": 1,
      "startTimestamp": 38.78,
      "finishTimestamp": 41.26
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.48,
      "dialogue": {
        "text": "Do you think we'll need to update the users about the downtime?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.98
    }
  ]
}
```
