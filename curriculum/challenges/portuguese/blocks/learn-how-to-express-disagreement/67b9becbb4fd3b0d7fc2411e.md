---
id: 67b9becbb4fd3b0d7fc2411e
title: Tarefa 65
challengeType: 22
dashedName: task-65
---

<!-- (Audio) David: It seems like it could lead to a lot of delays and miscommunication. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`It seems like it could lead to a lot of BLANK and BLANK.`

## --blanks--

`delays`

### --feedback--

Esta palavra se refere a coisas que levam mais tempo do que o esperado.

---

`miscommunication`

### --feedback--

Esta palavra se refere a mal-entendidos causados por informações pouco claras ou incorretas.

# --explanation--

David está preocupado que o trabalho remoto assíncrono possa causar `delays` (respostas e progresso mais lentos) e `miscommunication` (pessoas se entendendo mal).

Como os funcionários trabalham em horários diferentes, as mensagens podem demorar mais para serem respondidas e mal-entendidos podem acontecer se a comunicação não for clara.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-2.mp3",
      "startTime": 1,
      "startTimestamp": 24.82,
      "finishTimestamp": 28.84
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 5.02,
      "dialogue": {
        "text": "It seems like it could lead to a lot of delays and miscommunication.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.52
    }
  ]
}
```
