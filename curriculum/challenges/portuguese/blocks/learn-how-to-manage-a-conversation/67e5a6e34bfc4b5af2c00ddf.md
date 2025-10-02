---
id: 67e5a6e34bfc4b5af2c00ddf
title: Tarefa 51
challengeType: 22
dashedName: task-51
---

<!-- (Audio) Jessica: Well, we've discovered a critical bug that might affect the user interface. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Well, we've discovered a BLANK bug that might BLANK the user interface.`

## --blanks--

`critical`

### --feedback--

Isso significa muito sério ou importante.É frequentemente usado quando algo precisa de atenção imediata.

---

`affect`

### --feedback--

Isso significa mudar ou influenciar algo.Frequentemente descreve como uma coisa causa uma mudança em outra.

# --explanation--

`Critical` significa extremamente importante ou sério.Por exemplo:

`We have a critical deadline tomorrow.` – Isso significa que o prazo é muito importante e não pode ser perdido.

`To affect` significa ter influência sobre algo ou causar uma mudança.Por exemplo:

`The new policy may affect employee performance.` – Isso significa que a política pode mudar como os funcionários desempenham suas funções.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.12,
      "finishTimestamp": 13.52
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 2.72,
      "dialogue": {
        "text": "Well, we've discovered a critical bug",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.72,
      "finishTime": 4.4,
      "dialogue": {
        "text": "that might affect the user interface.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
